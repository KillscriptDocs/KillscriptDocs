# Entity

API сущностей игрового мира.

## Contents

- [EMPGrenadeExplosion](#empgrenadeexplosion)
- [Entity](#entity)
- [Explosion](#explosion)
- [Explosions](#explosions)
- [FragGrenadeExplosion](#fraggrenadeexplosion)
- [IncendiaryExplosion](#incendiaryexplosion)
- [PlantedBridgeCharge](#plantedbridgecharge)
- [PlantedBridgeCharges](#plantedbridgecharges)
- [PlantedBridgeChargeTutorial](#plantedbridgechargetutorial)
- [PowerShellExplosion](#powershellexplosion)
- [SonarExplosion](#sonarexplosion)
- [ThrownProjectile](#thrownprojectile)
- [ThrownProjectiles](#thrownprojectiles)

---

## EMPGrenadeExplosion

Взрыв от EMP гранаты.

**Base:** [Explosion](./Entity.md#explosion)

## Entity

Базовый объект всех сущностей в мире.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `ID` | int | `get` |  | Уникальный ID сущности в пределах её жизни или до смены раунда. |
| `IsVisible` | bool | `get` |  | true, если сущность видима для локальной команды. Когда сущность не видна, все её члены, кроме Name и ID, возвращают неопределённые значения. |
| `Name` | string | `get` |  | Имя сущности. |
| `Position` | Vector3 | `get` |  | Позиция сущности в мире. |
| `TicksSinceLastVisible` | int | `get` |  | [ClientOnly] Количество тиков с момента, когда сущность была видна в последний раз. |

## Explosion

Базовый объект взрыва с общими параметрами времени жизни.

**Base:** [Entity](./Entity.md#entity)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AsEMPGrenadeExplosion` | [EMPGrenadeExplosion](./Entity.md#empgrenadeexplosion) | `get` |  | Возвращает взрыв как EMPGrenadeExplosion или nil, если это взрыв другого типа. |
| `AsFragGrenadeExplosion` | [FragGrenadeExplosion](./Entity.md#fraggrenadeexplosion) | `get` |  | Возвращает взрыв как FragGrenadeExplosion или nil, если это взрыв другого типа. |
| `AsIncendiaryExplosion` | [IncendiaryExplosion](./Entity.md#incendiaryexplosion) | `get` |  | Возвращает взрыв как IncendiaryExplosion или nil, если это взрыв другого типа. |
| `AsPowerShellExplosion` | [PowerShellExplosion](./Entity.md#powershellexplosion) | `get` |  | Возвращает взрыв как PowerShellExplosion или nil, если это взрыв другого типа. |
| `AsSonarExplosion` | [SonarExplosion](./Entity.md#sonarexplosion) | `get` |  | Возвращает взрыв как SonarExplosion или nil, если это взрыв другого типа. |
| `Instigator` | [Agent](./Agent.md#agent) | `get` |  | Агент, который инициировал Explosion. |
| `IsEMPGrenadeExplosion` | bool | `get` |  | true, если является взрывом от EMP гранаты. |
| `IsFragGrenadeExplosion` | bool | `get` |  | true, если является взрывом от Frag гранаты. |
| `IsIncendiaryExplosion` | bool | `get` |  | true, если взрыв является областью огня от зажигательной гранаты. |
| `IsPowerShellExplosion` | bool | `get` |  | true, если взрыв является куполом щита. |
| `IsSonarExplosion` | bool | `get` |  | true, если взрыв является сонаром. |
| `ThrowableConfig` | [ConfigItemThrowable](./GameConfig.md#configitemthrowable) | `get` |  | Конфигурация метательного предмета которым был создан этот Explosion. Возвращает nil, если конфигурация недоступна. |
| `ToDespawnTicks` | int | `get` |  | Оставшееся количество тиков до удаления взрыва. |

## Explosions

Глобальный API для листинга взрывов.

### Methods

#### GetAll

```lua
Explosions:GetAll(): Array<Explosion>
```

Возвращает все активные взрывы от гранат на карте.

**Returns:** Array<[Explosion](./Entity.md#explosion)>

#### GetEMPGrenadeExplosions

```lua
Explosions:GetEMPGrenadeExplosions(): Array<EMPGrenadeExplosion>
```

Возвращает все взрывы от EMP гранаты (EMPGrenadeExplosion) на карте.

**Returns:** Array<[EMPGrenadeExplosion](./Entity.md#empgrenadeexplosion)>

#### GetFragGrenadeExplosions

```lua
Explosions:GetFragGrenadeExplosions(): Array<FragGrenadeExplosion>
```

Возвращает все взрывы от Frag гранаты (FragGrenadeExplosion) на карте.

**Returns:** Array<[FragGrenadeExplosion](./Entity.md#fraggrenadeexplosion)>

#### GetIncendiaryExplosions

```lua
Explosions:GetIncendiaryExplosions(): Array<IncendiaryExplosion>
```

Возвращает все активные области огня (IncendiaryExplosion) на карте.

**Returns:** Array<[IncendiaryExplosion](./Entity.md#incendiaryexplosion)>

#### GetPowerShellExplosions

```lua
Explosions:GetPowerShellExplosions(): Array<PowerShellExplosion>
```

Возвращает все активные купола защиты (PowerShellExplosion) на карте.

**Returns:** Array<[PowerShellExplosion](./Entity.md#powershellexplosion)>

#### GetSonarExplosions

```lua
Explosions:GetSonarExplosions(): Array<SonarExplosion>
```

Возвращает все активные сонары (SonarExplosion) на карте.

**Returns:** Array<[SonarExplosion](./Entity.md#sonarexplosion)>

## FragGrenadeExplosion

Взрыв от Frag гранаты.

**Base:** [Explosion](./Entity.md#explosion)

## IncendiaryExplosion

Огонь от зажигательной граната.

**Base:** [Explosion](./Entity.md#explosion)

## PlantedBridgeCharge

Установленный BridgeCharge на карте.

**Base:** [Entity](./Entity.md#entity)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Icon` | [Texture](./Texture.md#texture) | `get` |  | Иконка BridgeCharge как текстура. |

## PlantedBridgeCharges

Глобальный API для работы с PlantedBridgeCharge.

### Methods

#### GetPlanted

```lua
PlantedBridgeCharges:GetPlanted(): Array<PlantedBridgeCharge>
```

Возвращает все установленные BridgeCharge на карте.

**Returns:** Array<[PlantedBridgeCharge](./Entity.md#plantedbridgecharge)>

## PlantedBridgeChargeTutorial

Установленный BridgeCharge в обучении.

**Base:** [Entity](./Entity.md#entity)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Icon` | [Texture](./Texture.md#texture) | `get` |  | Иконка BridgeCharge как текстура. |

## PowerShellExplosion

Купол PowerShell в мире.

**Base:** [Explosion](./Entity.md#explosion)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `ShellDurability` | number | `get` |  | Текущее здоровье купола PowerShell. |
| `ShellMaxDurability` | number | `get` |  | Максимальное здоровье купола PowerShell. |

## SonarExplosion

Сонар как объект в мире.

**Base:** [Explosion](./Entity.md#explosion)

## ThrownProjectile

Брошенный предмет (например, граната) в полете.

**Base:** [Entity](./Entity.md#entity)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `IsExploded` | bool | `get` |  | true, если предмет уже взорвался или больше не активен. |
| `ThrowableConfig` | [ConfigItemThrowable](./GameConfig.md#configitemthrowable) | `get` |  | Конфигурация метательного предмета. Возвращает nil, если конфигурация недоступна. |
| `ThrownAtTick` | int | `get` |  | Тик, в который предмет был брошен. |
| `ThrownBy` | [Agent](./Agent.md#agent) | `get` |  | Агент, который бросил предмет. |
| `Velocity` | Vector3 | `get` |  | Текущая скорость полета. |


### Methods

#### SimulateTrajectory

```lua
ThrownProjectile:SimulateTrajectory(): Array<Vector3>
```

[ClientOnly] Возвращает рассчитанную траекторию полета. Массив переиспользуется всем модулем: его содержимое действительно только до следующего вызова SimulateTrajectory или SimulateThrowTrajectory для любого объекта в этом же модуле, даже если вызов вернет пустой массив. Для сохранения скопируйте точки в Lua-таблицу до следующего вызова. Вызовы других модулей, обновление состояния сцены и удаление объекта не изменяют возвращенный массив.

**Returns:** Array<Vector3>

## ThrownProjectiles

Глобальный API для работы с предметами в полете.

### Methods

#### GetAll

```lua
ThrownProjectiles:GetAll(): Array<ThrownProjectile>
```

Возвращает все активные брошенные предметы (например, гранаты), которые еще не взорвались. На клиенте также возвращает гранаты, которые сейчас не видны, но были видны ранее и продолжают предсказываться по траектории.

**Returns:** Array<[ThrownProjectile](./Entity.md#thrownprojectile)>

