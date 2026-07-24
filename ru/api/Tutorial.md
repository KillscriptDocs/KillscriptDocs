# Tutorial

API режима Tutorial. Пользовательские модули в нем не поддерживаются.

## Contents

- [TutorialManager](#tutorialmanager)
- [VoiceLinePlayer](#voicelineplayer)

---

## TutorialManager

[ClientOnly] Глобальный API для туториала, используется только в локальной сцене обучения, обычно равен nil.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AimMode` | int | `get` |  | [ClientOnly] Режим прицеливания для модулей обучения (числовой код). |
| `CurrentStepId` | string | `get` |  | [ClientOnly] ID текущего шага обучения. |
| `IsNotificationBlockedByVoiceover` | bool | `get` |  | [ClientOnly] true, если уведомление текущего шага должно ждать завершения озвучки. |
| `IsPlayerFireAllowed` | bool | `get` |  | [ClientOnly] Разрешена ли стрельба игрока в обучении. |
| `IsUpdatingFromInput` | bool | `get` |  | [ClientOnly] true, если модули обучения обновляются на основе пользовательского ввода. |
| `SuccessfulHitsThreshold` | int | `get` |  | [ClientOnly] Порог успешных попаданий для обучения. |


### Methods

#### GetAllPlantedBridgeCharges

```lua
TutorialManager:GetAllPlantedBridgeCharges(): Array<Entity>
```

[ClientOnly] Возвращает все установленные BridgeCharge на карте обучения.

**Returns:** Array<[Entity](./Entity.md#entity)>

## VoiceLinePlayer

[ClientOnly] Глобальный API для чтения состояния проигрывателя реплик.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `IsPlaying` | bool | `get` |  | [ClientOnly] Возвращает true, если сейчас проигрывается реплика. |
| `Subtitle` | string | `get` |  | [ClientOnly] Текст субтитров текущей проигрываемой реплики. |

