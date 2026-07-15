---@type FirearmItem | nil
local CurrentFirearm = nil

local ToggleSniperModeAction = nil
local NetworkState = {
    SniperMode = false
}

local function GetWeaponName(firearm)
    return string.gsub(firearm.Name, " ", "")
end

local function GetDefaultSniperMode(weaponName)
    return weaponName == "SniperRifle" or weaponName == "Revolver"
end

local function SendNetworkState()
    Network:SendTable(NetworkState)
end

local function SaveSniperModeForWeapon()
    if not CurrentFirearm then
        return
    end

    if not Storage.Weapons then
        Storage.Weapons = {}
    end

    local weaponName = GetWeaponName(CurrentFirearm)
    Storage.Weapons[weaponName] = NetworkState.SniperMode
end

local function LoadSniperModeForWeapon()
    if not CurrentFirearm then
        return
    end

    local weaponName = GetWeaponName(CurrentFirearm)
    local savedMode = Storage.Weapons and Storage.Weapons[weaponName]

    if savedMode ~= nil then
        NetworkState.SniperMode = savedMode
    else
        NetworkState.SniperMode = GetDefaultSniperMode(weaponName)
    end

    SendNetworkState()
end

local function ToggleSniperMode()
    if not CurrentFirearm then
        return
    end

    NetworkState.SniperMode = not NetworkState.SniperMode
    SaveSniperModeForWeapon()
    SendNetworkState()
end

local function CheckFirearmChanged(localAgent)
    local currentItem = localAgent.Inventory.CurrentItem

    if currentItem and currentItem.IsFirearm then
        local firearm = currentItem.AsFirearmItem

        if not CurrentFirearm or firearm.Name ~= CurrentFirearm.Name then
            CurrentFirearm = firearm
            return true
        end
    elseif CurrentFirearm then
        CurrentFirearm = nil
        return true
    end

    return false
end

local function DrawSniperMode()
    if not CurrentFirearm then
        return
    end

    local text = "Sniper: off"

    if NetworkState.SniperMode then
        text = "Sniper: on"
    end

    ImGui:DrawText(
        text,
        Rect.new((Screen.Width * 0.5) - 100, Screen.Height - 80, 200, 30),
        20,
        Color.new(1.0, 1.0, 1.0, 1.0),
        TextAnchor.MiddleCenter)
end

local function Tick()
    local localAgent = Agents:GetLocalAgent()

    if not localAgent or not localAgent.Health.IsAlive then
        return
    end

    if CheckFirearmChanged(localAgent) and CurrentFirearm then
        LoadSniperModeForWeapon()
    end

    DrawSniperMode()
end

ToggleSniperModeAction = InputActions:FindAction("ToggleSniperMode")
if ToggleSniperModeAction then
    ToggleSniperModeAction:OnPerformed(ToggleSniperMode)
end
Scheduler:OnFrame(Tick)
