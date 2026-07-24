# GameConfig

Game configuration API: item parameters, global constants, flags, and more.

## Contents

- [ConfigConstant](#configconstant)
- [ConfigDefusalShop](#configdefusalshop)
- [ConfigFlag](#configflag)
- [ConfigItem](#configitem)
- [ConfigItemFirearm](#configitemfirearm)
- [ConfigItemMelee](#configitemmelee)
- [ConfigItemThrowable](#configitemthrowable)
- [ItemConfigs](#itemconfigs)
- [WeaponPreview](#weaponpreview)

---

## ConfigConstant

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AirAcceleration` | number | `get` | ✅ | Acceleration while moving through the air (sv_airaccelerate). |
| `AirFriction` | number | `get` | ✅ | Friction coefficient while moving through the air, similar to sv_friction. |
| `BombSoundRadius` | number | `get` | ✅ | Audible radius of a planted Bridge Charge. |
| `CrouchJumpHorizontalImpulse` | number | `get` | ✅ | Horizontal impulse of a crouch jump. |
| `CrouchJumpVerticalImpulse` | number | `get` | ✅ | Vertical impulse of a crouch jump. |
| `CrouchSpeed` | number | `get` | ✅ | Movement speed while crouching, in meters per second. |
| `CrouchStabilizationFactor` | number | `get` | ✅ | How much crouching reduces stun duration, where 0 has no effect and 1 ends the stun immediately. |
| `CrouchSwitchTime` | number | `get` | ✅ | How many seconds it takes to switch between standing and crouching. |
| `CrouchUncertaintyLossFactor` | number | `get` | ✅ | Accuracy recovery multiplier while crouching. At 1 recovery is as fast as while standing, and values above 1 recover accuracy faster. |
| `DefusalAgentsPerTeam` | number | `get` | ✅ | Number of specialists on each team. |
| `DefusalBombDefuseNoDefuserTime` | number | `get` | ✅ | How many seconds it takes to hack the Bridge Charge without a Cyberdeck. |
| `DefusalBombDefuseWithDefuserTime` | number | `get` | ✅ | How many seconds it takes to hack the Bridge Charge with a Cyberdeck. |
| `DefusalBombExplosionExpansionTime` | number | `get` | ✅ | How many seconds the bomb's explosion sphere takes to reach its maximum radius. |
| `DefusalBombExplosionRadius` | number | `get` | ✅ | Explosion radius of the Bridge Charge. |
| `DefusalBombExplosionTime` | number | `get` | ✅ | How many seconds after planting the Bridge Charge explodes. |
| `DefusalBombPlantTime` | number | `get` | ✅ | How many seconds it takes to plant the Bridge Charge. |
| `DefusalLateBuyDuration` | number | `get` | ✅ | How many seconds after the fight phase starts buying is still allowed in a buy zone. |
| `DefusalMoneyDefuse` | number | `get` | ✅ | Personal reward for hacking the Bridge Charge. |
| `DefusalMoneyLimitCT` | number | `get` | ✅ | Maximum amount of money a Killscript Company specialist can hold. |
| `DefusalMoneyLimitT` | number | `get` | ✅ | Maximum amount of money a Bridger Front specialist can hold. |
| `DefusalMoneyLose0CT` | number | `get` | ✅ | Loss reward for Killscript Company after 0 previous consecutive losses. |
| `DefusalMoneyLose0T` | number | `get` | ✅ | Loss reward for Bridger Front after 0 previous consecutive losses. |
| `DefusalMoneyLose1CT` | number | `get` | ✅ | Loss reward for Killscript Company after 1 previous consecutive loss. |
| `DefusalMoneyLose1T` | number | `get` | ✅ | Loss reward for Bridger Front after 1 previous consecutive loss. |
| `DefusalMoneyLose2CT` | number | `get` | ✅ | Loss reward for Killscript Company after 2 previous consecutive losses. |
| `DefusalMoneyLose2T` | number | `get` | ✅ | Loss reward for Bridger Front after 2 previous consecutive losses. |
| `DefusalMoneyLose3CT` | number | `get` | ✅ | Loss reward for Killscript Company after 3 previous consecutive losses. |
| `DefusalMoneyLose3T` | number | `get` | ✅ | Loss reward for Bridger Front after 3 previous consecutive losses. |
| `DefusalMoneyLose4CT` | number | `get` | ✅ | Loss reward for Killscript Company after 4 or more consecutive losses. |
| `DefusalMoneyLose4T` | number | `get` | ✅ | Loss reward for Bridger Front after 4 or more consecutive losses. |
| `DefusalMoneyLosePlantBonus` | number | `get` | ✅ | Additional reward for the attacking team for losing after successfully planting the Bridge Charge. |
| `DefusalMoneyPlant` | number | `get` | ✅ | Personal reward for planting the Bridge Charge. |
| `DefusalMoneyStartCT` | number | `get` | ✅ | Starting money for a Killscript Company specialist. |
| `DefusalMoneyStartT` | number | `get` | ✅ | Starting money for a Bridger Front specialist. |
| `DefusalMoneyWinBombDefusal` | number | `get` | ✅ | Reward for the defending team for winning by hacking the Bridge Charge. |
| `DefusalMoneyWinBombDetonation` | number | `get` | ✅ | Reward for the attacking team for winning by detonating the Bridge Charge. |
| `DefusalMoneyWinTeamEliminationCT` | number | `get` | ✅ | Reward for Killscript Company for winning by eliminating the entire enemy team. |
| `DefusalMoneyWinTeamEliminationT` | number | `get` | ✅ | Reward for Bridger Front for winning by eliminating the entire enemy team. |
| `DefusalMoneyWinTimeOver` | number | `get` | ✅ | Reward for the defending team for winning when the round timer expires. |
| `DefusalRoundsPerSide` | number | `get` | ✅ | How many rounds are played before sides switch. |
| `DefusalRoundsToWin` | number | `get` | ✅ | How many rounds must be won to win the match. |
| `DefusalStageBuyDuration` | number | `get` | ✅ | Duration of the round's buy phase in seconds. |
| `DefusalStageEndDuration` | number | `get` | ✅ | Duration of the pause before the next round when sides do not switch. |
| `DefusalStageEnd_SwapDuration` | number | `get` | ✅ | Duration of the post-round phase when sides switch. |
| `DefusalStageFightDuration` | number | `get` | ✅ | Duration of the round's fight phase in seconds. |
| `DefusalTimeoutDuration` | number | `get` | ✅ | Duration of a single team timeout in seconds. |
| `DefusalTimeoutLimit` | number | `get` | ✅ | Maximum timeouts per team per match. |
| `DefuseSoundRadius` | number | `get` | ✅ | Audible radius of hacking the Bridge Charge. |
| `DelayCrouchJump` | number | `get` | ✅ | Minimum time in seconds between two consecutive crouch jumps. |
| `DynamicAirFriction` | number | `get` | ✅ | Friction coefficient for dynamic velocity while airborne. Gravity and the vertical component of a jump use a separate dynamic velocity that is not directly tied to normal character movement velocity. |
| `DynamicGroundFriction` | number | `get` | ✅ | Friction coefficient for dynamic velocity while moving on the ground. Gravity and the vertical component of a jump use a separate dynamic velocity that is not directly tied to normal character movement velocity. |
| `FireDamageInitial` | number | `get` | ✅ | Initial per-second damage from standing in fire. |
| `FireDamageMax` | number | `get` | ✅ | Maximum per-second damage from standing in fire. |
| `FireDamageTimeToMaxDamage` | number | `get` | ✅ | How many seconds fire damage takes to ramp from its initial value to its maximum. |
| `FireStoppingPower` | number | `get` | ✅ | How much fire slows specialists, expressed as one minus the movement speed multiplier applied each time damage is taken. |
| `FireUncertaintyGainPerSecond` | number | `get` | ✅ | How much shooting inaccuracy standing in fire adds per second. |
| `FireUncertaintyLimit` | number | `get` | ✅ | Maximum shooting inaccuracy that can be accumulated from fire. |
| `GrenadeCarryLimit` | number | `get` | ✅ | Maximum number of grenades a specialist can carry at once. |
| `GroundAcceleration` | number | `get` | ✅ | Acceleration while moving on the ground (sv_accelerate). |
| `GroundFriction` | number | `get` | ✅ | Friction coefficient while moving on the ground (sv_friction). |
| `InGameViolation_AfkPoints` | number | `get` | ✅ | Number of violation points given for being AFK by remaining in the buy zone for the entire round. |
| `InGameViolation_FriendlyDamagePointsMultiplier` | number | `get` | ✅ | How many violation points are added for each point of damage dealt to a teammate. |
| `InGameViolation_FriendlyEmpAdditionalHitPoints` | number | `get` | ✅ | Violation points for each additional EMP hit on a teammate. |
| `InGameViolation_FriendlyEmpFirstHitPoints` | number | `get` | ✅ | Violation points for the first EMP hit on a teammate. |
| `InGameViolation_FriendlyEmpSecondHitPoints` | number | `get` | ✅ | Violation points for the second EMP hit on a teammate. |
| `InGameViolation_FriendlyShieldBreakPoints` | number | `get` | ✅ | Number of violation points given for breaking an ally's Kinetic Shield. |
| `InGameViolation_KickThreshold` | number | `get` | ✅ | Violation point threshold after which the player is removed from the match. |
| `JumpCooldown` | number | `get` | ✅ | Minimum delay between jumps. |
| `JumpHorizontalImpulse` | number | `get` | ✅ | Horizontal impulse of a regular jump. |
| `JumpSoundRadius` | number | `get` | ✅ | Audible radius of jumping. |
| `JumpVerticalImpulse` | number | `get` | ✅ | Vertical impulse of a regular jump. |
| `LandingFallSpeedThreshold` | number | `get` | ✅ | Vertical fall speed threshold after which the hard landing penalty is applied. |
| `LandingSoundRadius` | number | `get` | ✅ | Audible radius of landing. |
| `LandingSpeedFactor` | number | `get` | ✅ | Movement speed multiplier after a hard landing. |
| `LeaverTimeoutSeconds` | number | `get` | ✅ | Total number of seconds a player may remain disconnected during a match before being removed from it. |
| `MatchConnectionTImeoutSeconds` | number | `get` | ✅ | How many seconds the game waits for players to connect before canceling match start. |
| `MaxGroundAngle` | number | `get` | ✅ | Maximum surface angle on which a specialist can stand. |
| `MeleeHitSoundRadius` | number | `get` | ✅ | Audible radius of a melee hit. |
| `PenetrationAdditionalDistance` | number | `get` | ✅ | Additional penalty to the remaining penetration budget after passing through a surface. |
| `PenetrationGlobalFactor` | number | `get` | ✅ | Global penetration multiplier. Higher values make bullets pass through materials more easily. |
| `PlantSoundRadius` | number | `get` | ✅ | Audible radius of planting the Bridge Charge. |
| `PostDeathVisionSpotDuration` | number | `get` | ✅ | How many seconds after death a specialist still counts as a source of vision. |
| `ReloadSoundRadius` | number | `get` | ✅ | Audible radius of reloading. |
| `RunSoundRadius` | number | `get` | ✅ | Audible radius of running footsteps. |
| `RunSpeed` | number | `get` | ✅ | Maximum running speed, in meters per second. |
| `ScopeUncertaintyHalfLifeFactor` | number | `get` | ✅ | Multiplier for the accumulated inaccuracy decay period while aiming down sights. Values below 1 recover accuracy faster while aiming. |
| `SonarPingInterval` | number | `get` | ✅ | Interval between sonar grenade pulses. |
| `SonarPingSpotDuration` | number | `get` | ✅ | How many seconds after a pulse the sonar grenade keeps the vision marker active. |
| `SoundSpotDuration_Firearm` | number | `get` | ✅ | How many seconds after a shot the detection system sees an enemy specialist through walls within the sound radius. |
| `SoundSpotDuration_Movement` | number | `get` | ✅ | How many seconds after movement the detection system sees an enemy specialist through walls within the sound radius. |
| `StartMatchDelaySeconds` | number | `get` | ✅ | Delay before the match starts after all slots are filled. |
| `ViewAngle` | number | `get` | ✅ | Maximum angle from the aim direction within which specialists can visually acquire information. |
| `WalkSpeed` | number | `get` | ✅ | Walking speed in meters per second and the threshold above which movement speed begins to affect shooting accuracy. |


### Methods

#### GetShopConfigs

```lua
ConfigConstant.GetShopConfigs(): Array<ConfigDefusalShop>
```

**Returns:** Array<[ConfigDefusalShop](./GameConfig.md#configdefusalshop)>

## ConfigDefusalShop

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AvailableForCT` | bool | `get` |  | Whether Killscript Company specialists can buy this item. |
| `AvailableForT` | bool | `get` |  | Whether Bridger Front specialists can buy this item. |
| `BuyLimit` | int | `get` |  | Maximum purchases of this item per round for each specialist. |
| `Column` | int | `get` |  | Recommended column number in the buy menu grid. |
| `Item_cfg` | [ConfigItem](./GameConfig.md#configitem) | `get` |  | Item sold by this shop entry. |
| `Price` | int | `get` |  | Purchase price. Selling the item back during the buy phase refunds the same amount. |
| `Row` | int | `get` |  | Recommended row number in the buy menu grid. |
| `StartingForCT` | bool | `get` |  | Whether Killscript Company specialists receive this item at the start of the round. |
| `StartingForT` | bool | `get` |  | Whether Bridger Front specialists receive this item at the start of the round. |
| `name` | string | `get` |  | Internal name of the shop entry. Can be left empty. |

## ConfigFlag

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AllowAirStrafe` | bool | `get` | ✅ | Disables the mechanism that limits airborne speed gain, allowing characters to reach extremely high speeds. |
| `AllowWallhack` | bool | `get` | ✅ | Disables the server-side visibility check, allowing all players to access all information. |
| `DefusalKeepInventory` | bool | `get` | ✅ | Whether to preserve inventory between rounds when the economy is not reset. |
| `FalloffUncertaintyGain` | bool | `get` | ✅ | Whether hit inaccuracy gain decreases as distance increases between DamageFalloffBegin and DamageFalloffEnd. |
| `HeadAtAimDirection` | bool | `get` | ✅ | Whether to turn the character's head toward the actual aim direction. |
| `HeadAtLookRotation` | bool | `get` | ✅ | Whether to turn the character's head toward the look direction. |
| `OcclusionSymmetry` | bool | `get` | ✅ | Changes visibility checks so rays are cast both from the observer's head to enemy specialists' body parts and from the observer's body parts to enemy specialists' heads. |
| `Revealnventory` | bool | `get` | ✅ | Whether enemies can see not only the current item but also the rest of the player's inventory. |
| `StunnedPlayerCannotStunAnyone` | bool | `get` | ✅ | Prevents a stunned player from applying stun to other players with shots. |

## ConfigItem

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AirborneUncertainty` | number | `get` |  | Additional inaccuracy for firearms when the wielder is airborne. |
| `CarryLimit` | int | `get` |  | Maximum number of identical items of this type in the inventory. It is currently used mainly for grenades. |
| `DrawTime` | number | `get` |  | Time to draw or switch to the item in seconds. |
| `Droppable` | bool | `get` |  | Whether the item can be dropped, dropped on death, and purchased with a world drop. |
| `Icon` | [Texture](./Texture.md#texture) | `get` |  | Full-resolution item icon. Returns nil if the configuration has no icon. |
| `IconSmall` | [Texture](./Texture.md#texture) | `get` |  | Small item icon with reduced detail. Returns nil if the configuration has no such icon. |
| `ItemSlot` | [EItemSlot](./Item.md#eitemslot) | `get` |  | Item inventory slot and category. |
| `KillReward` | int | `get` |  | Money reward for a kill with this item. |
| `MovementSpeedFactor` | number | `get` |  | Movement speed multiplier while the item is equipped. |
| `MovementSpeedUncertaintyFactor` | number | `get` |  | How much additional inaccuracy each meter per second above WalkSpeed adds. |
| `MovementSpeedUncertaintyLimit` | number | `get` |  | Maximum additional inaccuracy caused by the current movement speed. |
| `MovementUncertaintyGain` | number | `get` |  | How much inaccuracy is added per meter traveled. |
| `MovementUncertaintyLimit` | number | `get` |  | Maximum inaccuracy that can be accumulated from movement. |
| `Name` | string | `get` |  | Item name. |
| `RotationSpeed` | number | `get` |  | Aim rotation speed toward the target in degrees per second. |
| `RotationUncertaintyGain` | number | `get` |  | How much inaccuracy is added for each degree of aim rotation. |
| `RotationUncertaintyLimit` | number | `get` |  | Maximum inaccuracy that can be accumulated from aim rotation. |
| `ThirdPersonAnimationId` | int | `get` |  | ID of the animation set for the character's third-person animator. 0 is pistol, 1 is rifle, 2 is knife, 3 is grenade, and 4 is device. |
| `UncertaintyBaseLoss` | number | `get` |  | Additional linear reduction of accumulated inaccuracy per second. |
| `UncertaintyHalfLife` | number | `get` |  | Time in seconds for accumulated aiming inaccuracy to decrease by half. |
| `UncertaintyLossStability` | number | `get` |  | How quickly inaccuracy continues to decrease while stunned, where 0 means it does not decrease and 1 means it decreases normally. |
| `name` | string | `get` |  | Unique item name used as its identifier. |

## ConfigItemFirearm

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AdsHasScreen` | bool | `get` |  | Whether the sight has a separate screen or lens, in which case modules should not display the HUD crosshair. |
| `AdsTime` | number | `get` |  | Time to enter and exit ADS in seconds. |
| `AdsZoomX` | number | `get` |  | Zoom multiplier when aiming down sights. |
| `CanAds` | bool | `get` |  | Whether this weapon can aim down sights. |
| `Damage` | number | `get` |  | Base close-range damage before body-part multipliers and distance damage falloff are applied. |
| `DamageDistant` | number | `get` |  | Long-range damage after full falloff. |
| `DamageFalloffBegin` | number | `get` |  | Distance at which the transition from close-range to long-range damage begins. |
| `DamageFalloffEnd` | number | `get` |  | Distance at which damage falloff is considered fully complete. |
| `Dispersion` | number | `get` |  | Base shot spread in degrees before accounting for uncertainty caused by camera rotation, movement, and other factors. |
| `FireRate` | number | `get` |  | Rate of fire in rounds per minute. |
| `FireSoundRadius` | number | `get` |  | Audible radius of a shot within which the specialist is detected even through walls. |
| `HeadDamageFactor` | number | `get` |  | Damage multiplier for head hits. |
| `HitStunTime` | number | `get` |  | Duration of stun from a head hit, in seconds. |
| `HitUncertaintyGain` | number | `get` |  | How much inaccuracy the victim receives when hit. |
| `HitUncertaintyLimit` | number | `get` |  | Maximum inaccuracy to which a hit can bring the victim. |
| `Item_cfg` | [ConfigItem](./GameConfig.md#configitem) | `get` |  | Base item from the Item table to which this firearm configuration is attached. |
| `LegsDamageFactor` | number | `get` |  | Damage multiplier for leg hits. |
| `MaxClipAmmo` | int | `get` |  | Magazine capacity. |
| `MaxHitDistance` | number | `get` |  | Maximum damage distance. |
| `PenetrationPower` | number | `get` |  | Penetration budget for a bullet passing through surfaces. |
| `ProjectilesPerShot` | int | `get` |  | Number of projectiles fired per shot, 1 for all weapons except shotguns. |
| `RagdollHitForce` | number | `get` |  | Impulse force applied to the ragdoll on a lethal hit. |
| `ReloadTime` | number | `get` |  | Reload duration in seconds. |
| `ShieldPenetration` | number | `get` |  | Percentage of damage that passes through a Kinetic Shield. |
| `ShotUncertaintyGain` | number | `get` |  | How much inaccuracy is added to the shooter per shot. |
| `ShotUncertaintyLimit` | number | `get` |  | Inaccuracy limit that can be accumulated from shooting. |
| `ShotUncertaintyMul` | number | `get` |  | Multiplier applied to already accumulated inaccuracy when shooting. |
| `StartAmmo` | int | `get` |  | Total ammunition supplied with the item, including the loaded magazine. |
| `StoppingPower` | number | `get` |  | Fraction of the target's speed removed on hit. |
| `name` | string | `get` |  | Name of the firearm configuration entry. Usually matches the item name. |

## ConfigItemMelee

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `FastAttackBackstabDamage` | number | `get` |  | Backstab damage of the fast attack (unused). |
| `FastAttackDamage` | number | `get` |  | Damage of the fast attack (unused). |
| `FastAttackDamageDelay` | number | `get` |  | Delay from the start of the fast attack until damage is dealt (unused). |
| `FastAttackDuration` | number | `get` |  | Duration of the fast attack in seconds (unused). |
| `FastAttackMaxHitDistance` | number | `get` |  | Maximum hit distance of the fast attack (unused). |
| `FastAttackStoppingPower` | number | `get` |  | How much the fast attack slows the target on hit (unused). |
| `FastAttackStunTime` | number | `get` |  | Duration of stun from the fast attack (unused). |
| `FastAttackUncertaintyGain` | number | `get` |  | How much inaccuracy the fast attack adds to the victim (unused). |
| `FastAttackUncertaintyLimit` | number | `get` |  | Maximum inaccuracy the fast attack can apply to the victim (unused). |
| `Item_cfg` | [ConfigItem](./GameConfig.md#configitem) | `get` |  | Base item from the Item table that this melee configuration is attached to. |
| `StrongAttackBackstabDamage` | number | `get` |  | Backstab damage of the strong attack. |
| `StrongAttackDamage` | number | `get` |  | Damage of the strong attack. |
| `StrongAttackDamageDelay` | number | `get` |  | Delay from the start of the strong attack to the damage moment. |
| `StrongAttackDuration` | number | `get` |  | Duration of the strong attack in seconds. |
| `StrongAttackMaxHitDistance` | number | `get` |  | Maximum hit distance of the strong attack. |
| `StrongAttackStoppingPower` | number | `get` |  | How much the strong attack slows the target on hit. |
| `StrongAttackStunTime` | number | `get` |  | Duration of stun from the strong attack. |
| `StrongAttackUncertaintyGain` | number | `get` |  | How much inaccuracy the strong attack adds to the victim. |
| `StrongAttackUncertaintyLimit` | number | `get` |  | Maximum inaccuracy the strong attack can apply to the victim. |
| `name` | string | `get` |  | Name of the melee configuration entry. Usually matches the item name. |

## ConfigItemThrowable

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `BounceLimit` | int | `get` |  | Maximum number of bounces before movement is forcibly damped. |
| `BouncinessFloor` | number | `get` |  | Vertical bounce coefficient when hitting the floor. |
| `BouncinessWall` | number | `get` |  | Bounce coefficient when hitting walls and other regular surfaces. |
| `Damage` | number | `get` |  | Close-range explosion damage. |
| `DamageDistant` | number | `get` |  | Explosion damage at the edge of the radius after full falloff. |
| `DamageFalloffBegin` | number | `get` |  | Distance at which explosion damage falloff begins. |
| `DamageFalloffEnd` | number | `get` |  | Distance at which explosion damage falloff is fully complete. |
| `ExplodeOnFire` | bool | `get` |  | Whether the item explodes when it touches fire. |
| `ExplodeOnFloor` | bool | `get` |  | Whether the item explodes when it collides with the floor or another nearly horizontal surface. |
| `ExplodeOnImpact` | bool | `get` |  | Whether the item explodes on any collision. |
| `ExplodeOnStop` | bool | `get` |  | Whether the item explodes when it has almost completely stopped. |
| `ExplosionBlindnessDuration` | number | `get` |  | Duration of blindness caused by the explosion, in seconds. |
| `ExplosionBlindnessRadius` | number | `get` |  | Radius within which the explosion applies blindness to affected specialists. Blinded specialists cannot receive information through their own senses and rely only on information shared by allies. |
| `ExplosionDelay` | number | `get` |  | Delay before automatic explosion after throwing, in seconds. |
| `ExplosionFireExtinguishRadius` | number | `get` |  | Radius in which the explosion extinguishes fire. |
| `ExplosionLifetime` | number | `get` |  | How many seconds the explosion object exists before being removed. |
| `ExplosionSoundRadius` | number | `get` |  | Audible radius of the explosion sound for the sound system. It does not affect information propagation, as explosion information is available at any distance. |
| `FastThrowDuration` | number | `get` |  | Duration of the regular throw animation after the grenade is thrown. |
| `FastThrowSpeed` | number | `get` |  | Initial speed of the regular throw, in meters per second. |
| `Gravity` | number | `get` |  | Downward acceleration applied to the projectile in flight, in meters per second squared. |
| `HitStunTime` | number | `get` |  | Duration of stun from the explosion in seconds. |
| `HitUncertaintyGain` | number | `get` |  | How much inaccuracy the explosion adds to the victim. |
| `HitUncertaintyLimit` | number | `get` |  | Maximum inaccuracy this explosion can apply to the victim. |
| `Item_cfg` | [ConfigItem](./GameConfig.md#configitem) | `get` |  | Base item from the Item table to which this throwable configuration is attached. |
| `MaxHitDistance` | number | `get` |  | Maximum radius within which the explosion deals damage. |
| `PrepareThrowDuration` | number | `get` |  | Preparation time before the grenade can be thrown. |
| `ShieldDecayHPPerSecond` | number | `get` |  | How much durability the shield loses each second. |
| `ShieldHP` | number | `get` |  | Shield or dome durability if this explosion creates a protective zone. |
| `ThrownColliderRadius` | number | `get` |  | Radius of the flying item's spherical collider. |
| `TrajectoryColor` | Color | `get` |  | Color of the grenade trajectory preview line. |
| `WeakThrowDuration` | number | `get` |  | Duration of the weak throw animation after the grenade is thrown. |
| `WeakThrowSpeed` | number | `get` |  | Initial speed of the weak throw, in meters per second. |
| `name` | string | `get` |  | Name of the throwable configuration entry. Usually matches the item name. |

## ItemConfigs

### Methods

#### GetConfigItemByName

```lua
ItemConfigs.GetConfigItemByName(name: string): ConfigItem
```

Returns the item configuration by name, or nil if the name is empty or the item is not found.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `name` | string |  |  |

**Returns:** [ConfigItem](./GameConfig.md#configitem)

#### GetConfigItemFirearmByName

```lua
ItemConfigs.GetConfigItemFirearmByName(name: string): ConfigItemFirearm
```

Returns the firearm configuration by name, or nil if the name is empty, the item is not found, or the item is not a firearm.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `name` | string |  |  |

**Returns:** [ConfigItemFirearm](./GameConfig.md#configitemfirearm)

#### GetConfigItemMeleeByName

```lua
ItemConfigs.GetConfigItemMeleeByName(name: string): ConfigItemMelee
```

Returns the melee weapon configuration by name, or nil if the name is empty, the item is not found, or the item is not a melee weapon.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `name` | string |  |  |

**Returns:** [ConfigItemMelee](./GameConfig.md#configitemmelee)

#### GetConfigItemThrowableByName

```lua
ItemConfigs.GetConfigItemThrowableByName(name: string): ConfigItemThrowable
```

Returns the throwable item configuration by name, or nil if the name is empty, the item is not found, or the item is not throwable.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `name` | string |  |  |

**Returns:** [ConfigItemThrowable](./GameConfig.md#configitemthrowable)

#### GetItemConfigById

```lua
ItemConfigs.GetItemConfigById(itemId: int): ConfigItem
```

Returns the item configuration by ID, or nil if the ID is invalid or the item is not found.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemId` | int |  |  |

**Returns:** [ConfigItem](./GameConfig.md#configitem)

#### GetItemIconById

```lua
ItemConfigs.GetItemIconById(itemId: int): Texture
```

Returns the item icon by ID, or nil if the ID is invalid, the item is not found, or it has no icon.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemId` | int |  |  |

**Returns:** [Texture](./Texture.md#texture)

#### GetItemNameById

```lua
ItemConfigs.GetItemNameById(itemId: int): string
```

Returns the item name by ID. Returns 'Unknown' if the item is not found.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemId` | int |  |  |

**Returns:** string

## WeaponPreview

[ClientOnly]

### Methods

#### GetWeaponPreview

```lua
WeaponPreview.GetWeaponPreview(weaponName: string): Texture
```

[ClientOnly] Returns the weapon preview texture by name, or nil if the preview renderer is unavailable or the preview could not be obtained.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `weaponName` | string |  |  |

**Returns:** [Texture](./Texture.md#texture)

#### RemoveFromCache

```lua
WeaponPreview.RemoveFromCache(weaponName: string)
```

[ClientOnly] Removes the preview for a specific weapon from the cache.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `weaponName` | string |  |  |

