# Camera

Camera API. Allows creating additional custom cameras.

## Contents

- [Camera](#camera)
- [Cameras](#cameras)

---

## Camera

[ClientOnly] Camera object.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Aspect` | number | `get/set` |  | [ClientOnly] Aspect ratio. |
| `FarClipPlane` | number | `get/set` |  | [ClientOnly] Far clipping plane. |
| `Fov` | number | `get/set` |  | [ClientOnly] Field of view (FOV). |
| `IsMainCamera` | bool | `get/set` |  | [ClientOnly] true if this is the scene's main camera. |
| `IsOrthographic` | bool | `get/set` |  | [ClientOnly] Orthographic projection mode. |
| `NearClipPlane` | number | `get/set` |  | [ClientOnly] Near clipping plane. |
| `OrthographicSize` | number | `get/set` |  | [ClientOnly] Orthographic camera size. |
| `OutputTexture` | [Texture](./Texture.md#texture) | `get/set` |  | [ClientOnly] Texture with the render result. Returns nil for the main camera. |
| `Position` | Vector3 | `get/set` |  | [ClientOnly] Camera position in the world. |
| `Rotation` | Quaternion | `get/set` |  | [ClientOnly] Camera rotation in the world. |


### Methods

#### SetActive

```lua
Camera:SetActive(value: bool)
```

[ClientOnly] Enables or disables the custom camera.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `value` | bool |  |  |

#### SetRenderSize

```lua
Camera:SetRenderSize(width: int, height: int)
```

[ClientOnly] Changes the render size for the custom camera.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `width` | int |  |  |
| `height` | int |  |  |

#### WorldToViewportPoint

```lua
Camera:WorldToViewportPoint(worldPos: Vector3): Vector3
```

Converts a world position to viewport coordinates (0..1). The lower-left viewport corner is (0,0); the upper-right corner is (1,1). The Z value is the distance to the camera in meters.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `worldPos` | Vector3 |  |  |

**Returns:** Vector3

## Cameras

[ClientOnly] Global API for working with cameras.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Main` | [Camera](./Camera.md#camera) | `get` |  | [ClientOnly] Main scene camera (read-only). |


### Methods

#### CreateCamera

```lua
Cameras:CreateCamera(): Camera
```

[ClientOnly] Creates a new camera and returns its object. Returns nil if the module has reached the camera limit.

**Returns:** [Camera](./Camera.md#camera)

#### RemoveCamera

```lua
Cameras:RemoveCamera(camera: Camera)
```

[ClientOnly] Removes the specified camera and its object from the scene.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `camera` | [Camera](./Camera.md#camera) |  |  |

