# Physics

API физики.

## Contents

- [Physics](#physics)
- [RaycastHit](#raycasthit)

---

## Physics

[ClientOnly] Глобальный API физики: лучевые проверки (raycast).

### Methods

#### Raycast

```lua
Physics.Raycast(origin: Vector3, direction: Vector3, maxDistance: number): RaycastHit
```

[ClientOnly] Лучевая проверка с заданной максимальной дистанцией.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `origin` | Vector3 |  |  |
| `direction` | Vector3 |  |  |
| `maxDistance` | number |  |  |

**Returns:** [RaycastHit](./Physics.md#raycasthit)

#### Raycast

```lua
Physics.Raycast(origin: Vector3, direction: Vector3): RaycastHit
```

[ClientOnly] Лучевая проверка без ограничения по дистанции.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `origin` | Vector3 |  |  |
| `direction` | Vector3 |  |  |

**Returns:** [RaycastHit](./Physics.md#raycasthit)

## RaycastHit

Результат raycast: факт попадания, точка и дистанция.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Distance` | number |  | Дистанция от начала луча до точки попадания. |
| `HasHit` | bool |  | true, если луч что-то задел. |
| `Point` | Vector3 |  | Точка попадания в мировых координатах. |

