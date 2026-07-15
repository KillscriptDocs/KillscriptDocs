# DefusalGame

Defusal mode API: match and round state.

## Contents

- [DefusalGame](#defusalgame)
- [DefusalRoundState](#defusalroundstate)
- [EDefusalRoundStage](#edefusalroundstage)

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
| `IsVictory` | bool | `get` |  | [ClientOnly] true if the match ended in victory for our team. |
| `IsWarmupTimerActive` | bool | `get` |  | true if the warmup player-waiting timer or match-start timer is active. |
| `KillScriptCompanyTeam` | [Team](./Team.md#team) | `get` |  | Defending team. |
| `KillScriptCompanyTeamTexture` | [Texture](./Texture.md#texture) | `get` |  | Defending team texture. |
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

Match round history.

**Returns:** Array<[DefusalRoundState](./DefusalGame.md#defusalroundstate)>

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
| `RoundWinnerTeam` | [Team](./Team.md#team) |  | Winning team of the round, if defined. |
| `Stage` | [EDefusalRoundStage](./DefusalGame.md#edefusalroundstage) |  | Round stage. |

## EDefusalRoundStage

Round phase

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | No phase |
| `Buy` | `1` | Buy |
| `Fight` | `2` | Fight |
| `End` | `3` | End |

