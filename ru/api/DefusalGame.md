# DefusalGame

API режима Defusal: состояние матча и раунда.

## Contents

- [DefusalGame](#defusalgame)
- [DefusalRoundState](#defusalroundstate)
- [EDefusalRoundStage](#edefusalroundstage)

---

## DefusalGame

Глобальный API режима Defusal: состояние раунда, команды и BridgeCharge.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `BridgeChargeExplosionRemainingTicks` | int | `get` |  | Оставшееся количество тиков до взрыва BridgeCharge. |
| `BridgerFrontTeam` | [Team](./Team.md#team) | `get` |  | Атакующая команда. |
| `BridgerFrontTeamTexture` | [Texture](./Texture.md#texture) | `get` |  | Текстура атакующей команды. |
| `IsBridgeChargeDefused` | bool | `get` |  | true, если BridgeCharge обезврежена. |
| `IsBridgeChargeExploded` | bool | `get` |  | true, если BridgeCharge взорвалась. |
| `IsBridgeChargePlanted` | bool | `get` |  | true, если BridgeCharge установлена. |
| `IsGameEnded` | bool | `get` |  | true, если матч завершён. |
| `IsOvertime` | bool | `get` |  | true, если текущий раунд за рамкой ожидаемого количества раундов. |
| `IsRoundBeforeSwap` | bool | `get` |  | true, если по окончанию текущего раунда будет смена сторон команд. |
| `IsRoundTimeOver` | bool | `get` |  | true, если текущий раунд завершился по истечении времени (BridgeCharge не был установлен). |
| `IsTeamSwapping` | bool | `get` |  | true, если идет смена сторон команд. |
| `IsVictory` | bool | `get` |  | [ClientOnly] true, если матч завершён победой нашей команды. |
| `IsWarmupTimerActive` | bool | `get` |  | true, если в разминке активен таймер ожидания игроков или старта матча. |
| `KillScriptCompanyTeam` | [Team](./Team.md#team) | `get` |  | Обороняющаяся команда. |
| `KillScriptCompanyTeamTexture` | [Texture](./Texture.md#texture) | `get` |  | Текстура обороняющей команды. |
| `RoundId` | int | `get` |  | Порядковый номер текущего раунда, начинается с 1. |
| `RoundWinnerTeam` | [Team](./Team.md#team) | `get` |  | Команда-победитель текущего раунда, если определена. |
| `Stage` | [EDefusalRoundStage](./DefusalGame.md#edefusalroundstage) | `get` |  | Текущая стадия раунда. |
| `StageRemainingTicks` | int | `get` |  | Оставшееся количество тиков текущей стадии раунда. |
| `WarmupRemainingTicks` | int | `get` |  | Оставшееся количество тиков таймера разминки: до закрытия сервера при ожидании игроков или до старта матча, когда все готовы. |


### Methods

#### GetMatchRoundsLog

```lua
DefusalGame:GetMatchRoundsLog(): Array<DefusalRoundState>
```

История начавшихся раундов матча, включая текущий раунд.

**Returns:** Array<[DefusalRoundState](./DefusalGame.md#defusalroundstate)>

## DefusalRoundState

Состояние одного раунда DefusalGame из истории матча.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `IsBridgeChargeDefused` | bool |  | true, если BridgeCharge была обезврежена в этом раунде. |
| `IsBridgeChargeExploded` | bool |  | true, если BridgeCharge взорвалась в этом раунде. |
| `IsBridgeChargePlanted` | bool |  | true, если BridgeCharge была установлена в этом раунде. |
| `IsRoundTimeOver` | bool |  | true, если раунд завершился по истечении времени (BridgeCharge не был установлен). |
| `IsTeamSwapping` | bool |  | true, если в этом раунде идет смена сторон команд. |
| `RoundId` | int |  | Порядковый номер раунда, начинается с 1. |
| `RoundWinnerTeam` | [Team](./Team.md#team) |  | Команда-победитель раунда, если определена. |
| `Stage` | [EDefusalRoundStage](./DefusalGame.md#edefusalroundstage) |  | Стадия раунда. |

## EDefusalRoundStage

Фаза раунда

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | Фазы нет |
| `Buy` | `1` | Покупка |
| `Fight` | `2` | Бой |
| `End` | `3` | Окончание |

