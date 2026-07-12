# Structs

Basic structure API: Vector, Quaternion, Color, and Rect.

---

## Contents

- [Color](#color)
- [Quaternion](#quaternion)
- [Rect](#rect)
- [Vector2](#vector2)
- [Vector3](#vector3)

---

## Color

RGBA color format (red, green, blue, alpha). Used to define color and transparency in rendering and UI.

**Kind:** Class

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `a` | `number` |  | Alpha channel / transparency (value in the range 0..1) |
| `b` | `number` |  | Blue component (value in the range 0..1) |
| `g` | `number` |  | Green component (value in the range 0..1) |
| `r` | `number` |  | Red component (value in the range 0..1) |

### Constructors

#### Color

```lua
Color(r: number, g: number, b: number, a: number): Color
```

Creates a color from 4 RGBA components.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `r` | `number` |  | Red component |
| `g` | `number` |  | Green component |
| `b` | `number` |  | Blue component |
| `a` | `number` |  | Alpha channel (transparency) |

#### Color

```lua
Color(r: number, g: number, b: number): Color
```

Creates a color from 3 RGB components (alpha defaults to `1`).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `r` | `number` |  | Red component |
| `g` | `number` |  | Green component |
| `b` | `number` |  | Blue component |

## Quaternion

Quaternion used to represent rotations without Euler angle issues such as gimbal lock.

**Kind:** Class

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `eulerAngles` | `Vector3` |  | Euler angles in degrees (pitch=x, yaw=y, roll=z) |
| `identity` | `Quaternion` |  | Identity rotation `(0,0,0,1)` |
| `normalized` | `Quaternion` |  | Normalized copy of this quaternion |
| `w` | `number` |  | W component of the quaternion |
| `x` | `number` |  | X component of the quaternion |
| `y` | `number` |  | Y component of the quaternion |
| `z` | `number` |  | Z component of the quaternion |

### Constructors

#### Quaternion

```lua
Quaternion(x: number?, y: number?, z: number?, w: number?): Quaternion
```

Creates a new quaternion.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number?` | ✅ | X component |
| `y` | `number?` | ✅ | Y component |
| `z` | `number?` | ✅ | Z component |
| `w` | `number?` | ✅ | W component |

### Static Methods

#### Dot

```lua
Quaternion.Dot(a: Quaternion, b: Quaternion): number
```

Dot product of two quaternions.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Quaternion` |  | First quaternion |
| `b` | `Quaternion` |  | Second quaternion |

**Returns:** `number`

#### Normalize

```lua
Quaternion.Normalize(q: Quaternion): Quaternion
```

Normalizes a quaternion and returns a new copy.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `q` | `Quaternion` |  | Source quaternion |

**Returns:** `Quaternion`

#### Inverse

```lua
Quaternion.Inverse(rotation: Quaternion): Quaternion
```

Returns the inverse quaternion that cancels out `rotation`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `rotation` | `Quaternion` |  | Source rotation |

**Returns:** `Quaternion`

#### Angle

```lua
Quaternion.Angle(a: Quaternion, b: Quaternion): number
```

Angle in degrees between two rotations.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Quaternion` |  | First rotation |
| `b` | `Quaternion` |  | Second rotation |

**Returns:** `number`

#### AngleAxis

```lua
Quaternion.AngleAxis(angle: number, axis: Vector3|table): Quaternion
```

Creates a quaternion from an angle in degrees and a rotation axis.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `angle` | `number` |  | Angle in degrees |
| `axis` | `Vector3|table` |  | Rotation axis |

**Returns:** `Quaternion`

#### Euler

```lua
Quaternion.Euler(x: number, y: number, z: number): Quaternion
```

Creates a quaternion from Euler angles in degrees.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | Pitch in degrees |
| `y` | `number` |  | Yaw in degrees |
| `z` | `number` |  | Roll in degrees |

**Returns:** `Quaternion`

#### FromToRotation

```lua
Quaternion.FromToRotation(fromDir: Vector3|table, toDir: Vector3|table): Quaternion
```

Rotates direction `fromDir` into `toDir`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `fromDir` | `Vector3|table` |  | Source direction |
| `toDir` | `Vector3|table` |  | Target direction |

**Returns:** `Quaternion`

#### Lerp

```lua
Quaternion.Lerp(a: Quaternion, b: Quaternion, t: number): Quaternion
```

Linear interpolation between `a` and `b` with normalization.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Quaternion` |  | Starting rotation |
| `b` | `Quaternion` |  | Ending rotation |
| `t` | `number` |  | Interpolation factor `(0..1)` |

**Returns:** `Quaternion`

#### LerpUnclamped

```lua
Quaternion.LerpUnclamped(a: Quaternion, b: Quaternion, t: number): Quaternion
```

Same as `Lerp`, but `t` is not clamped to `0..1`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Quaternion` |  | Starting rotation |
| `b` | `Quaternion` |  | Ending rotation |
| `t` | `number` |  | Interpolation factor |

**Returns:** `Quaternion`

#### Slerp

```lua
Quaternion.Slerp(a: Quaternion, b: Quaternion, t: number): Quaternion
```

Spherical interpolation between `a` and `b`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Quaternion` |  | Starting rotation |
| `b` | `Quaternion` |  | Ending rotation |
| `t` | `number` |  | Interpolation factor `(0..1)` |

**Returns:** `Quaternion`

#### SlerpUnclamped

```lua
Quaternion.SlerpUnclamped(a: Quaternion, b: Quaternion, t: number): Quaternion
```

Spherical interpolation without clamping `t`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Quaternion` |  | Starting rotation |
| `b` | `Quaternion` |  | Ending rotation |
| `t` | `number` |  | Interpolation factor |

**Returns:** `Quaternion`

#### LookRotation

```lua
Quaternion.LookRotation(forward: Vector3|table, up: Vector3|table = ...): Quaternion
```

Builds a quaternion that points forward along the given vector.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `forward` | `Vector3|table` |  | Forward direction |
| `up` | `Vector3|table` | ✅ | Up vector |

**Returns:** `Quaternion`

#### RotateTowards

```lua
Quaternion.RotateTowards(from: Quaternion, to: Quaternion, maxDegreesDelta: number): Quaternion
```

Smoothly rotates `from` toward `to`, but by no more than `maxDegreesDelta` degrees per step.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `from` | `Quaternion` |  | Source rotation |
| `to` | `Quaternion` |  | Target rotation |
| `maxDegreesDelta` | `number` |  | Maximum step in degrees |

**Returns:** `Quaternion`

#### ToAngleAxis

```lua
Quaternion.ToAngleAxis(q: Quaternion): number, Vector3
```

Converts a quaternion to angle-axis representation.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `q` | `Quaternion` |  | Source quaternion |

**Returns:** `number`, `Vector3`

#### identity

```lua
Quaternion.identity(): Quaternion
```

Returns the identity quaternion.

**Returns:** `Quaternion`

### Instance Methods

#### Normalize

```lua
Quaternion:Normalize(): Quaternion
```

Normalizes the quaternion in place and returns `self`.

**Returns:** `Quaternion`

#### ToString

```lua
Quaternion:ToString(): string
```

Returns a string representation of the quaternion.

**Returns:** `string`

#### ToAngleAxis

```lua
Quaternion:ToAngleAxis(): number, Vector3
```

Angle-axis decomposition as an instance method.

**Returns:** `number`, `Vector3`

## Rect

2D rectangle commonly used for UI, drawing areas, and hitboxes.

**Kind:** Class

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Zero` | `Rect` |  | Rectangle `Rect(0, 0, 0, 0)` |
| `center` | `Vector2` |  | Rectangle center |
| `height` | `number` |  | Rectangle height |
| `width` | `number` |  | Rectangle width |
| `x` | `number` |  | X coordinate |
| `xMax` | `number` |  | Maximum X coordinate |
| `xMin` | `number` |  | Minimum X coordinate |
| `y` | `number` |  | Y coordinate |
| `yMax` | `number` |  | Maximum Y coordinate |
| `yMin` | `number` |  | Minimum Y coordinate |

### Constructors

#### Rect

```lua
Rect(x: number, y: number, width: number, height: number): Rect
```

Creates a rectangle from position and size.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | X coordinate |
| `y` | `number` |  | Y coordinate |
| `width` | `number` |  | Width |
| `height` | `number` |  | Height |

## Vector2

2D vector used for coordinates, directions, and offsets in a plane.

**Kind:** Class

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `left` | `Vector2` |  | Left vector `Vector2(-1, 0)` |
| `magnitude` | `number` |  | Vector length |
| `normalized` | `Vector2` |  | Normalized copy of the vector |
| `one` | `Vector2` |  | All-ones vector `Vector2(1, 1)` |
| `right` | `Vector2` |  | Right vector `Vector2(1, 0)` |
| `x` | `number` |  | X component |
| `y` | `number` |  | Y component |
| `zero` | `Vector2` |  | Zero vector `Vector2(0, 0)` |

### Constructors

#### Vector2

```lua
Vector2(x: number, y: number): Vector2
```

Creates a `Vector2`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | X component |
| `y` | `number` |  | Y component |

### Methods

#### Magnitude

```lua
Vector2.Magnitude(vector: Vector2): number
```

Returns the vector length.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `vector` | `Vector2` |  | Vector |

**Returns:** `number`

#### Normalize

```lua
Vector2.Normalize(value: Vector2): Vector2
```

Normalizes a vector and returns a new vector of length `1`, when possible.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `value` | `Vector2` |  | Source vector |

**Returns:** `Vector2`

#### Distance

```lua
Vector2.Distance(a: Vector2, b: Vector2): number
```

Distance between two points.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Vector2` |  | First point |
| `b` | `Vector2` |  | Second point |

**Returns:** `number`

## Vector3

3D vector used for coordinates, directions, velocities, and other spatial values.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `forward` | `Vector3` |  | Forward vector `Vector3(0, 0, 1)` |
| `magnitude` | `number` |  | Vector length |
| `normalized` | `Vector3` |  | Normalized copy of the vector |
| `sqrMagnitude` | `number` |  | Squared length |
| `up` | `Vector3` |  | Up vector `Vector3(0, 1, 0)` |
| `x` | `number` |  | X component |
| `y` | `number` |  | Y component |
| `z` | `number` |  | Z component |
| `zero` | `Vector3` |  | Zero vector `Vector3(0, 0, 0)` |

### Constructors

#### Vector3

```lua
Vector3(x: number, y: number, z: number): Vector3
```

Creates a `Vector3`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | X component |
| `y` | `number` |  | Y component |
| `z` | `number` |  | Z component |

### Static Methods

#### Magnitude

```lua
Vector3.Magnitude(vector: Vector3): number
```

Returns the vector length.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `vector` | `Vector3` |  | Vector |

**Returns:** `number`

#### Normalize

```lua
Vector3.Normalize(value: Vector3): Vector3
```

Normalizes a vector and returns a new copy.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `value` | `Vector3` |  | Source vector |

**Returns:** `Vector3`

#### Angle

```lua
Vector3.Angle(from: Vector3, to: Vector3): number
```

Returns the angle in degrees between two directions.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `from` | `Vector3` |  | First direction |
| `to` | `Vector3` |  | Second direction |

**Returns:** `number`

#### Dot

```lua
Vector3.Dot(lhs: Vector3, rhs: Vector3): number
```

Dot product of two vectors.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `lhs` | `Vector3` |  | First vector |
| `rhs` | `Vector3` |  | Second vector |

**Returns:** `number`

#### FromYawPitchToDirection

```lua
Vector3.FromYawPitchToDirection(yaw: number, pitch: number): Vector3
```

Converts yaw/pitch into a unit direction.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `yaw` | `number` |  | Rotation around Y |
| `pitch` | `number` |  | Up/down tilt |

**Returns:** `Vector3`

#### Distance

```lua
Vector3.Distance(a: Vector3, b: Vector3): number
```

Distance between two points.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Vector3` |  | First point |
| `b` | `Vector3` |  | Second point |

**Returns:** `number`

#### Cross

```lua
Vector3.Cross(lhs: Vector3, rhs: Vector3): Vector3
```

Cross product of two vectors.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `lhs` | `Vector3` |  | First vector |
| `rhs` | `Vector3` |  | Second vector |

**Returns:** `Vector3`

### Instance Methods

#### OnlyXZ

```lua
Vector3:OnlyXZ(): Vector3
```

Returns a copy of the vector projected onto the XZ plane, where `y = 0`.

**Returns:** `Vector3`

#### ToString

```lua
Vector3:ToString(): string
```

Returns a string representation of the vector.

**Returns:** `string`

