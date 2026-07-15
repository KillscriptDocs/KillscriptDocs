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

Color in RGBA format (red, green, blue, alpha).
Used to set color/transparency in rendering and UI.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `r` | `number` |  | Red component (number in the 0..1 range) |
| `g` | `number` |  | Green component (number in the 0..1 range) |
| `b` | `number` |  | Blue component (number in the 0..1 range) |
| `a` | `number` |  | Alpha channel / transparency (number in the 0..1 range) |

### Constructors

#### new

```lua
Color.new(r: number, g: number, b: number, a: number): Color
```

Creates a color from 4 RGBA components.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `r` | `number` |  | Red component |
| `g` | `number` |  | Green component |
| `b` | `number` |  | Blue component |
| `a` | `number` |  | Alpha channel (transparency) |

**Returns:** `Color`

#### new

```lua
Color.new(r: number, g: number, b: number): Color
```

Creates a color from 3 RGB components (alpha defaults to 1).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `r` | `number` |  | Red component |
| `g` | `number` |  | Green component |
| `b` | `number` |  | Blue component |

**Returns:** `Color`

## Quaternion

Quaternion: a representation of rotation in 3D space.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `x` | `number` |  | X component of the quaternion |
| `y` | `number` |  | Y component of the quaternion |
| `z` | `number` |  | Z component of the quaternion |
| `w` | `number` |  | W component of the quaternion |
| `normalized` | `Quaternion` |  | Normalized copy of this quaternion |
| `eulerAngles` | `Vector3` |  | Euler angles in degrees (pitch=x, yaw=y, roll=z) |

### Constructors

#### new

```lua
Quaternion.new(x: number, y: number, z: number, w: number): Quaternion
```

Creates a new quaternion.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | X component |
| `y` | `number` |  | Y component |
| `z` | `number` |  | Z component |
| `w` | `number` |  | W component |

**Returns:** `Quaternion`

### Methods

#### euler

```lua
Quaternion.euler(x: number, y: number, z: number): Quaternion
```

Creates a quaternion from Euler angles (in degrees).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | Pitch in degrees |
| `y` | `number` |  | Yaw in degrees |
| `z` | `number` |  | Roll in degrees |

**Returns:** `Quaternion`

#### lookRotation

```lua
Quaternion.lookRotation(forward: Vector3|table, up?: Vector3|table): Quaternion
```

Creates a quaternion that points "forward" along the given vector.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `forward` | `Vector3|table` |  | Forward direction |
| `up` | `Vector3|table` | yes | Up vector |

**Returns:** `Quaternion`

#### angleAxis

```lua
Quaternion.angleAxis(angle: number, axis: Vector3|table): Quaternion
```

Creates a quaternion from an angle (in degrees) and a rotation axis.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `angle` | `number` |  | Angle in degrees |
| `axis` | `Vector3|table` |  | Rotation axis (Vector3 or table {x, y, z}) |

**Returns:** `Quaternion`

#### fromToRotation

```lua
Quaternion.fromToRotation(fromDir: Vector3|table, toDir: Vector3|table): Quaternion
```

Rotates direction `fromDir` into `toDir` and returns the quaternion of that rotation.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `fromDir` | `Vector3|table` |  | Source direction |
| `toDir` | `Vector3|table` |  | Target direction |

**Returns:** `Quaternion`

#### Dot

```lua
Quaternion:Dot(b: Quaternion): number
```

Dot product of two quaternions.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Quaternion` |  | Second quaternion |

**Returns:** `number`

#### Normalize

```lua
Quaternion:Normalize(): Quaternion
```

Normalizes the quaternion in place (modifies the object) and returns self.

**Returns:** `Quaternion`

#### Inverse

```lua
Quaternion:Inverse(): Quaternion
```

Returns the inverse quaternion: the rotation that cancels self.

**Returns:** `Quaternion`

#### Angle

```lua
Quaternion:Angle(b: Quaternion): number
```

Angle (in degrees) between self and another rotation.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Quaternion` |  | Second rotation |

**Returns:** `number`

#### Lerp

```lua
Quaternion:Lerp(b: Quaternion, t: number): Quaternion
```

Linear interpolation between self and b with normalization (t in the 0..1 range).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Quaternion` |  | End rotation |
| `t` | `number` |  | Interpolation parameter (0..1) |

**Returns:** `Quaternion`

#### LerpUnclamped

```lua
Quaternion:LerpUnclamped(b: Quaternion, t: number): Quaternion
```

Same as Lerp, but t is not limited to the 0..1 range.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Quaternion` |  | End rotation |
| `t` | `number` |  | Interpolation parameter (may be outside 0..1) |

**Returns:** `Quaternion`

#### Slerp

```lua
Quaternion:Slerp(b: Quaternion, t: number): Quaternion
```

Spherical interpolation between self and b (Slerp), t in the 0..1 range.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Quaternion` |  | End rotation |
| `t` | `number` |  | Interpolation parameter (0..1) |

**Returns:** `Quaternion`

#### SlerpUnclamped

```lua
Quaternion:SlerpUnclamped(b: Quaternion, t: number): Quaternion
```

Slerp without clamping t.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Quaternion` |  | End rotation |
| `t` | `number` |  | Interpolation parameter (may be outside 0..1) |

**Returns:** `Quaternion`

#### RotateTowards

```lua
Quaternion:RotateTowards(to: Quaternion, maxDegreesDelta: number): Quaternion
```

Smoothly rotates self toward to, but by no more than maxDegreesDelta (in degrees) per step.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `to` | `Quaternion` |  | Target rotation |
| `maxDegreesDelta` | `number` |  | Maximum rotation step in degrees |

**Returns:** `Quaternion`

#### ToAngleAxis

```lua
Quaternion:ToAngleAxis(): number, Vector3
```

