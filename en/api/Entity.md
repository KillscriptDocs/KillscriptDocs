# Entity

Game world entity API.

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

Explosion from an EMP grenade.

**Base:** [Explosion](./Entity.md#explosion)

## Entity

Base object for all entities in the world.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `ID` | int | `get` |  | An ID that is unique for the entity's lifetime or until the round changes. |
| `IsVisible` | bool | `get` |  | true if the entity is visible to the local team. When the entity is not visible, all members except Name and ID return undefined values. |
| `Name` | string | `get` |  | Entity name. |
| `Position` | Vector3 | `get` |  | Entity position in the world. |
| `TicksSinceLastVisible` | int | `get` |  | [ClientOnly] Number of ticks since the entity was last visible. |

## Explosion

Base explosion object with common lifetime parameters.

**Base:** [Entity](./Entity.md#entity)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AsEMPGrenadeExplosion` | [EMPGrenadeExplosion](./Entity.md#empgrenadeexplosion) | `get` |  | Returns the explosion as EMPGrenadeExplosion, or nil if it is a different explosion type. |
| `AsFragGrenadeExplosion` | [FragGrenadeExplosion](./Entity.md#fraggrenadeexplosion) | `get` |  | Returns the explosion as FragGrenadeExplosion, or nil if it is a different explosion type. |
| `AsIncendiaryExplosion` | [IncendiaryExplosion](./Entity.md#incendiaryexplosion) | `get` |  | Returns the explosion as IncendiaryExplosion, or nil if it is a different explosion type. |
| `AsPowerShellExplosion` | [PowerShellExplosion](./Entity.md#powershellexplosion) | `get` |  | Returns the explosion as PowerShellExplosion, or nil if it is a different explosion type. |
| `AsSonarExplosion` | [SonarExplosion](./Entity.md#sonarexplosion) | `get` |  | Returns the explosion as SonarExplosion, or nil if it is a different explosion type. |
| `Instigator` | [Agent](./Agent.md#agent) | `get` |  | The agent that initiated this Explosion. |
| `IsEMPGrenadeExplosion` | bool | `get` |  | true if this is an explosion from an EMP grenade. |
| `IsFragGrenadeExplosion` | bool | `get` |  | true if this is an explosion from a Frag grenade. |
| `IsIncendiaryExplosion` | bool | `get` |  | true if the explosion is a fire area from an incendiary grenade. |
| `IsPowerShellExplosion` | bool | `get` |  | true if the explosion is a shield dome. |
| `IsSonarExplosion` | bool | `get` |  | true if the explosion is a sonar. |
| `ThrowableConfig` | [ConfigItemThrowable](./GameConfig.md#configitemthrowable) | `get` |  | Configuration of the throwable item that created this Explosion. Returns nil if the configuration is unavailable. |
| `ToDespawnTicks` | int | `get` |  | Remaining number of ticks until the explosion is removed. |

## Explosions

Global API for listing explosions.

### Methods

#### GetAll

```lua
Explosions:GetAll(): Array<Explosion>
```

Returns all active grenade explosions on the map.

**Returns:** Array<[Explosion](./Entity.md#explosion)>

#### GetEMPGrenadeExplosions

```lua
Explosions:GetEMPGrenadeExplosions(): Array<EMPGrenadeExplosion>
```

Returns all EMP grenade explosions (EMPGrenadeExplosion) on the map.

**Returns:** Array<[EMPGrenadeExplosion](./Entity.md#empgrenadeexplosion)>

#### GetFragGrenadeExplosions

```lua
Explosions:GetFragGrenadeExplosions(): Array<FragGrenadeExplosion>
```

Returns all Frag grenade explosions (FragGrenadeExplosion) on the map.

**Returns:** Array<[FragGrenadeExplosion](./Entity.md#fraggrenadeexplosion)>

#### GetIncendiaryExplosions

```lua
Explosions:GetIncendiaryExplosions(): Array<IncendiaryExplosion>
```

Returns all active fire areas (IncendiaryExplosion) on the map.

**Returns:** Array<[IncendiaryExplosion](./Entity.md#incendiaryexplosion)>

#### GetPowerShellExplosions

```lua
Explosions:GetPowerShellExplosions(): Array<PowerShellExplosion>
```

Returns all active protection domes (PowerShellExplosion) on the map.

**Returns:** Array<[PowerShellExplosion](./Entity.md#powershellexplosion)>

#### GetSonarExplosions

```lua
Explosions:GetSonarExplosions(): Array<SonarExplosion>
```

Returns all active sonars (SonarExplosion) on the map.

**Returns:** Array<[SonarExplosion](./Entity.md#sonarexplosion)>

## FragGrenadeExplosion

Explosion from a Frag grenade.

**Base:** [Explosion](./Entity.md#explosion)

## IncendiaryExplosion

Fire from an incendiary grenade.

**Base:** [Explosion](./Entity.md#explosion)

## PlantedBridgeCharge

Planted BridgeCharge on the map.

**Base:** [Entity](./Entity.md#entity)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Icon` | [Texture](./Texture.md#texture) | `get` |  | BridgeCharge icon as a texture. |

## PlantedBridgeCharges

Global API for working with PlantedBridgeCharge.

### Methods

#### GetPlanted

```lua
PlantedBridgeCharges:GetPlanted(): Array<PlantedBridgeCharge>
```

Returns all planted BridgeCharges on the map.

**Returns:** Array<[PlantedBridgeCharge](./Entity.md#plantedbridgecharge)>

## PlantedBridgeChargeTutorial

Planted BridgeCharge in training.

**Base:** [Entity](./Entity.md#entity)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Icon` | [Texture](./Texture.md#texture) | `get` |  | BridgeCharge icon as a texture. |

## PowerShellExplosion

PowerShell dome in the world.

**Base:** [Explosion](./Entity.md#explosion)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `ShellDurability` | number | `get` |  | Current PowerShell dome health. |
| `ShellMaxDurability` | number | `get` |  | Maximum PowerShell dome health. |

## SonarExplosion

Sonar as an object in the world.

**Base:** [Explosion](./Entity.md#explosion)

## ThrownProjectile

Thrown item in flight, such as a grenade.

**Base:** [Entity](./Entity.md#entity)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `IsExploded` | bool | `get` |  | true if the item has already exploded or is no longer active. |
| `ThrowableConfig` | [ConfigItemThrowable](./GameConfig.md#configitemthrowable) | `get` |  | Throwable item configuration. Returns nil if the configuration is unavailable. |
| `ThrownAtTick` | int | `get` |  | Tick on which the item was thrown. |
| `ThrownBy` | [Agent](./Agent.md#agent) | `get` |  | The agent who threw the item. |
| `Velocity` | Vector3 | `get` |  | Current flight velocity. |


### Methods

#### SimulateTrajectory

```lua
ThrownProjectile:SimulateTrajectory(): Array<Vector3>
```

[ClientOnly] Returns the calculated flight trajectory.

**Returns:** Array<Vector3>

## ThrownProjectiles

Global API for working with thrown items in flight.

### Methods

#### GetAll

```lua
ThrownProjectiles:GetAll(): Array<ThrownProjectile>
```

Returns all active thrown items, such as grenades, that have not exploded yet. On the client, also returns grenades that are not visible now but were visible before and continue to have their trajectory predicted.

**Returns:** Array<[ThrownProjectile](./Entity.md#thrownprojectile)>

