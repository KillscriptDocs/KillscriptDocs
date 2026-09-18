# Item

Item API.

## Contents

- [BridgeChargeItem](#bridgechargeitem)
- [Drop](#drop)
- [Drops](#drops)
- [EItemSlot](#eitemslot)
- [EThrowState](#ethrowstate)
- [FirearmItem](#firearmitem)
- [HitscanHit](#hitscanhit)
- [Item](#item)
- [Items](#items)
- [MeleeItem](#meleeitem)
- [ThrowableItem](#throwableitem)

---

## BridgeChargeItem

BridgeCharge as an inventory item.

**Base:** [Item](./Item.md#item)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `IsPlanting` | bool | `get` |  | true if a BridgeCharge is currently being planted. |
| `PlantProgress` | number | `get` |  | BridgeCharge planting progress (0.0 - 1.0). |
| `PlantRemainingTicks` | int | `get` |  | Remaining number of ticks until the BridgeCharge is planted. |

## Drop

Entity of an item lying on the ground.

**Base:** [Entity](./Entity.md#entity)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Config` | [ConfigItem](./GameConfig.md#configitem) | `get` |  | Dropped item configuration. Returns nil if the object is hidden or the item configuration is unavailable. |
| `Item` | [Item](./Item.md#item) | `get` |  | The item itself. Returns nil if the object is hidden or the item data is unavailable. |


### Methods

#### PickUp

```lua
Drop:PickUp(switchToNewItem: bool = ...)
```

[ClientOnly] Picks up the dropped item. Only items dropped by teammates can be picked up. In Defusal mode, the buy menu must be available.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `switchToNewItem` | bool | ✅ | true to switch to the item after picking it up, false to only add it to the inventory. Default: true. |

## Drops

Global API for listing dropped items.

### Methods

#### GetAll

```lua
Drops:GetAll(): Array<Drop>
```

Returns all dropped items.

**Returns:** Array<[Drop](./Item.md#drop)>

#### GetNearby

```lua
Drops:GetNearby(): Array<Drop>
```

Returns nearby dropped items from the local team that can be picked up.

**Returns:** Array<[Drop](./Item.md#drop)>

## EItemSlot

Item slots in the inventory.

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | Slot is not defined. |
| `PrimaryWeapon` | `1` | Primary weapon. |
| `SecondaryWeapon` | `2` | Secondary weapon. |
| `Knife` | `3` | Knife. |
| `Grenade` | `4` | Grenade. |
| `BridgeCharge` | `5` | BridgeCharge. |
| `Armor` | `6` | Armor. |
| `Defuser` | `7` | Defuse kit. |

## EThrowState

Throwable item throw state.

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | No throw is being performed. |
| `Preparing` | `1` | Preparing a primary (strong) throw. |
| `PreparingAlternate` | `2` | Preparing an alternate (weak) throw. |
| `Throwing` | `3` | Primary (strong) throw. |
| `ThrowingAlternate` | `4` | Alternate (weak) throw. |

## FirearmItem

Firearm as an inventory item.

**Base:** [Item](./Item.md#item)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `ClipAmmo` | int | `get` |  | Amount of ammo in the magazine. |
| `Config` | [ConfigItemFirearm](./GameConfig.md#configitemfirearm) | `get/set` |  | Firearm configuration. Returns nil if the configuration is unavailable. |
| `Dispersion` | number | `get` |  | Full weapon spread taking the current state and configuration into account. Returns 0 if the weapon is not currently held. |
| `HasAmmo` | bool | `get` |  | Returns true if there is ammo in the magazine or reserve. |
| `IsReloading` | bool | `get` |  | Returns true if the weapon is currently held and reloading. |
| `ReloadProgress` | number | `get` |  | Reload progress from 0 to 1 for a weapon that is currently held. Returns 0 if the weapon is not currently held. |
| `RemainingAmmo` | int | `get` |  | Amount of reserve ammo. |


### Methods

#### GetPredictedHits

```lua
FirearmItem:GetPredictedHits(): Array<Array<HitscanHit>>
```

[ServerOnly] [LocalAgent] Returns a list of possible hit results if the weapon is held by the local agent and fired right now. Each tick, several random trajectories that the shot can follow are calculated based on the aim direction and current inaccuracy. The shot is guaranteed to follow one of these trajectories. Each element of the returned array is the list of potential hits for one trajectory, similar to calling HitscanHit for that trajectory.

**Returns:** Array<Array<[HitscanHit](./Item.md#hitscanhit)>>

#### HitscanFirearm

```lua
FirearmItem:HitscanFirearm(firePosition: Vector3, projectileDirection: Vector3): Array<HitscanHit>
```

Simulates a shot from the specified position in the specified direction and returns a list of hits, taking penetrations into account. On the client, the array is reused by the module until the next HitscanFirearm call for any weapon in that module. To retain the hits, copy them into a Lua table.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `firePosition` | Vector3 |  | Shot origin position. For an agent, you can use Aim.Position. |
| `projectileDirection` | Vector3 |  | Direction from the shot origin. For an agent, you can use Aim.Direction. |

**Returns:** Array<[HitscanHit](./Item.md#hitscanhit)>

## HitscanHit

Projectile hit result (hitscan).

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `EntryPoint` | Vector3 | `get` |  | Projectile entry point into the surface. |
| `EntryPower` | number | `get` |  | Relative power on entry into the surface (in the 0-1 range, where 1 is full power). Power decreases when penetrating surfaces. |
| `ExitPower` | number | `get` |  | Relative power on exit from the surface (in the 0-1 range, where 1 is full power). Power decreases when penetrating surfaces. |
| `HasExited` | bool | `get` |  | true if the projectile passed all the way through. |
| `Hitbox` | [Hitbox](./Agent.md#hitbox) | `get` |  | Hitbox that was hit, or nil. |

## Item

Base object for all items.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AsBridgeChargeItem` | [BridgeChargeItem](./Item.md#bridgechargeitem) | `get` |  | Returns the item as BridgeChargeItem, or nil if it is a different item type. |
| `AsFirearmItem` | [FirearmItem](./Item.md#firearmitem) | `get` |  | Returns the item as FirearmItem, or nil if it is a different item type. |
| `AsMeleeItem` | [MeleeItem](./Item.md#meleeitem) | `get` |  | Returns the item as MeleeItem, or nil if it is a different item type. |
| `AsThrowableItem` | [ThrowableItem](./Item.md#throwableitem) | `get` |  | Returns the item as ThrowableItem, or nil if it is a different item type. |
| `ConfigItem` | [ConfigItem](./GameConfig.md#configitem) | `get/set` |  | Item configuration. Returns nil if the configuration is unavailable. |
| `Icon` | [Texture](./Texture.md#texture) | `get/set` |  | Full-resolution item icon. Returns nil if the item has no icon. |
| `IconSmall` | [Texture](./Texture.md#texture) | `get/set` |  | Small item icon with reduced detail. Returns nil if the item has no such icon. |
| `IsBridgeCharge` | bool | `get` |  | true if the item is a BridgeCharge. |
| `IsDropped` | bool | `get` |  | true if the item has no owner. |
| `IsFirearm` | bool | `get` |  | true if the item is a firearm. |
| `IsMelee` | bool | `get` |  | true if the item is a melee weapon. |
| `IsThrowable` | bool | `get` |  | true if the item is throwable. |
| `IsVisible` | bool | `get` |  | true if the item is visible to the local team. When the item is not visible, dynamic members return undefined values, while static type and configuration data remain available. |
| `ItemSlot` | [EItemSlot](./Item.md#eitemslot) | `get/set` |  | Inventory slot defined by the item's configuration. |
| `Name` | string | `get/set` |  | Item name from the configuration. |
| `Position` | Vector3 | `get` |  | Position of the agent holding the item, or the position of the dropped item. |

## Items

Global API for listing items.

### Methods

#### GetAll

```lua
Items:GetAll(): Array<Item>
```

Returns all items on the map.

**Returns:** Array<[Item](./Item.md#item)>

#### GetAllBridgeCharges

```lua
Items:GetAllBridgeCharges(): Array<BridgeChargeItem>
```

Returns all BridgeCharges on the map as items.

**Returns:** Array<[BridgeChargeItem](./Item.md#bridgechargeitem)>

## MeleeItem

Melee weapon as an inventory item.

**Base:** [Item](./Item.md#item)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Config` | [ConfigItemMelee](./GameConfig.md#configitemmelee) | `get/set` |  | Melee weapon configuration. Returns nil if the configuration is unavailable. |


### Methods

#### HitscanMelee

```lua
MeleeItem:HitscanMelee(firePosition: Vector3, direction: Vector3, distance: number): HitscanHit
```

Simulates a melee strike from the specified position in the specified direction and returns the hit, or nil if there is no hit.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `firePosition` | Vector3 |  | Strike position. For an agent, you can use Aim.Position. |
| `direction` | Vector3 |  | Strike direction. For an agent, you can use Aim.Direction. |
| `distance` | number |  | Maximum strike distance up to which the simulation is performed. You can use ConfigItemMelee.StrongAttackMaxHitDistance as the value. |

**Returns:** [HitscanHit](./Item.md#hitscanhit)

## ThrowableItem

Throwable item (grenade) as an inventory item.

**Base:** [Item](./Item.md#item)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Config` | [ConfigItemThrowable](./GameConfig.md#configitemthrowable) | `get/set` |  | Throwable item configuration. Returns nil if the configuration is unavailable. |
| `ThrowState` | [EThrowState](./Item.md#ethrowstate) | `get` |  | Current throw state. |


### Methods

#### SimulateThrowTrajectory

```lua
ThrowableItem:SimulateThrowTrajectory(throwState: EThrowState): Array<Vector3>
```

[ClientOnly] Returns the simulated throw trajectory for the owner's current rotation and position. The array is reused by the entire module: its contents are valid only until the next SimulateTrajectory or SimulateThrowTrajectory call on any object in the same module, even if that call returns an empty array. To retain the points, copy them into a Lua table before the next call. Calls from other modules, scene state capture, and object retirement do not modify the returned array.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `throwState` | [EThrowState](./Item.md#ethrowstate) |  | Must be Preparing or PreparingAlternate, otherwise returns an empty array. For the current item, you can read the state from the ThrowState property. |

**Returns:** Array<Vector3>

