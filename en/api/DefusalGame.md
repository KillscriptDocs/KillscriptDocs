# DefusalGame

Defusal mode API: match and round state.

## Contents

- [DefusalGame](#defusalgame)
- [DefusalRoundState](#defusalroundstate)
- [EDefusalRoundStage](#edefusalroundstage)
- [EMatchKind](#ematchkind)

---

## DefusalGame

Global Defusal mode API: round state, teams, and BridgeCharge.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `BridgeChargeExplosionRemainingTicks` | int | `get` |  | Remaining number of ticks until the BridgeCharge explodes. |
| `BridgerFrontTeam` | [Team](./Team.md#team) | `get` |  | Attacking team. |
| `BridgerFrontTeamTexture` | [Texture](./Texture.md#texture) | `get` |  | Attacking team texture. |
| `IsBridgeChargeDefused` | bool | `get` |  | true if the BridgeCharge has been defused. |
| `IsBridgeChargeExploded` | bool | `get` |  | true if the BridgeCharge has exploded. |
| `IsBridgeChargePlanted` | bool | `get` |  | true if the BridgeCharge is planted. |
| `IsGameEnded` | bool | `get` |  | true if the match has ended. |
| `IsOvertime` | bool | `get` |  | true if the current round is beyond the expected number of rounds. |
| `IsRoundBeforeSwap` | bool | `get` |  | true if the teams will switch sides after the current round ends. |
| `IsRoundTimeOver` | bool | `get` |  | true if the current round ended because time ran out (the BridgeCharge was never planted). |
| `IsTeamSwapping` | bool | `get` |  | true if the teams are switching sides. |
| `IsTechnicalPauseActive` | bool | `get` |  | true if a technical pause is active. |
| `IsVictory` | bool | `get` |  | [ClientOnly] true if the match ended in victory for our team. |
| `IsWarmupTimerActive` | bool | `get` |  | true if the warmup player-waiting timer or match-start timer is active. |
| `KillScriptCompanyTeam` | [Team](./Team.md#team) | `get` |  | Defending team. |
| `KillScriptCompanyTeamTexture` | [Texture](./Texture.md#texture) | `get` |  | Defending team texture. |
| `MatchKind` | [EMatchKind](./DefusalGame.md#ematchkind) | `get` |  | Current match type. |
| `RoundId` | int | `get` |  | Current round number, starting from 1. |
| `RoundWinnerTeam` | [Team](./Team.md#team) | `get` |  | Winning team of the current round, if defined. |
| `Stage` | [EDefusalRoundStage](./DefusalGame.md#edefusalroundstage) | `get` |  | Current round stage. |
| `StageRemainingTicks` | int | `get` |  | Remaining number of ticks in the current round stage. |
| `WarmupRemainingTicks` | int | `get` |  | Remaining ticks on the warmup timer: until the server closes while waiting for players, or until the match starts when everyone is ready. |


### Methods

#### GetMatchRoundsLog

```lua
DefusalGame:GetMatchRoundsLog(): Array<DefusalRoundState>
```

History of match rounds that have started, including the current round.

**Returns:** Array<[DefusalRoundState](./DefusalGame.md#defusalroundstate)>

#### OnRoundStateChanged

```lua
DefusalGame:OnRoundStateChanged(callback: LuaFunction): EventSubscription
```

Calls the callback when the BridgeCharge is planted, defused, or explodes, when the round ends, or when its stage changes. Returns a subscription that can be cancelled.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

## DefusalRoundState

State of one DefusalGame round from the match history.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `IsBridgeChargeDefused` | bool |  | true if the BridgeCharge was defused in this round. |
| `IsBridgeChargeExploded` | bool |  | true if the BridgeCharge exploded in this round. |
| `IsBridgeChargePlanted` | bool |  | true if the BridgeCharge was planted in this round. |
| `IsRoundTimeOver` | bool |  | true if the round ended because time ran out (the BridgeCharge was never planted). |
| `IsTeamSwapping` | bool |  | true if the teams are switching sides in this round. |
| `RoundId` | int |  | Round number, starting from 1. |
| `Stage` | [EDefusalRoundStage](./DefusalGame.md#edefusalroundstage) |  | Round stage. |


### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `RoundWinnerTeam` | [Team](./Team.md#team) | `get` |  | Winning team of the round, if defined. |

## EDefusalRoundStage

Round phase

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | No phase |
| `Buy` | `1` | Buy |
| `Fight` | `2` | Fight |
| `End` | `3` | End |

## EMatchKind

Match type that determines its rules and how it is started.

| Name | Value | Comment |
|---|---:|---|
| `Unknown` | `0` | Match type is not defined. |
| `Ranked` | `1` | Ranked match. |
| `Casual` | `2` | Public Casual match. |
| `Custom` | `3` | Custom match. |

