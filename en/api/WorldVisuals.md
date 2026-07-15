# WorldVisuals

API for 3D visualization in the game world: lines and areas of effect.

## Contents

- [LineRenderer](#linerenderer)
- [SurfaceOverlay](#surfaceoverlay)
- [WorldObject](#worldobject)
- [WorldVisuals](#worldvisuals)

---

## LineRenderer

[ClientOnly] Line in the world for visualizing trajectories and directions.

**Base:** [WorldObject](./WorldVisuals.md#worldobject)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `PositionCount` | int | `get/set` |  | [ClientOnly] Number of line points. Maximum 2048 points. |


### Methods

#### SetColor

```lua
LineRenderer:SetColor(color: Color)
```

[ClientOnly] Sets the line color.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `color` | Color |  |  |

#### SetDistanceWidth

```lua
LineRenderer:SetDistanceWidth(nearWidth: number, farWidth: number, nearDistance: number, farDistance: number)
```

[ClientOnly] Sets line width at the near and far distance. Width changes linearly between those distances.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `nearWidth` | number |  |  |
| `farWidth` | number |  |  |
| `nearDistance` | number |  |  |
| `farDistance` | number |  |  |

#### SetOccludedVisibility

```lua
LineRenderer:SetOccludedVisibility(brightness: number, transparency: number)
```

[ClientOnly] Sets brightness and transparency for line segments occluded by geometry. Values are clamped to 0..1.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `brightness` | number |  |  |
| `transparency` | number |  |  |

#### SetPatternEnabled

```lua
LineRenderer:SetPatternEnabled(enabled: bool)
```

[ClientOnly] Enables or disables pattern usage for the line.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `enabled` | bool |  |  |

#### SetPatternRepeat

```lua
LineRenderer:SetPatternRepeat(repeatCount: number)
```

[ClientOnly] Sets the pattern repeat frequency along the line.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `repeatCount` | number |  |  |

#### SetPatternTexture

```lua
LineRenderer:SetPatternTexture(texture: Texture)
```

[ClientOnly] Sets the line pattern texture.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  |  |

#### SetPosition

```lua
LineRenderer:SetPosition(index: int, position: Vector3)
```

[ClientOnly] Sets the position of a point by index, where indexing starts at 0. The index must be less than 2048.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `index` | int |  |  |
| `position` | Vector3 |  |  |

#### SetPositionCount

```lua
LineRenderer:SetPositionCount(count: int)
```

[ClientOnly] Sets the number of line points. Maximum 2048 points.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `count` | int |  |  |

#### SetPositions

```lua
LineRenderer:SetPositions(table: LuaTable)
```

[ClientOnly] Sets point positions from table. Maximum 2048 points.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `table` | LuaTable |  |  |

#### SetPositions

```lua
LineRenderer:SetPositions(points: Array<Vector3>)
```

[ClientOnly] Sets point positions from an array. Maximum 2048 points.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `points` | Array<Vector3> |  |  |

#### SetProgress

```lua
LineRenderer:SetProgress(progress: number)
```

[ClientOnly] Sets the length, in world units, of the already-traversed part of the line for materials with the _Progress parameter.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `progress` | number |  |  |

#### SetWidth

```lua
LineRenderer:SetWidth(width: number)
```

[ClientOnly] Sets fixed line width by using the same near and far width.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `width` | number |  |  |

## SurfaceOverlay

[ClientOnly] Spherical affected-area visualization projected onto visible world surfaces.

**Base:** [WorldObject](./WorldVisuals.md#worldobject)

### Methods

#### SetColor

```lua
SurfaceOverlay:SetColor(color: Color)
```

[ClientOnly] Sets the affected area color, including alpha.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `color` | Color |  |  |

#### SetFillBase

```lua
SurfaceOverlay:SetFillBase(fillBase: number)
```

[ClientOnly] Sets the base fill density for the affected area.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `fillBase` | number |  |  |

#### SetOcclusionEnabled

```lua
SurfaceOverlay:SetOcclusionEnabled(on: bool)
```

[ClientOnly] Enables or disables the affected area occlusion mask. Behind cover, the pattern and fill are not drawn.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `on` | bool |  |  |

#### SetPosition

```lua
SurfaceOverlay:SetPosition(position: Vector3)
```

[ClientOnly] Sets the affected area center in the world.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `position` | Vector3 |  |  |

#### SetSize

```lua
SurfaceOverlay:SetSize(size: Vector3)
```

[ClientOnly] Sets the affected area size. When the size is volumetric, the visualization becomes spherical.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `size` | Vector3 |  |  |

#### SetVisible

```lua
SurfaceOverlay:SetVisible(on: bool)
```

[ClientOnly] Enables or disables affected area rendering.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `on` | bool |  |  |

## WorldObject

[ClientOnly] Base world object.

## WorldVisuals

[ClientOnly] Global API for spawning world objects.

### Methods

#### CreateLineRenderer

```lua
WorldVisuals:CreateLineRenderer(): LineRenderer
```

[ClientOnly] Creates and returns an object for drawing a line. Returns nil if the module has reached the spawner object limit.

**Returns:** [LineRenderer](./WorldVisuals.md#linerenderer)

#### CreateSurfaceOverlay

```lua
WorldVisuals:CreateSurfaceOverlay(): SurfaceOverlay
```

[ClientOnly] Creates and returns an object for projecting an overlay onto surfaces. Returns nil if the module has reached the spawner object limit.

**Returns:** [SurfaceOverlay](./WorldVisuals.md#surfaceoverlay)

#### RemoveObject

```lua
WorldVisuals:RemoveObject(toRemove: any)
```

[ClientOnly] Removes a previously created spawner object.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `toRemove` | any |  |  |

