# Tutorial

Tutorial mode API. User modules are not supported in this mode.

## Contents

- [TutorialManager](#tutorialmanager)

---

## TutorialManager

[ClientOnly] Global API for the tutorial, used only in the local training scene and usually nil.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AimMode` | int | `get` |  | [ClientOnly] Aim mode for training modules (numeric code). |
| `CurrentStepId` | string | `get` |  | [ClientOnly] ID of the current tutorial step. |
| `IsNotificationBlockedByVoiceover` | bool | `get` |  | [ClientOnly] true if the notification of the current step must wait for the voiceover to complete. |
| `IsPlayerFireAllowed` | bool | `get` |  | [ClientOnly] Whether player shooting is allowed in training. |
| `IsUpdatingFromInput` | bool | `get` |  | [ClientOnly] true if the training modules are updated based on user input. |
| `SuccessfulHitsThreshold` | int | `get` |  | [ClientOnly] Successful hit threshold for training. |


### Methods

#### GetAllPlantedBridgeCharges

```lua
TutorialManager:GetAllPlantedBridgeCharges(): Array<Entity>
```

[ClientOnly] Returns all planted training BridgeCharges on the map.

**Returns:** Array<[Entity](./Entity.md#entity)>

