# Physics

Physics API.

## Contents

- [Physics](#physics)
- [RaycastHit](#raycasthit)

---

## Physics

[ClientOnly] Global physics API: raycast checks.

### Methods

#### Raycast

```lua
Physics.Raycast(origin: Vector3, direction: Vector3, maxDistance: number): RaycastHit
```

[ClientOnly] Raycast with a specified maximum distance.

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

[ClientOnly] Raycast without a distance limit.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `origin` | Vector3 |  |  |
| `direction` | Vector3 |  |  |

**Returns:** [RaycastHit](./Physics.md#raycasthit)

## RaycastHit

Raycast result: hit state, point, and distance.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Distance` | number |  | Distance from the ray origin to the hit point. |
| `HasHit` | bool |  | true if the ray hit something. |
| `Point` | Vector3 |  | Hit point in world coordinates. |

