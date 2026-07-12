---@type Agent | nil
local LocalAgent = nil

local HALF_FOV_COS = math.cos(12 * math.pi / 180)

local function IsAgentAlive(agent)
    return agent and agent.Health and agent.Health.IsAlive == true
end

local function GetAimDot(target, firePos)
    local toTarget = (target.Aim.Position - firePos).normalized
    return Vector3.Dot(LocalAgent.Aim.Direction, toTarget)
end

local function FindHitboxByBodyPart(target, bodyPart)
    local hitboxes = target:GetHitboxes()

    for i = 0, hitboxes.Length - 1 do
        local hitbox = hitboxes[i]
        if hitbox and hitbox.BodyPart == bodyPart then
            return hitbox
        end
    end

    return nil
end

local function FindBestTarget(firePos)
    local enemies = Agents:GetEnemies()
    local bestTarget = nil
    local bestDot = HALF_FOV_COS

    for i = 0, enemies.Length - 1 do
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

local function GetAimHitbox(target)
    if Network.SniperMode then
        return FindHitboxByBodyPart(target, EHitboxBodyPart.Head)
    end

    return FindHitboxByBodyPart(target, EHitboxBodyPart.Body)
        or FindHitboxByBodyPart(target, EHitboxBodyPart.Head)
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

    if firearm.HasAmmo and not firearm.IsReloading then
        AgentInput:SetButtonState(EInputButton.Fire, true)
    end
end

Network.SniperMode = false
Events:On("Tick", Tick)
