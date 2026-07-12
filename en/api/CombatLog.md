# CombatLog

Combat log API: history of damage received and dealt.

## Contents

- [CombatLog](#combatlog)
- [CombatLogEntry](#combatlogentry)

---

## CombatLog

[ClientOnly] Global combat log API.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Entries` | Array<[CombatLogEntry](./CombatLog.md#combatlogentry)> | `get` |  | [ClientOnly] List of the local player's combat log entries. |

## CombatLogEntry

[ClientOnly] A combat log entry.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `BodyPart` | [EHitboxBodyPart](./Agent.md#ehitboxbodypart) | `get/set` |  | [ClientOnly] Body part that was hit. |
| `Damage` | number | `get/set` |  | [ClientOnly] Damage dealt. |
| `Distance` | number | `get/set` |  | [ClientOnly] Distance to the target at the moment of hit. |
| `Instigator` | [Agent](./Agent.md#agent) | `get/set` |  | [ClientOnly] Instigating agent. |
| `IsFatal` | bool | `get/set` |  | [ClientOnly] true if the hit was fatal. |
| `IsOutgoing` | bool | `get/set` |  | [ClientOnly] true if the event refers to the agent's outgoing damage. |
| `ItemId` | int | `get/set` |  | [ClientOnly] ID of the item or weapon that caused the hit. |
| `Tick` | int | `get/set` |  | [ClientOnly] Tick on which the event occurred. |
| `Victim` | [Agent](./Agent.md#agent) | `get/set` |  | [ClientOnly] Victim agent. |
| `WasShieldDestroyed` | bool | `get/set` |  | [ClientOnly] true if the hit destroyed the victim's Kinetic Shield. |
| `WasStunned` | bool | `get/set` |  | [ClientOnly] true if the hit applied stun. |

