# Notification

Notification API: receiving and sending notifications and hints to the player.

## Contents

- [ENotificationCode](#enotificationcode)
- [HintNotificationData](#hintnotificationdata)
- [InGameViolationKind](#ingameviolationkind)
- [InGameViolationSeverity](#ingameviolationseverity)
- [KillLogData](#killlogdata)
- [NotificationController](#notificationcontroller)
- [NotificationData](#notificationdata)
- [PingController](#pingcontroller)
- [PingMarkerData](#pingmarkerdata)
- [PingMarkerType](#pingmarkertype)
- [ViolationNotificationData](#violationnotificationdata)

---

## ENotificationCode

Notification code that defines its type and the set of additional fields.

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | No active notification. |
| `GenericText` | `1` | Plain text notification without additional structure. |
| `TimeoutActivated` | `2` | Someone activated a timeout. |
| `TimeoutLimitReached` | `3` | The timeout limit has been reached. |
| `BridgeChargeDeployed` | `4` | Charge has been planted. |
| `LastRound` | `5` | Last round of the match. |
| `LastRoundBeforeSwap` | `6` | Last round before the side switch. |
| `MatchPoint` | `7` | Match point. |
| `Victory` | `8` | Match victory for the player. |
| `Defeat` | `9` | Match defeat for the player. |
| `KillReward` | `10` | Reward for a kill. |
| `RoundWonReward` | `11` | Reward for winning the round. |
| `RoundLostReward` | `12` | Reward for losing the round. |
| `BridgeChargePlantedReward` | `13` | Reward for planting the charge. |
| `BridgeChargeDefusedReward` | `14` | Reward for defusing the charge. |
| `SellItemReward` | `15` | Money refunded for selling an item. |
| `TimeoutPendingActivation` | `16` | The timeout has been requested and will be activated at the beginning of the next round. |
| `WaitingForPlayers` | `17` | Ожидание подключения игроков перед началом матча. |
| `MatchStarting` | `18` | Все игроки подключились, матч скоро начнётся. |
| `WarmupConsoleHint` | `19` | Hint for custom game warmup, the match is started with a console command. |

## HintNotificationData

Hint data.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `DurationSeconds` | number |  | Hint duration in seconds. |
| `Message` | string |  | Hint text. |

## InGameViolationKind

Type of in-game violation.

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | There is no violation notification. |
| `FriendlyDamage` | `1` | Damage dealt to an ally. |
| `FriendlyHelmetBreak` | `2` | An ally's helmet was broken. |
| `FriendlyEmpHit` | `3` | An ally was hit by an EMP grenade. |
| `Afk` | `4` | The player did not leave the buy zone during the round. |

## InGameViolationSeverity

Severity of the in-game violation.

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | Severity is not set. |
| `Minor` | `1` | Minor violation. |
| `Moderate` | `2` | Moderate violation. |
| `Severe` | `3` | Severe violation. |

## KillLogData

Kill log entry.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `ID` | int |  | Kill log entry ID. |
| `IsCritical` | bool |  | true if the kill was critical. |
| `Killer` | string |  | Killer name. |
| `Victim` | string |  | Victim name. |
| `WeaponId` | int |  | ID of the weapon used to make the kill. |

## NotificationController

[ClientOnly] Global API for notifications and hints.

### Methods

#### GetKillLogs

```lua
NotificationController:GetKillLogs(lastKillLogId: int): Array<KillLogData>
```

[ClientOnly] Returns new kill log entries after the specified ID.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `lastKillLogId` | int |  |  |

**Returns:** Array<[KillLogData](./Notification.md#killlogdata)>

#### OnHintNotification

```lua
NotificationController:OnHintNotification(callback: LuaFunction): EventSubscription
```

[ClientOnly] Calls the callback when a hint arrives. Returns a subscription that can be cancelled.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnNotification

```lua
NotificationController:OnNotification(callback: LuaFunction): EventSubscription
```

[ClientOnly] Calls the callback when a notification arrives. Returns a subscription that can be cancelled.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnViolationNotification

```lua
NotificationController:OnViolationNotification(callback: LuaFunction): EventSubscription
```

[ClientOnly] Calls the callback when a violation notification arrives. Returns a subscription that can be cancelled.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### SendHintNotification

```lua
NotificationController:SendHintNotification(message: string, duration: number = ...)
```

[ClientOnly] Shows a hint to the local player.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `message` | string |  |  |
| `duration` | number | ✅ |  |

#### ShowNotification

```lua
NotificationController:ShowNotification(message: string, duration: number)
```

[ClientOnly] Shows a notification to the local player.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `message` | string |  |  |
| `duration` | number |  |  |

## NotificationData

Structured data of the active notification.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Amount` | int |  | Numeric notification value, for example a reward in dollars. |
| `Code` | [ENotificationCode](./Notification.md#enotificationcode) |  | Notification code. If it equals ENotificationCode.None, there is no active notification. |
| `CurrentCount` | int |  | Current counter value, for example the number of timeouts taken. |
| `DurationSeconds` | number |  | Notification duration in seconds. |
| `EventId` | int |  | Unique notification event ID. |
| `IsSpectator` | bool |  | true if the notification applies to a spectator. |
| `MaxCount` | int |  | Maximum counter value, for example the timeout limit. |
| `Message` | string |  | Notification text. Used for plain text notifications without additional structure. |
| `SubjectName` | string |  | Name associated with the notification, for example the killer, victim, or timeout initiator. |

## PingController

[ClientOnly] Global ping API: active markers in the world.

### Methods

#### OnPing

```lua
PingController:OnPing(callback: LuaFunction): EventSubscription
```

[ClientOnly] Calls the callback when a ping arrives. Returns a subscription that can be cancelled.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### SetPing

```lua
PingController:SetPing(position: Vector3)
```

[ClientOnly] Places a ping at the specified world position.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `position` | Vector3 |  |  |

## PingMarkerData

World ping data.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Color` | Color |  | Ping color, the player's color. |
| `ExpiresAtTick` | int |  | Tick on which the ping expires. |
| `MarkerType` | [PingMarkerType](./Notification.md#pingmarkertype) |  | Ping marker type. |
| `Number` | int |  | Player number. |
| `PingIndex` | int |  | Sequential ping index. |
| `Position` | Vector3 |  | Ping position in the world. |
| `TeamId` | int |  | Team ID. |

## PingMarkerType

Ping marker type.

| Name | Value | Comment |
|---|---:|---|
| `Mine` | `0` | Player ping. |
| `Party` | `1` | Party member ping. |
| `Ally` | `2` | Ally ping. |

## ViolationNotificationData

Structured data for the violation notification.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `EventId` | int |  | Unique event ID of the violation notification. |
| `Kind` | [InGameViolationKind](./Notification.md#ingameviolationkind) |  | Violation type. If it is InGameViolationKind.None, there is no notification. |
| `Severity` | [InGameViolationSeverity](./Notification.md#ingameviolationseverity) |  | Violation severity. |

