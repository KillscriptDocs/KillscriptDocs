# Agent

API for working with agents (specialists).

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

Represents an agent in the game. This class provides access to various properties and methods related to the agent, such as movement, health, inventory, and more.

**Base:** [Entity](./Entity.md#entity)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Aim` | [Aim](./Agent.md#aim) | `get` |  | Access to the agent aiming API. |
| `Avatar` | [Sprite](./Sprite.md#sprite) | `get` |  | [ClientOnly] Agent avatar (Sprite). Returns the player's avatar or the team icon. |
| `AvatarIsTeamPlaceholder` | bool | `get` |  | [ClientOnly] Returns true if Avatar is currently the team placeholder icon instead of the player's real avatar. |
| `Color` | Color | `get` |  | Returns the color assigned to the agent. |
| `Health` | [Health](./Agent.md#health) | `get` |  | Access to the agent health API. |
| `Interactor` | [Interactor](./Agent.md#interactor) | `get` |  | Access to the agent interaction API. |
| `Inventory` | [Inventory](./Agent.md#inventory) | `get` |  | Access to the agent inventory API. |
| `IsSpectated` | bool | `get` |  | [ClientOnly] true if this agent is being spectated (when the local agent is dead or in spectator mode). |
| `Movement` | [Movement](./Agent.md#movement) | `get` |  | Access to the agent movement API. |
| `Nickname` | string | `get` |  | Player nickname. |
| `Number` | int | `get` |  | Returns the number assigned to the agent. |
| `OcclusionCulling` | [OcclusionCulling](./Agent.md#occlusionculling) | `get` |  | Access to the agent occlusion/visibility API. |
| `Stats` | [AgentStats](./Agent.md#agentstats) | `get` |  | Agent stats, always available. |
| `Team` | [Team](./Team.md#team) | `get` |  | Team the agent belongs to. |


### Methods

#### GetHitboxes

```lua
Agent:GetHitboxes(): Array<Hitbox>
```

Returns the agent's hitboxes.

**Returns:** Array<[Hitbox](./Agent.md#hitbox)>

#### TrySpectate

```lua
Agent:TrySpectate(): bool
```

[ClientOnly] Switches spectating to this agent if allowed by the current spectator mode.

**Returns:** bool

## AgentInput

Global API for reading input state and controlling the local agent.

### Methods

#### GetLookRotation

```lua
AgentInput:GetLookRotation(): Vector2
```

Returns the current look rotation of the local agent in degrees (X = pitch, Y = yaw).

**Returns:** Vector2

#### GetMoveDirection

```lua
AgentInput:GetMoveDirection(): Vector2
```

Returns the current movement direction of the local agent.

**Returns:** Vector2

#### IsButtonDown

```lua
AgentInput:IsButtonDown(inputButton: EInputButton): bool
```

true if the input button is being held by the local agent.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `inputButton` | [EInputButton](./Agent.md#einputbutton) |  |  |

**Returns:** bool

#### IsJustPressed

```lua
AgentInput:IsJustPressed(inputButton: EInputButton): bool
```

true if the button was pressed by the local agent on this tick.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `inputButton` | [EInputButton](./Agent.md#einputbutton) |  |  |

**Returns:** bool

#### SetButtonState

```lua
AgentInput:SetButtonState(inputButton: EInputButton, down: bool)
```

Sets the local agent's input button state (pressed/released).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `inputButton` | [EInputButton](./Agent.md#einputbutton) |  |  |
| `down` | bool |  |  |

#### SetLookRotation

```lua
AgentInput:SetLookRotation(vector: Vector2)
```

Sets the local agent's absolute look rotation in degrees (X = pitch, Y = yaw).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `vector` | Vector2 |  |  |

#### SetMoveDirection

```lua
AgentInput:SetMoveDirection(vector: Vector2)
```

Sets the local agent's movement vector in input axes (X = left/right, Y = forward/back).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `vector` | Vector2 |  |  |

## Agents

Agent listing and events API.

### Methods

#### GetAll

```lua
Agents:GetAll(): Array<Agent>
```

Returns all agents in the match.

**Returns:** Array<[Agent](./Agent.md#agent)>

#### GetAllies

```lua
Agents:GetAllies(): Array<Agent>
```

Returns all allied agents relative to the local team.

**Returns:** Array<[Agent](./Agent.md#agent)>

#### GetEnemies

```lua
Agents:GetEnemies(): Array<Agent>
```

Returns all enemy agents relative to the local team.

**Returns:** Array<[Agent](./Agent.md#agent)>

#### GetLocalAgent

```lua
Agents:GetLocalAgent(): Agent
```

Returns the local player's agent, or nil if the local agent is currently unavailable.

**Returns:** [Agent](./Agent.md#agent)

#### GetLocalOrSpectatedAgent

```lua
Agents:GetLocalOrSpectatedAgent(): Agent
```

Returns the local player's agent or the spectated agent, or nil if no such agent currently exists.

**Returns:** [Agent](./Agent.md#agent)

#### OnDamage

```lua
Agents:OnDamage(callback: LuaFunction): EventSubscription
```

[ClientOnly] Calls the callback when the local player takes damage. Returns a subscription that can be cancelled.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnDeath

```lua
Agents:OnDeath(callback: LuaFunction): EventSubscription
```

[ClientOnly] Calls the callback when an agent dies. Returns a subscription that can be cancelled.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnHit

```lua
Agents:OnHit(callback: LuaFunction): EventSubscription
```

[ClientOnly] Calls the callback when the local player hits an enemy. Returns a subscription that can be cancelled.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnStunned

```lua
Agents:OnStunned(callback: LuaFunction): EventSubscription
```

[ClientOnly] Calls the callback when the local player receives a stun. Returns a subscription that can be cancelled.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

## AgentStats

General agent stats.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Assists` | int |  | Number of assists. |
| `Damage` | number |  | Total damage dealt. |
| `DeathTick` | int |  | Simulation tick when the agent died. |
| `Deaths` | int |  | Number of deaths. |
| `IsAlive` | bool |  | true if alive. |
| `IsConnected` | bool |  | true if connected. |
| `Kills` | int |  | Number of kills. |
| `Money` | int |  | Number of credits. This field is known only for the allied team, for all other teams it is 0. |
| `Ping` | int |  | Average ping in milliseconds based on recent measurements. |

## Aim

Access to the agent aiming system. Handles the current aim direction, aim spread, and stun.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AccumulatedUncertainty` | number | `get` |  | [LocalAgent] Accumulated aiming inaccuracy caused by aim direction changes and other sources. |
| `AimingDownSightsProgress` | number | `get` |  | Aiming progress (ADS) from 0 to 1. |
| `Direction` | Vector3 | `get` |  | Current aim direction in world coordinates. |
| `DirectionViewportPoint` | Vector3 | `get` |  | [ClientOnly] [LocalAgent] Viewport coordinates of the aim direction position for UI rendering. |
| `IsAimingDownSights` | bool | `get` |  | true if the agent is currently aiming (ADS). |
| `IsStunned` | bool | `get` |  | true if the agent is currently stunned. |
| `IsStunnedVisually` | bool | `get` |  | true if the stun visual effect is currently active for the agent. Remains active longer than IsStunned so the effect from a short stun does not disappear completely on high ping when the client learns about the stun after it has already ended. |
| `LastStunDuration` | number | `get` |  | [LocalAgent] Duration of the last stun in seconds. |
| `MovementSpeedUncertainty` | number | `get` |  | [LocalAgent] Inaccuracy caused by movement speed. |
| `Position` | Vector3 | `get` |  | World position of the camera used for aiming and shooting. |
| `StunnedUntilTick` | int | `get` |  | Simulation tick until which the stun remains active. |
| `StunnedVisuallyUntilTick` | int | `get` |  | Simulation tick until which the stun visual effect remains active. Usually equals StunnedUntilTick plus the network latency in ticks, so the effect from a short stun does not disappear completely on high ping when the client learns about the stun after it has already ended. |
| `Target` | [Agent](./Agent.md#agent) | `get` |  | [LocalAgent] Aim target. Returns nil if no target is selected or the target agent is no longer available. |
| `TargetPosition` | Vector3 | `get` |  | Current aim point in world coordinates. |
| `TotalUncertainty` | number | `get` |  | [LocalAgent] Sum of accumulated inaccuracy and movement inaccuracy. |


### Methods

#### ResetAimTarget

```lua
Aim:ResetAimTarget()
```

[ServerOnly] [LocalAgent] Resets the aim target.

#### SetAimTarget

```lua
Aim:SetAimTarget(targetPosition: Vector3, agent: Agent)
```

[ServerOnly] [LocalAgent] Sets the aim target and position.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `targetPosition` | Vector3 |  |  |
| `agent` | [Agent](./Agent.md#agent) |  |  |

## DamageData

Received damage data.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Damage` | number |  | Damage taken. |
| `DamageDirection` | Vector3 |  | Damage direction: from the point where the damage was received to the attack source. |
| `DamageDirectionFromHead` | Vector3 |  | Damage direction: from the head to the attack source. |
| `DamagePosition` | Vector3 |  | Point where the damage was received, relative to the agent's position. |
| `DamageTick` | int |  | Tick on which the damage was observed. |

## DeathEventData

Agent death data (see Agents.OnDeath).

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `IsCritical` | bool |  | true if the kill was critical. |
| `Killer` | string |  | Killer name. |
| `Victim` | string |  | Victim name. |
| `WeaponId` | int |  | ID of the weapon used to make the kill. |

## EHitboxBodyPart

Agent hitbox body part.

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | No body part. |
| `Head` | `1` | Head. |
| `Body` | `2` | Body. |
| `Arm` | `3` | Arm. |
| `Leg` | `4` | Leg. |

## EHitType

Hit type.

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | No hit. |
| `Regular` | `1` | Regular hit. |
| `Critical` | `2` | Critical hit. |
| `Fatal` | `3` | Fatal hit. |
| `FriendlyFire` | `4` | Friendly fire damage. |
| `KineticShield` | `5` | Kinetic Shield hit. |
| `Stunned` | `6` | Stunning damage. |

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

Access to the agent health system.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `CurrentHealth` | int | `get` |  | Current agent health rounded to an integer. |
| `CurrentHealthPrecise` | number | `get` |  | Current exact health value of the agent. |
| `IsAlive` | bool | `get` |  | true if the agent is alive. |
| `MaxHealth` | int | `get` |  | Maximum agent health. |

## Hitbox

Agent hitbox: position, radius, body part, and hit checks.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Agent` | [Agent](./Agent.md#agent) | `get` |  | The agent this hitbox belongs to. Returns nil if the agent is no longer available. |
| `BodyPart` | [EHitboxBodyPart](./Agent.md#ehitboxbodypart) | `get` |  | Body part the hitbox belongs to. |
| `IsBox` | bool | `get` |  | true if the hitbox has a box shape. |
| `IsSphere` | bool | `get` |  | true if the hitbox has a spherical shape. |
| `IsVisible` | bool | `get` |  | true if the agent with this hitbox is visible to the local team. When the agent is not visible, all other hitbox members return undefined values. |
| `Position` | Vector3 | `get` |  | Hitbox center position. |
| `Radius` | number | `get` |  | Spherical hitbox radius. |
| `Rotation` | Quaternion | `get` |  | Hitbox rotation in world space. |
| `Size` | Vector3 | `get` |  | Box hitbox size along each axis in local coordinates. |

## HitData

Hit data.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Damage` | number |  | Damage amount. |
| `HitEventId` | int |  | Unique hit event ID. |
| `HitTick` | int |  | Tick on which the hit occurred. |
| `HitType` | [EHitType](./Agent.md#ehittype) |  | Hit type. |

## Interactable

Wrapper over an object that can be interacted with.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `ActionName` | string | `get` |  | Name of the available interaction action. |
| `AsDrop` | [Drop](./Item.md#drop) | `get` |  | Returns the object as Drop, or nil if it is a different object type. |
| `AsPlantedBridgeCharge` | [PlantedBridgeCharge](./Entity.md#plantedbridgecharge) | `get` |  | Returns the object as PlantedBridgeCharge, or nil if it is a different object type. |
| `IsDrop` | bool | `get` |  | true if the object is a Drop. |
| `IsPlantedBridgeCharge` | bool | `get` |  | true if the object is a PlantedBridgeCharge. |
| `IsVisible` | bool | `get` |  | true if the object is visible. When the object is not visible, all its members return undefined values. |


### Methods

#### CanInteract

```lua
Interactable:CanInteract(agent: Agent): bool
```

true if the agent can interact with the object.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |

**Returns:** bool

#### GetInteractDuration

```lua
Interactable:GetInteractDuration(agent: Agent): number
```

Returns the duration of the agent's interaction with the object in seconds.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |

**Returns:** number

## Interactor

Access to the agent interaction system.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AvailableInteractable` | [Interactable](./Agent.md#interactable) | `get` |  | [LocalAgent] Object the agent can interact with. Returns nil if there is no available object. |
| `InteractActionName` | string | `get` |  | Name of the current interaction action, such as 'Defuse' or 'PickUp'. |
| `InteractProgress` | number | `get` |  | Progress of the current interaction from 0 to 1. |
| `IsDefusing` | bool | `get` |  | [LocalAgent] true if the agent is currently defusing the BridgeCharge. |
| `IsInteracting` | bool | `get` |  | true if the agent is currently interacting with an object. |

## Inventory

Access to the agent inventory and item management.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `CurrentItem` | [Item](./Item.md#item) | `get` |  | Current equipped item. Returns nil if the inventory is unavailable or no item is equipped. |
| `IsSwitching` | bool | `get` |  | true if the agent is currently switching CurrentItem. |
| `SwitchingUntil` | int | `get` |  | Simulation tick until which the CurrentItem switch remains active. |


### Methods

#### GetItem

```lua
Inventory:GetItem(slot: EItemSlot): Item
```

Returns the first item in the specified slot, or nil if the slot is empty or the inventory is unavailable.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `slot` | [EItemSlot](./Item.md#eitemslot) |  |  |

**Returns:** [Item](./Item.md#item)

#### GetItems

```lua
Inventory:GetItems(): Array<Item>
```

Returns all items in the agent's inventory.

**Returns:** Array<[Item](./Item.md#item)>

#### GetItemsInSlot

```lua
Inventory:GetItemsInSlot(slot: EItemSlot): Array<Item>
```

Returns the items in the specified slot.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `slot` | [EItemSlot](./Item.md#eitemslot) |  |  |

**Returns:** Array<[Item](./Item.md#item)>

#### IsSlotEmpty

```lua
Inventory:IsSlotEmpty(slot: EItemSlot): bool
```

Checks whether the specified inventory slot is empty.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `slot` | [EItemSlot](./Item.md#eitemslot) |  |  |

**Returns:** bool

## Movement

Data and calculations related to the agent's movement and position in the world.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `CrouchJumpCooldownUntil` | int | `get` |  | Simulation tick until which the crouch jump cooldown remains active for the agent. |
| `CrouchProgress` | number | `get` |  | Current crouch progress from 0 to 1. |
| `IsCrouching` | bool | `get` |  | true if the agent is crouching. |
| `IsGrounded` | bool | `get` |  | true if the agent is on solid ground. |
| `IsWalking` | bool | `get` |  | true if the agent is walking slowly. |
| `JumpCooldownUntil` | int | `get` |  | Simulation tick until which the agent's jump cooldown remains active. |
| `Position` | Vector3 | `get` |  | Current world position where the agent is standing. |
| `Velocity` | Vector3 | `get` |  | Agent velocity. |


### Methods

#### GetZones

```lua
Movement:GetZones(): Array<string>
```

Returns the list of zones the agent is currently in.

**Returns:** Array<string>

## OcclusionCulling

Access to the agent occlusion/visibility system.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `HasBeenVisible` | bool | `get` |  | [ClientOnly] true if the agent has ever been visible, or is visible now. |
| `SoundRange` | number | `get` |  | Audible radius of the sound produced by the agent. |
| `TicksSinceLastVisible` | int | `get` |  | [ClientOnly] Number of ticks since the agent was last visible. |

## StunnedData

Stun status data.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `StunnedUntilTick` | int |  | Tick until which the stun remains active. |