Decomposes the quaternion into angle and axis.

**Returns:** `number`, `Vector3`

## Rect

Rectangle in 2D (position and size).

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `x` | `number` |  | X coordinate |
| `y` | `number` |  | Y coordinate |
| `width` | `number` |  | Rectangle width |
| `height` | `number` |  | Rectangle height |
| `xMin` | `number` |  | Minimum X coordinate |
| `yMin` | `number` |  | Minimum Y coordinate |
| `xMax` | `number` |  | Maximum X coordinate |
| `yMax` | `number` |  | Maximum Y coordinate |
| `center` | `Vector2` |  | Rectangle center |

### Constructors

#### new

```lua
Rect.new(x: number, y: number, width: number, height: number): Rect
```

Creates a rectangle from position and size.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | X coordinate |
| `y` | `number` |  | Y coordinate |
| `width` | `number` |  | Width |
| `height` | `number` |  | Height |

**Returns:** `Rect`

## Vector2

2D vector (x, y).

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `x` | `number` |  | X component |
| `y` | `number` |  | Y component |
| `zero` | `Vector2` |  | Zero vector Vector2.new(0, 0) |
| `one` | `Vector2` |  | All-ones vector Vector2.new(1, 1) |
| `normalized` | `Vector2` |  | Normalized copy of the vector |
| `magnitude` | `number` |  | Vector length (magnitude) |
| `sqrMagnitude` | `number` |  | Squared length |

### Constructors

#### new

```lua
Vector2.new(x: number, y: number): Vector2
```

Creates a Vector2.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | X component |
| `y` | `number` |  | Y component |

**Returns:** `Vector2`

### Methods

#### Magnitude

```lua
Vector2:Magnitude(): number
```

Returns the vector length (magnitude).

**Returns:** `number`

#### Normalize

```lua
Vector2:Normalize(): Vector2
```

Normalizes the vector and returns a new vector of length 1 (when possible).

**Returns:** `Vector2`

#### Dot

```lua
Vector2:Dot(rhs: Vector2): number
```

Dot product of two vectors.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `rhs` | `Vector2` |  | Second vector |

**Returns:** `number`

#### Angle

```lua
Vector2:Angle(to: Vector2): number
```

Returns the angle in degrees between self and to.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `to` | `Vector2` |  | Second direction |

**Returns:** `number`

#### Distance

```lua
Vector2:Distance(b: Vector2): number
```

Distance between self and b.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Vector2` |  | Second point |

**Returns:** `number`

## Vector3

3D vector (x, y, z).

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `x` | `number` |  | X component |
| `y` | `number` |  | Y component |
| `z` | `number` |  | Z component |
| `back` | `Vector3` |  | Back vector Vector3.new(0, 0, -1) |
| `down` | `Vector3` |  | Down vector Vector3.new(0, -1, 0) |
| `forward` | `Vector3` |  | Forward vector Vector3.new(0, 0, 1) |
| `left` | `Vector3` |  | Left vector Vector3.new(-1, 0, 0) |
| `negativeInfinity` | `Vector3` |  | Vector3.new(-inf, -inf, -inf) |
| `zero` | `Vector3` |  | Zero vector Vector3.new(0, 0, 0) |
| `one` | `Vector3` |  | All-ones vector Vector3.new(1, 1, 1) |
| `positiveInfinity` | `Vector3` |  | Vector3.new(inf, inf, inf) |
| `right` | `Vector3` |  | Right vector Vector3.new(1, 0, 0) |
| `up` | `Vector3` |  | Up vector Vector3.new(0, 1, 0) |
| `normalized` | `Vector3` |  | Normalized copy of the vector |
| `sqrMagnitude` | `number` |  | Squared length |
| `magnitude` | `number` |  | Vector length (magnitude) |

### Operators

| Signature | Comment |
|---|---|
| `add(Vector3):Vector3` | Vector addition |
| `sub(Vector3):Vector3` | Vector subtraction |

### Constructors

#### new

```lua
Vector3.new(x: number, y: number, z: number): Vector3
```

Creates a Vector3.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | X component |
| `y` | `number` |  | Y component |
| `z` | `number` |  | Z component |

**Returns:** `Vector3`

### Methods

#### fromYawPitchToDirection

```lua
Vector3.fromYawPitchToDirection(yaw: number, pitch: number): Vector3
```

Converts yaw/pitch to a unit direction.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `yaw` | `number` |  | Rotation around Y (azimuth) |
| `pitch` | `number` |  | Up/down tilt |

**Returns:** `Vector3`

#### Magnitude

```lua
Vector3:Magnitude(): number
```

Returns the vector length (magnitude).

**Returns:** `number`

#### Normalize

```lua
Vector3:Normalize(): Vector3
```

Normalizes the vector and returns a new vector of length 1 (when possible).

**Returns:** `Vector3`

#### OnlyXZ

```lua
Vector3:OnlyXZ(): Vector3
```

Returns a copy of the vector only in the XZ plane (the Y component is set to zero).

**Returns:** `Vector3`

#### Angle

```lua
Vector3:Angle(to: Vector3): number
```

Returns the angle (in degrees) between self and to.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `to` | `Vector3` |  | Second direction |

**Returns:** `number`

#### Dot

```lua
Vector3:Dot(rhs: Vector3): number
```

Dot product of two vectors.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `rhs` | `Vector3` |  | Second vector |

**Returns:** `number`

#### Distance

```lua
Vector3:Distance(b: Vector3): number
```

Distance between self and b.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Vector3` |  | Second point |

**Returns:** `number`

#### Cross

```lua
Vector3:Cross(rhs: Vector3): Vector3
```

Cross product of two vectors.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `rhs` | `Vector3` |  | Second vector |

**Returns:** `Vector3`
