---@type Agent | nil
local LocalAgent = nil

local HALF_FOV_COS = math.cos(12 * math.pi / 180)
local MIN_SUCCESSFUL_PREDICTIONS = 2

local NetworkState = {
    SniperMode = false
}

Network:OnTableReceived(function(state)
    NetworkState = state
end)

local function IsAgentAlive(agent)
    return agent and agent.Health and agent.Health.IsAlive == true
end

local function GetAimDot(target, firePos)
    local toTarget = target.Aim.Position - firePos
    toTarget = toTarget:Normalize()

    return LocalAgent.Aim.Direction:Dot(toTarget)
end

local function FindBestTarget(firePos)
    local enemies = Agents:GetEnemies()
    local bestTarget = nil
    local bestDot = HALF_FOV_COS

    for i = 1, enemies.Length do
        local enemy = enemies[i]

        if IsAgentAlive(enemy) and enemy.IsVisible then
            local dot = GetAimDot(enemy, firePos)

            if dot > bestDot then
                bestDot = dot
                bestTarget = enemy
            end
        end
    end

    return bestTarget
end

local function FindHitboxByBodyPart(target, bodyPart)
    local hitboxes = target:GetHitboxes()

    for i = 1, hitboxes.Length do
        local hitbox = hitboxes[i]

        if hitbox and hitbox.BodyPart == bodyPart then
            return hitbox
        end
    end

    return nil
end

local function GetAimHitbox(target)
    if NetworkState.SniperMode then
        return FindHitboxByBodyPart(target, EHitboxBodyPart.Head)
    end

    return FindHitboxByBodyPart(target, EHitboxBodyPart.Body)
        or FindHitboxByBodyPart(target, EHitboxBodyPart.Head)
end

local function CountPredictedHitsOnTarget(firearm, target)
    local predictedShots = firearm:GetPredictedHits()
    local successfulShots = 0

    for shotIndex = 1, predictedShots.Length do
        local hits = predictedShots[shotIndex]

        for hitIndex = 1, hits.Length do
            local hit = hits[hitIndex]
            local hitbox = hit.Hitbox

            if hitbox and hitbox.Agent == target then
                successfulShots = successfulShots + 1
                break
            end
        end
    end

    return successfulShots
end

local function Tick()
    LocalAgent = Agents:GetLocalAgent()

    if not IsAgentAlive(LocalAgent) then
        return
    end

    local currentItem = LocalAgent.Inventory.CurrentItem

    if not currentItem or not currentItem.IsFirearm then
        LocalAgent.Aim:ResetAimTarget()
        return
    end

    local firearm = currentItem.AsFirearmItem
    local firePos = LocalAgent.Aim.Position
    local target = FindBestTarget(firePos)

    if not target then
        LocalAgent.Aim:ResetAimTarget()
        return
    end

    local hitbox = GetAimHitbox(target)

    if not hitbox then
        LocalAgent.Aim:ResetAimTarget()
        return
    end

    LocalAgent.Aim:SetAimTarget(hitbox.Position, target)

    local successfulShots = CountPredictedHitsOnTarget(firearm, target)
    local canFire = successfulShots >= MIN_SUCCESSFUL_PREDICTIONS
        and firearm.HasAmmo
        and not firearm.IsReloading

    AgentInput:SetButtonState(EInputButton.Fire, canFire)
end

Scheduler:OnTick(Tick)
