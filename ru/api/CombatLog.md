# CombatLog

API боевого журнала: история полученного и нанесенного урона.

## Contents

- [CombatLog](#combatlog)
- [CombatLogEntry](#combatlogentry)

---

## CombatLog

[ClientOnly] Глобальный API боевого журнала.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Entries` | Array<[CombatLogEntry](./CombatLog.md#combatlogentry)> | `get` |  | [ClientOnly] Список записей боевого журнала локального игрока. |

## CombatLogEntry

[ClientOnly] Запись боевого журнала.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `BodyPart` | [EHitboxBodyPart](./Agent.md#ehitboxbodypart) | `get/set` |  | [ClientOnly] Часть тела, по которой пришелся удар. |
| `Damage` | number | `get/set` |  | [ClientOnly] Нанесенный урон. |
| `Distance` | number | `get/set` |  | [ClientOnly] Дистанция до цели в момент попадания. |
| `Instigator` | [Agent](./Agent.md#agent) | `get/set` |  | [ClientOnly] Атакующий агент. |
| `IsFatal` | bool | `get/set` |  | [ClientOnly] true, если попадание было смертельным. |
| `IsOutgoing` | bool | `get/set` |  | [ClientOnly] true, если событие относится к исходящему урону агента. |
| `ItemId` | int | `get/set` |  | [ClientOnly] ID предмета или оружия, которым было нанесено попадание. |
| `Tick` | int | `get/set` |  | [ClientOnly] Тик, в который произошло событие. |
| `Victim` | [Agent](./Agent.md#agent) | `get/set` |  | [ClientOnly] Пораженный агент. |
| `WasShieldDestroyed` | bool | `get/set` |  | [ClientOnly] true, если попадание сбило Kinetic Shield жертвы. |
| `WasStunned` | bool | `get/set` |  | [ClientOnly] true, если попадание наложило оглушение. |

