local UiRoot = nil
local lblTitle = nil
local lblSubtitle = nil
local cntRows = nil

local RowElements = {}
local LastRoundId = nil
local RoundStartStats = {}
local PreviousRoundRows = nil
local PreviousRoundId = nil

local function GetAgentStats(agent)
    return agent and agent.Stats or nil
end

local function CopyScore(stats)
    return {
        Kills = stats and stats.Kills or 0,
        Deaths = stats and stats.Deaths or 0
    }
end

local function GetDisplayRatio(kills, deaths)
    if deaths <= 0 then
        return kills
    end

    return kills / deaths
end

local function FormatRatio(kills, deaths)
    return string.format("%.1f", GetDisplayRatio(kills, deaths))
end

local function GetRankColor(index, total)
    local progress = 0
    if total > 1 then
        progress = (index - 1) / (total - 1)
    end

    local r = 0.25 + (0.92 - 0.25) * progress
    local g = 0.85 + (0.34 - 0.85) * progress
    local b = 0.45 + (0.34 - 0.45) * progress

    return Color.new(r, g, b, 1.0), Color.new(r, g, b, 0.16)
end

local function EnsureUi()
    if UiRoot then
        return true
    end

    UiRoot = UI:BuildFromUxmlAbsolute("RoundKdPanel.uxml")
    if not UiRoot then
        return false
    end

    lblTitle = UiRoot:GetChild("lblTitle")
    lblSubtitle = UiRoot:GetChild("lblSubtitle")
    cntRows = UiRoot:GetChild("cntRows")

    return true
end

local function CreateRowElement()
    local rowRoot = UI:CreateFromUxml("TeamKdRow.uxml")
    if not rowRoot then
        return nil
    end

    cntRows:Add(rowRoot)

    return {
        root = rowRoot,
        veAccent = rowRoot:GetChild("veAccent"),
        veBackground = rowRoot:GetChild("veBackground"),
        lblNickname = rowRoot:GetChild("lblNickname"),
        lblKills = rowRoot:GetChild("lblKills"),
        lblDeaths = rowRoot:GetChild("lblDeaths"),
        lblRatio = rowRoot:GetChild("lblRatio")
    }
end

local function EnsureRowElements(count)
    while #RowElements < count do
        local rowElement = CreateRowElement()
        if not rowElement then
            break
        end

        table.insert(RowElements, rowElement)
    end

    for i = 1, #RowElements do
        RowElements[i].root.style.display = i <= count and DisplayStyle.Flex or DisplayStyle.None
    end
end

local function SnapshotRoundStart()
    RoundStartStats = {}

    if not DefusalGame then
        return
    end

    local agents = Agents:GetAll()
    for i = 1, agents.Length do
        local agent = agents[i]
        RoundStartStats[agent] = CopyScore(GetAgentStats(agent))
    end
end

local function BuildTeamRows(team)
    local rows = {}
    if not DefusalGame or not team then
        return rows
    end

    local agents = Agents:GetAll()
    for i = 1, agents.Length do
        local agent = agents[i]
        local stats = GetAgentStats(agent)

        if agent and agent.Team == team and stats and stats.IsConnected ~= false then
            local startStats = RoundStartStats[agent] or { Kills = 0, Deaths = 0 }
            local kills = math.max(0, (stats.Kills or 0) - (startStats.Kills or 0))
            local deaths = math.max(0, (stats.Deaths or 0) - (startStats.Deaths or 0))

            table.insert(rows, {
                Nickname = agent.Nickname,
                Kills = kills,
                Deaths = deaths,
                Ratio = GetDisplayRatio(kills, deaths),
                IsAlive = stats.IsAlive == true
            })
        end
    end

    table.sort(rows, function(a, b)
        if a.Ratio ~= b.Ratio then
            return a.Ratio > b.Ratio
        end

        if a.Kills ~= b.Kills then
            return a.Kills > b.Kills
        end

        if a.Deaths ~= b.Deaths then
            return a.Deaths < b.Deaths
        end

        return a.Nickname < b.Nickname
    end)

    return rows
end

local function CloneRows(rows)
    local result = {}

    for i = 1, #rows do
        local row = rows[i]
        result[i] = {
            Nickname = row.Nickname,
            Kills = row.Kills,
            Deaths = row.Deaths,
            Ratio = row.Ratio,
            IsAlive = true
        }
    end

    return result
end

local function HandleRoundChange(localTeam)
    if not DefusalGame then
        return
    end

    if LastRoundId == nil then
        LastRoundId = DefusalGame.RoundId
        SnapshotRoundStart()
        return
    end

    if DefusalGame.RoundId == LastRoundId then
        return
    end

    if localTeam and LastRoundId > 0 then
        PreviousRoundRows = CloneRows(BuildTeamRows(localTeam))
        PreviousRoundId = LastRoundId
    end

    LastRoundId = DefusalGame.RoundId
    SnapshotRoundStart()
end

local function DrawRows(rows)
    EnsureRowElements(#rows)

    for i = 1, #rows do
        local row = rows[i]
        local refs = RowElements[i]
        local accentColor, backgroundColor = GetRankColor(i, #rows)

        refs.veAccent.style.backgroundColor = accentColor
        refs.veBackground.style.backgroundColor = backgroundColor
        refs.lblKills.style.color = accentColor
        refs.lblRatio.style.color = accentColor
        refs.root.style.opacity = row.IsAlive and 1.0 or 0.55

        refs.lblNickname.text = row.Nickname
        refs.lblKills.text = tostring(row.Kills)
        refs.lblDeaths.text = tostring(row.Deaths)
        refs.lblRatio.text = FormatRatio(row.Kills, row.Deaths)
    end
end

local function Tick()
    if not EnsureUi() then
        return
    end

    if not DefusalGame or DefusalGame.IsGameEnded then
        UiRoot.visible = false
        return
    end

    local localAgent = Agents:GetLocalAgent()
    if not localAgent then
        UiRoot.visible = false
        return
    end

    UiRoot.visible = true

    local localTeam = localAgent.Team
    HandleRoundChange(localTeam)

    local rows = nil
    if DefusalGame.Stage == EDefusalRoundStage.Buy and PreviousRoundRows and #PreviousRoundRows > 0 then
        lblTitle.text = Localization:GetTranslation("RoundResults") .. " " .. tostring(PreviousRoundId)
        lblSubtitle.text = Localization:GetTranslation("PreviousRoundDuringBuy")
        rows = PreviousRoundRows
    else
        if DefusalGame.RoundId <= 0 then
            lblTitle.text = Localization:GetTranslation("Warmup")
        else
            lblTitle.text = Localization:GetTranslation("Round") .. " " .. tostring(DefusalGame.RoundId)
        end

        lblSubtitle.text = Localization:GetTranslation("CurrentTeamRound")
        rows = BuildTeamRows(localTeam)
    end

    DrawRows(rows)
end
Scheduler:OnFrame(Tick)
