# Notification

API уведомлений: получение и отправка уведомлений и подсказок игроку.

## Contents

- [ENotificationCode](#enotificationcode)
- [HintNotificationEvent](#hintnotificationevent)
- [InGameViolationKind](#ingameviolationkind)
- [InGameViolationSeverity](#ingameviolationseverity)
- [NotificationController](#notificationcontroller)
- [NotificationEvent](#notificationevent)
- [PingController](#pingcontroller)
- [PingEvent](#pingevent)
- [PingMarkerType](#pingmarkertype)
- [ViolationNotificationEvent](#violationnotificationevent)

---

## ENotificationCode

Код уведомления, который определяет его тип и набор дополнительных полей.

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | Активного уведомления нет. |
| `GenericText` | `1` | Обычное текстовое уведомление без дополнительной структуры. |
| `TimeoutActivated` | `2` | Кто-то активировал таймаут. |
| `TimeoutLimitReached` | `3` | Лимит таймаутов исчерпан. |
| `BridgeChargeDeployed` | `4` | Заряд установлен. |
| `LastRound` | `5` | Последний раунд матча. |
| `LastRoundBeforeSwap` | `6` | Последний раунд перед сменой сторон. |
| `MatchPoint` | `7` | Матчпоинт. |
| `Victory` | `8` | Победа игрока в матче. |
| `Defeat` | `9` | Поражение игрока в матче. |
| `KillReward` | `10` | Награда за убийство. |
| `RoundWonReward` | `11` | Награда за выигранный раунд. |
| `RoundLostReward` | `12` | Награда за проигранный раунд. |
| `BridgeChargePlantedReward` | `13` | Награда за установку заряда. |
| `BridgeChargeDefusedReward` | `14` | Награда за обезвреживание заряда. |
| `SellItemReward` | `15` | Возврат денег за продажу предмета. |
| `TimeoutPendingActivation` | `16` | Таймаут запрошен и будет активирован в начале следующего раунда. |
| `WaitingForPlayers` | `17` | Ожидание подключения игроков перед началом матча. |
| `MatchStarting` | `18` | Все игроки подключились, матч скоро начнётся. |
| `WarmupConsoleHint` | `19` | Подсказка в разминке кастомной игры: матч запускается командой в консоли. |

## HintNotificationEvent

Событие подсказки.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `DurationSeconds` | number |  | Длительность подсказки в секундах. |
| `Message` | string |  | Текст подсказки. |

## InGameViolationKind

Тип внутриигрового нарушения.

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | Уведомления о нарушении нет. |
| `FriendlyDamage` | `1` | Урон по союзнику. |
| `FriendlyHelmetBreak` | `2` | Сбитие шлема союзнику. |
| `FriendlyEmpHit` | `3` | Попадание EMP-гранатой по союзнику. |
| `Afk` | `4` | Игрок не покинул зону закупки в течение раунда. |

## InGameViolationSeverity

Серьезность внутриигрового нарушения.

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | Серьезность не задана. |
| `Minor` | `1` | Незначительное нарушение. |
| `Moderate` | `2` | Среднее нарушение. |
| `Severe` | `3` | Тяжелое нарушение. |

## NotificationController

[ClientOnly] Глобальный API уведомлений и подсказкок.

### Methods

#### OnHint

```lua
NotificationController:OnHint(callback: LuaFunction): EventSubscription
```

[ClientOnly] Вызывает коллбек при приходе подсказки. Возвращает подписку, которую можно отменить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnNotification

```lua
NotificationController:OnNotification(callback: LuaFunction): EventSubscription
```

[ClientOnly] Вызывает коллбек при приходе уведомления. Возвращает подписку, которую можно отменить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnViolationNotification

```lua
NotificationController:OnViolationNotification(callback: LuaFunction): EventSubscription
```

[ClientOnly] Вызывает коллбек при приходе уведомления о нарушении. Возвращает подписку, которую можно отменить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### ShowHint

```lua
NotificationController:ShowHint(message: string, duration: number = ...)
```

[ClientOnly] Показывает подсказку локальному игроку.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `message` | string |  |  |
| `duration` | number | ✅ |  |

#### ShowNotification

```lua
NotificationController:ShowNotification(message: string, duration: number)
```

[ClientOnly] Показывает уведомление локальному игроку.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `message` | string |  |  |
| `duration` | number |  |  |

## NotificationEvent

Событие активного уведомления.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Amount` | int |  | Числовое значение уведомления, например награда в долларах. |
| `Code` | [ENotificationCode](./Notification.md#enotificationcode) |  | Код уведомления. Если равен ENotificationCode.None, активного уведомления нет. |
| `CurrentCount` | int |  | Текущее значение счетчика, например количество взятых таймаутов. |
| `DurationSeconds` | number |  | Длительность уведомления в секундах. |
| `EventId` | int |  | Уникальный ID события уведомления. |
| `IsSpectator` | bool |  | true, если уведомление относится к зрителю. |
| `MaxCount` | int |  | Максимальное значение счетчика, например лимит таймаутов. |
| `Message` | string |  | Текст уведомления. Используется для обычных текстовых уведомлений без дополнительной структуры. |
| `SubjectName` | string |  | Имя, связанное с уведомлением: например, убийца, жертва или инициатор таймаута. |

## PingController

[ClientOnly] Глобальный API пингов: активные метки в мире.

### Methods

#### OnPing

```lua
PingController:OnPing(callback: LuaFunction): EventSubscription
```

[ClientOnly] Вызывает коллбек при приходе пинга. Возвращает подписку, которую можно отменить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### SetPing

```lua
PingController:SetPing(position: Vector3)
```

[ClientOnly] Ставит пинг в указанную позицию мира.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `position` | Vector3 |  |  |

## PingEvent

Событие пинга в мире.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Color` | Color |  | Цвет пинга (цвет игрока). |
| `ExpiresAtTick` | int |  | Тик, на котором пинг исчезнет. |
| `MarkerType` | [PingMarkerType](./Notification.md#pingmarkertype) |  | Тип пинг-маркера. |
| `Number` | int |  | Номер игрока. |
| `PingIndex` | int |  | Порядковый индекс пинга. |
| `Position` | Vector3 |  | Позиция пинга в мире. |
| `TeamId` | int |  | ID команды. |

## PingMarkerType

Тип пинг-маркера.

| Name | Value | Comment |
|---|---:|---|
| `Mine` | `0` | Пинг игрока. |
| `Party` | `1` | Пинг участников группы. |
| `Ally` | `2` | Пинг союзников. |

## ViolationNotificationEvent

Событие уведомления о нарушении.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `EventId` | int |  | Уникальный ID события уведомления о нарушении. |
| `Kind` | [InGameViolationKind](./Notification.md#ingameviolationkind) |  | Тип нарушения. Если равен InGameViolationKind.None, уведомления нет. |
| `Severity` | [InGameViolationSeverity](./Notification.md#ingameviolationseverity) |  | Серьезность нарушения. |

