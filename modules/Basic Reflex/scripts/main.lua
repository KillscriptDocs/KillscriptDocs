---@type FirearmItem | nil
local CurrentFirearm = nil

local ToggleSniperModeAction = nil

local function IsAgentAlive(agent)
    return agent and agent.Health and agent.Health.IsAlive == true
end

local function GetWeaponName(firearm)
    return string.gsub(firearm.Name, " ", "")
end

local function GetDefaultSniperMode(weaponName)
    return weaponName == "SniperRifle" or weaponName == "Revolver"
end

local function SaveSniperModeForWeapon()
    if not CurrentFirearm then
        return
    end

    if not Storage.Weapons then
        Storage.Weapons = {}
    end

    local weaponName = GetWeaponName(CurrentFirearm)
    Storage.Weapons[weaponName] = {
        SniperMode = Network.SniperMode
    }

    StorageProvider:SaveStorageTable()
end

local function LoadSniperModeForWeapon()
    if not CurrentFirearm then
        return
    end

    local weaponName = GetWeaponName(CurrentFirearm)

    if Storage.Weapons
        and Storage.Weapons[weaponName]
        and Storage.Weapons[weaponName].SniperMode ~= nil then
        Network.SniperMode = Storage.Weapons[weaponName].SniperMode
    else
        Network.SniperMode = GetDefaultSniperMode(weaponName)
    end

    NetworkProvider:SendBuffer()
end

local function ToggleSniperMode()
    if not CurrentFirearm then
        return
    end

    Network.SniperMode = not Network.SniperMode
    SaveSniperModeForWeapon()
    NetworkProvider:SendBuffer()
end

local function CheckFirearmChanged()
    local localAgent = Agents:GetLocalAgent()
    if not localAgent then
        CurrentFirearm = nil
        return false
    end

    local currentItem = localAgent.Inventory.CurrentItem

    if currentItem and currentItem.IsFirearm then
        local firearm = currentItem.AsFirearmItem

        if not CurrentFirearm or firearm.Name ~= CurrentFirearm.Name then
            CurrentFirearm = firearm
            return true
        end
    else
        if CurrentFirearm then
            CurrentFirearm = nil
            return true
        end
    end

    return false
end

local function DrawSniperMode()
    if not CurrentFirearm then
        return
    end

    local text = "Sniper: off"
    if Network.SniperMode then
        text = "Sniper: on"
    end

    ImGui:DrawText(
        text,
        Rect((Screen.Width * 0.5) - 100, Screen.Height - 80, 200, 30),
        20,
        Color(1.0, 1.0, 1.0, 1.0),
        TextAnchor.MiddleCenter)
end

local function Tick()
    local localAgent = Agents:GetLocalAgent()
    if not IsAgentAlive(localAgent) then
        return
    end

    if CheckFirearmChanged() and CurrentFirearm then
        LoadSniperModeForWeapon()
    end

    DrawSniperMode()
end

Network.SniperMode = false

StorageProvider:LoadStorageTable()

ToggleSniperModeAction = InputActions:FindAction("ToggleSniperMode")
ToggleSniperModeAction:OnPerformed(ToggleSniperMode)
Events:On("Tick", Tick)
