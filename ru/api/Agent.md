# Agent

API для работы с агентами (специалистами).

## Contents

- [Agent](#agent)
- [AgentInput](#agentinput)
- [Agents](#agents)
- [AgentStats](#agentstats)
- [Aim](#aim)
- [DamageData](#damagedata)
- [DeathEventData](#deatheventdata)
- [EHitboxBodyPart](#ehitboxbodypart)
- [EHitType](#ehittype)
- [EInputButton](#einputbutton)
- [Health](#health)
- [Hitbox](#hitbox)
- [HitData](#hitdata)
- [Interactable](#interactable)
- [Interactor](#interactor)
- [Inventory](#inventory)
- [Movement](#movement)
- [OcclusionCulling](#occlusionculling)
- [StunnedData](#stunneddata)

---

## Agent

Представляет агента в игре. Этот класс предоставляет доступ к различным свойствам и методам, связанным с агентом, таким как перемещение, здоровье, инвентарь и многое другое.

**Base:** [Entity](./Entity.md#entity)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Aim` | [Aim](./Agent.md#aim) | `get` |  | Доступ к API прицеливания агента. |
| `Avatar` | [Sprite](./Sprite.md#sprite) | `get` |  | [ClientOnly] Аватар агента (Sprite). Возвращает аватарку игрока или иконку команды. |
| `AvatarIsTeamPlaceholder` | bool | `get` |  | [ClientOnly] Возвращает true, если Avatar сейчас является командной иконкой-заглушкой, а не настоящим аватаром игрока. |
| `Color` | Color | `get` |  | Возвращает цвет, назначенный агенту. |
| `Health` | [Health](./Agent.md#health) | `get` |  | Доступ к API здоровья агента. |
| `Interactor` | [Interactor](./Agent.md#interactor) | `get` |  | Доступ к API взаимодействий агента. |
| `Inventory` | [Inventory](./Agent.md#inventory) | `get` |  | Доступ к API инвентаря агента. |
| `IsSpectated` | bool | `get` |  | [ClientOnly] true, если идет наблюдение за этим агентом (когда локальный агент мертв, либо в режиме наблюдателя). |
| `Movement` | [Movement](./Agent.md#movement) | `get` |  | Доступ к API перемещения агента. |
| `Nickname` | string | `get` |  | Никнейм игрока. |
| `Number` | int | `get` |  | Возвращает номер, назначенный агенту. |
| `OcclusionCulling` | [OcclusionCulling](./Agent.md#occlusionculling) | `get` |  | Доступ к API окклюзии/видимости агента. |
| `Stats` | [AgentStats](./Agent.md#agentstats) | `get` |  | Статистика агента, доступна всегда. |
| `Team` | [Team](./Team.md#team) | `get` |  | Команда, к которой относится агент. |


### Methods

#### GetHitboxes

```lua
Agent:GetHitboxes(): Array<Hitbox>
```

Возвращает хитбоксы агента.

**Returns:** Array<[Hitbox](./Agent.md#hitbox)>

#### TrySpectate

```lua
Agent:TrySpectate(): bool
```

[ClientOnly] Переключает наблюдение на данного агента, если это допустимо в текущем spectator-режиме.

**Returns:** bool

## AgentInput

Глобальный API для получения состояния ввода и управления локальным агентом.

### Methods

#### GetLookRotation

```lua
AgentInput:GetLookRotation(): Vector2
```

Возвращает текущий поворот взгляда локального агента в градусах (X = pitch, Y = yaw).

**Returns:** Vector2

#### GetMoveDirection

```lua
AgentInput:GetMoveDirection(): Vector2
```

Возвращает текущее направление движения локального агента.

**Returns:** Vector2

#### IsButtonDown

```lua
AgentInput:IsButtonDown(inputButton: EInputButton): bool
```

true, если кнопка ввода удерживается локальным агентом.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `inputButton` | [EInputButton](./Agent.md#einputbutton) |  |  |

**Returns:** bool

#### IsJustPressed

```lua
AgentInput:IsJustPressed(inputButton: EInputButton): bool
```

true, если кнопка была нажата локальным агентом в этом тике.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `inputButton` | [EInputButton](./Agent.md#einputbutton) |  |  |

**Returns:** bool

#### SetButtonState

```lua
AgentInput:SetButtonState(inputButton: EInputButton, down: bool)
```

Устанавливает состояние кнопки ввода локального агента (нажата/отпущена).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `inputButton` | [EInputButton](./Agent.md#einputbutton) |  |  |
| `down` | bool |  |  |

#### SetLookRotation

```lua
AgentInput:SetLookRotation(vector: Vector2)
```

Устанавливает абсолютный поворот взгляда локального агента в градусах (X = pitch, Y = yaw).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `vector` | Vector2 |  |  |

#### SetMoveDirection

```lua
AgentInput:SetMoveDirection(vector: Vector2)
```

Устанавливает вектор движения локального агента в осях ввода (X = влево/вправо, Y = вперед/назад).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `vector` | Vector2 |  |  |

## Agents

API для листинга агентов и их ивентов.

### Methods

#### GetAll

```lua
Agents:GetAll(): Array<Agent>
```

Возвращает всех агентов в матче.

**Returns:** Array<[Agent](./Agent.md#agent)>

#### GetAllies

```lua
Agents:GetAllies(): Array<Agent>
```

Возвращает всех дружественных агентов относительно локальной команды.

**Returns:** Array<[Agent](./Agent.md#agent)>

#### GetEnemies

```lua
Agents:GetEnemies(): Array<Agent>
```

Возвращает всех вражеских агентов относительно локальной команды.

**Returns:** Array<[Agent](./Agent.md#agent)>

#### GetLocalAgent

```lua
Agents:GetLocalAgent(): Agent
```

Возвращает агента локального игрока или nil, если локальный агент сейчас недоступен.

**Returns:** [Agent](./Agent.md#agent)

#### GetLocalOrSpectatedAgent

```lua
Agents:GetLocalOrSpectatedAgent(): Agent
```

Возвращает агента локального игрока или наблюдаемого, или nil, если такого агента сейчас нет.

**Returns:** [Agent](./Agent.md#agent)

#### OnDamage

```lua
Agents:OnDamage(callback: LuaFunction): EventSubscription
```

[ClientOnly] Вызывает коллбек при получении урона локальным игроком. Возвращает подписку, которую можно отменить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnDeath

```lua
Agents:OnDeath(callback: LuaFunction): EventSubscription
```

[ClientOnly] Вызывает коллбек при смерти агента. Возвращает подписку, которую можно отменить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnHit

```lua
Agents:OnHit(callback: LuaFunction): EventSubscription
```

[ClientOnly] Вызывает коллбек при попадании локального игрока по врагу. Возвращает подписку, которую можно отменить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnStunned

```lua
Agents:OnStunned(callback: LuaFunction): EventSubscription
```

[ClientOnly] Вызывает коллбек при получении оглушения локальным игроком. Возвращает подписку, которую можно отменить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

## AgentStats

Общая статистика агента.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Assists` | int |  | Количество ассистов. |
| `Damage` | number |  | Суммарный нанесенный урон. |
| `DeathTick` | int |  | Тик симуляции, когда умер агент. |
| `Deaths` | int |  | Количество смертей. |
| `IsAlive` | bool |  | true, если жив. |
| `IsConnected` | bool |  | true, если подключен. |
| `Kills` | int |  | Количество убийств. |
| `Money` | int |  | Количество кредитов, это поле известно только для союзной команды, для всех других команд равно 0. |
| `Ping` | int |  | Средний пинг в миллисекундах по последним измерениям. |

## Aim

Доступ к системе прицеливания агента. Отвечает за текущее направление прицеливания, разброс и оглушение.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AccumulatedUncertainty` | number | `get` |  | [LocalAgent] Накопленная неточность прицеливания из-за изменения направления прицеливания и других источников. |
| `AimingDownSightsProgress` | number | `get` |  | Прогресс прицеливания (ADS) от 0 до 1. |
| `Direction` | Vector3 | `get` |  | Текущее направление прицеливания в мировых координатах. |
| `DirectionViewportPoint` | Vector3 | `get` |  | [ClientOnly] [LocalAgent] Viewport координаты позиции направления прицеливания для UI-рендера. |
| `IsAimingDownSights` | bool | `get` |  | true, если агент сейчас прицеливается (ADS). |
| `IsStunned` | bool | `get` |  | true, если агент сейчас оглушен. |
| `IsStunnedVisually` | bool | `get` |  | true, если для агента сейчас активен визуальный эффект оглушения. Действует дольше, чем IsStunned. Нужно, чтобы эффект от короткого оглушения не пропадал полностью при высоком пинге, когда клиент узнает об оглушении когда оно уже закончилось. |
| `LastStunDuration` | number | `get` |  | [LocalAgent] Длительность последнего оглушения в секундах. |
| `MovementSpeedUncertainty` | number | `get` |  | [LocalAgent] Неточность, вызванная скоростью движения. |
| `Position` | Vector3 | `get` |  | Мировая позиция камеры, используемой для прицеливания и стрельбы. |
| `StunnedUntilTick` | int | `get` |  | Тик симуляции, до которого действует оглушение. |
| `StunnedVisuallyUntilTick` | int | `get` |  | Тик симуляции, до которого действует визуальный эффект оглушения. Обычно равен StunnedUntilTick плюс число тиков сетевой задержки. Нужно, чтобы эффект от короткого оглушения не пропадал полностью при высоком пинге, когда клиент узнает об оглушении когда уже оно закончилось. |
| `Target` | [Agent](./Agent.md#agent) | `get` |  | [LocalAgent] Цель прицеливания. Возвращает nil, если цель не выбрана или целевой агент уже недоступен. |
| `TargetPosition` | Vector3 | `get` |  | Текущая точка прицеливания в мировых координатах. |
| `TotalUncertainty` | number | `get` |  | [LocalAgent] Сумма накопленной неточности и неточности от движения. |


### Methods

#### ResetAimTarget

```lua
Aim:ResetAimTarget()
```

[ServerOnly] [LocalAgent] Сбрасывает цель прицеливания.

#### SetAimTarget

```lua
Aim:SetAimTarget(targetPosition: Vector3, agent: Agent)
```

[ServerOnly] [LocalAgent] Устанавливает цель и позицию прицеливания.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `targetPosition` | Vector3 |  |  |
| `agent` | [Agent](./Agent.md#agent) |  |  |

## DamageData

Данные о полученном уроне.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Damage` | number |  | Полученный урон. |
| `DamageDirection` | Vector3 |  | Направление урона: от точки получения урона к источнику атаки. |
| `DamageDirectionFromHead` | Vector3 |  | Направление урона: от головы к источнику атаки. |
| `DamagePosition` | Vector3 |  | Точка получения урона, относительно позиции агента. |
| `DamageTick` | int |  | Тик, в который был замечен урон. |

## DeathEventData

Данные о смерти агента (см. Agents.OnDeath).

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `IsCritical` | bool |  | true, если убийство было критическим. |
| `Killer` | string |  | Имя убийцы. |
| `Victim` | string |  | Имя жертвы. |
| `WeaponId` | int |  | ID оружия, которым было совершено убийство. |

## EHitboxBodyPart

Часть тела hitbox агента.

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | Нет части тела. |
| `Head` | `1` | Голова. |
| `Body` | `2` | Туловище. |
| `Arm` | `3` | Рука. |
| `Leg` | `4` | Нога. |

## EHitType

Тип попадания/хита.

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | Нет попадания. |
| `Regular` | `1` | Обычное попадание. |
| `Critical` | `2` | Критическое попадание. |
| `Fatal` | `3` | Смертельное попадание. |
| `FriendlyFire` | `4` | Урон по союзнику. |
| `KineticShield` | `5` | Попадание в Kinetic Shield. |
| `Stunned` | `6` | Оглушающий урон. |

## EInputButton

| Name | Value | Comment |
|---|---:|---|
| `Jump` | `0` |  |
| `Crouch` | `1` |  |
| `Walk` | `2` |  |
| `Fire` | `3` |  |
| `AlternateFire` | `4` |  |
| `Reload` | `5` |  |
| `PrimaryWeapon` | `6` |  |
| `SecondaryWeapon` | `7` |  |
| `Knife` | `8` |  |
| `BridgeCharge` | `9` |  |
| `CycleGrenade` | `10` |  |
| `FragGrenade` | `11` |  |
| `Incendiary` | `12` |  |
| `Sonar` | `13` |  |
| `EmpGrenade` | `14` |  |
| `PowerShell` | `15` |  |
| `DropItem` | `16` |  |
| `Interact` | `17` |  |

## Health

Доступ к системе здоровья агента.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `CurrentHealth` | int | `get` |  | Текущее здоровье агента округленное в целое число. |
| `CurrentHealthPrecise` | number | `get` |  | Текущее точное значение здоровья агента. |
| `IsAlive` | bool | `get` |  | true, если агент жив. |
| `MaxHealth` | int | `get` |  | Максимальное здоровье агента. |

## Hitbox

Хитбокс агента: позиция, радиус, часть тела и проверка попаданий.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Agent` | [Agent](./Agent.md#agent) | `get` |  | Агент, которому принадлежит хитбокс. Возвращает nil, если агент уже недоступен. |
| `BodyPart` | [EHitboxBodyPart](./Agent.md#ehitboxbodypart) | `get` |  | Часть тела, к которой относится хитбокс. |
| `IsBox` | bool | `get` |  | true, если хитбокс имеет кубоидную форму. |
| `IsSphere` | bool | `get` |  | true, если хитбокс имеет сферическую форму. |
| `IsVisible` | bool | `get` |  | true, если агент с этим хитбоксом видим для локальной команды. Когда агент не виден, все его члены возвращают неопределённые значения. |
| `Position` | Vector3 | `get` |  | Позиция центра хитбокса. |
| `Radius` | number | `get` |  | Радиус сферического хитбокса. |
| `Rotation` | Quaternion | `get` |  | Поворот хитбокса в мире. |
| `Size` | Vector3 | `get` |  | Размер кубоидного хитбокса по каждой оси в локальных координатах. |

## HitData

Данные о попадании.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Damage` | number |  | Нанесенный урон. |
| `HitEventId` | int |  | Уникальный ID события попадания. |
| `HitTick` | int |  | Тик, в который произошло попадание. |
| `HitType` | [EHitType](./Agent.md#ehittype) |  | Тип попадания. |

## Interactable

Обертка над объектом, с которым можно взаимодействовать.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `ActionName` | string | `get` |  | Название доступного действия взаимодействия. |
| `AsDrop` | [Drop](./Item.md#drop) | `get` |  | Возвращает объект как Drop или nil, если это другой тип объекта. |
| `AsPlantedBridgeCharge` | [PlantedBridgeCharge](./Entity.md#plantedbridgecharge) | `get` |  | Возвращает объект как PlantedBridgeCharge или nil, если это другой тип объекта. |
| `IsDrop` | bool | `get` |  | true, если объект — Drop. |
| `IsPlantedBridgeCharge` | bool | `get` |  | true, если объект — PlantedBridgeCharge. |
| `IsVisible` | bool | `get` |  | true, если объект виден. Когда объект не виден, все его члены возвращают неопределённые значения. |


### Methods

#### CanInteract

```lua
Interactable:CanInteract(agent: Agent): bool
```

true, если агент может взаимодействовать с объектом.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |

**Returns:** bool

#### GetInteractDuration

```lua
Interactable:GetInteractDuration(agent: Agent): number
```

Возвращает время длительности взаимодействия агента с объектом в секундах

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |

**Returns:** number

## Interactor

Доступ к системе взаимодействий агента.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AvailableInteractable` | [Interactable](./Agent.md#interactable) | `get` |  | [LocalAgent] Объект, с которым агент может взаимодействовать. Возвращает nil, если доступного объекта нет. |
| `InteractActionName` | string | `get` |  | Название текущего действия взаимодействия, например 'Defuse' или 'PickUp'. |
| `InteractProgress` | number | `get` |  | Прогресс текущего взаимодействия от 0 до 1. |
| `IsDefusing` | bool | `get` |  | [LocalAgent] true, если агент сейчас разминирует BridgeCharge. |
| `IsInteracting` | bool | `get` |  | true, если агент сейчас взаимодействует с объектом. |

## Inventory

Доступ к инвентарю агента и управлению предметами.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `CurrentItem` | [Item](./Item.md#item) | `get` |  | Текущий экипированный предмет. Возвращает nil, если инвентарь недоступен или предмет не экипирован. |
| `IsSwitching` | bool | `get` |  | true, если агент сейчас меняет CurrentItem. |
| `SwitchingUntil` | int | `get` |  | Тик симуляции, до которого действует смена CurrentItem. |


### Methods

#### GetItem

```lua
Inventory:GetItem(slot: EItemSlot): Item
```

Возвращает первый предмет в указанном слоте или nil, если слот пуст или инвентарь недоступен.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `slot` | [EItemSlot](./Item.md#eitemslot) |  |  |

**Returns:** [Item](./Item.md#item)

#### GetItems

```lua
Inventory:GetItems(): Array<Item>
```

Возвращает все предметы в инвентаре агента.

**Returns:** Array<[Item](./Item.md#item)>

#### GetItemsInSlot

```lua
Inventory:GetItemsInSlot(slot: EItemSlot): Array<Item>
```

Возвращает предметы в указанном слоте.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `slot` | [EItemSlot](./Item.md#eitemslot) |  |  |

**Returns:** Array<[Item](./Item.md#item)>

#### IsSlotEmpty

```lua
Inventory:IsSlotEmpty(slot: EItemSlot): bool
```

Проверяет, пуст ли указанный слот инвентаря.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `slot` | [EItemSlot](./Item.md#eitemslot) |  |  |

**Returns:** bool

## Movement

Данные и расчеты, связанные с движением агента и расположением его в мире.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `CrouchJumpCooldownUntil` | int | `get` |  | Тик симуляции, до которого действует ограничение прыжка сидя для агента. |
| `CrouchProgress` | number | `get` |  | Прогресс текущего приседа от 0 до 1. |
| `IsCrouching` | bool | `get` |  | true, если агент в приседе. |
| `IsGrounded` | bool | `get` |  | true, если агент на твердой поверхности. |
| `IsWalking` | bool | `get` |  | true, если агент идет медленным шагом. |
| `JumpCooldownUntil` | int | `get` |  | Тик симуляции, до которого действует ограничение прыжка для агента. |
| `Position` | Vector3 | `get` |  | Текущая мировая позиция на которой стоит агент. |
| `Velocity` | Vector3 | `get` |  | Скорость агента. |


### Methods

#### GetZones

```lua
Movement:GetZones(): Array<string>
```

Возвращает список зон, в которых сейчас находится агент.

**Returns:** Array<string>

## OcclusionCulling

Доступ к системе окклюзии/видимости агента.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `HasBeenVisible` | bool | `get` |  | [ClientOnly] true, если агент уже был виден раньше или виден сейчас. |
| `SoundRange` | number | `get` |  | Радиус слышимости звука, создаваемого агентом. |
| `TicksSinceLastVisible` | int | `get` |  | [ClientOnly] Количество тиков с момента, когда агент был виден в последний раз. |

## StunnedData

Данные о статусе оглушения.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `StunnedUntilTick` | int |  | Тик, до которого действует оглушение. |

