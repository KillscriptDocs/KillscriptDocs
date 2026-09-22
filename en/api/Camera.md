# Camera

Camera API. Allows creating additional custom cameras.

## Contents

- [Camera](#camera)
- [Cameras](#cameras)
- [CustomCamera](#customcamera)
- [MainCamera](#maincamera)

---

## Camera

[ClientOnly] Camera object.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Aspect` | number | `get/set` |  | [ClientOnly] Aspect ratio. |
| `FarClipPlane` | number | `get/set` |  | [ClientOnly] Far clipping plane. |
| `Fov` | number | `get/set` |  | [ClientOnly] Field of view (FOV). |
| `IsActive` | bool | `get` |  | [ClientOnly] true if the camera object is active. |
| `IsMainCamera` | bool | `get` |  | [ClientOnly] true if this is the scene's main camera. |
| `IsOrthographic` | bool | `get/set` |  | [ClientOnly] Orthographic projection mode. |
| `NearClipPlane` | number | `get/set` |  | [ClientOnly] Near clipping plane. |
| `OrthographicSize` | number | `get/set` |  | [ClientOnly] Orthographic camera size. |
| `Position` | Vector3 | `get/set` |  | [ClientOnly] Camera position in the world. |
| `Rotation` | Quaternion | `get/set` |  | [ClientOnly] Camera rotation in the world. |


### Methods

#### AttachToAgentFirstPerson

```lua
Camera:AttachToAgentFirstPerson(agent: Agent): bool
```

[ClientOnly] Attaches the camera to the agent's first-person view, displaying the agent's hands and held item while hiding their third-person model. For the main camera, this method is available only after UnlockFirstPerson. Returns true if the attachment succeeds.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  | The agent whose first-person view the camera will display. |

**Returns:** bool

#### AttachToEntity

```lua
Camera:AttachToEntity(entity: Entity, localPosition: Vector3, localRotation: Quaternion, followRotation: bool, avoidObstacles: bool): bool
```

[ClientOnly] Attaches the camera to an entity at the specified local position and rotation. When attaching to an agent, local coordinates are relative to the agent's first-person camera anchor. For the main camera, this method is available only after UnlockFirstPerson. Returns true if the attachment succeeds.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `entity` | [Entity](./Entity.md#entity) |  | The entity to which the camera is attached. |
| `localPosition` | Vector3 |  | The camera position in the entity's local coordinates. |
| `localRotation` | Quaternion |  | The camera rotation in the entity's local coordinates. |
| `followRotation` | bool |  | When true, the camera inherits the entity's rotation and its local position offset rotates with the entity. When false, the camera rotation and world-space position offset are captured on attachment. |
| `avoidObstacles` | bool |  | When true, checks before setting the position to prevent the camera from entering geometry. |

**Returns:** bool

#### Detach

```lua
Camera:Detach()
```

[ClientOnly] Detaches the camera while preserving its current position and rotation.

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
| `Main` | [MainCamera](./Camera.md#maincamera) | `get` |  | [ClientOnly] Main scene camera (read-only). |


### Methods

#### CreateCamera

```lua
Cameras:CreateCamera(): CustomCamera
```

[ClientOnly] Creates a new camera and returns its object. Returns nil if the module has reached the camera limit.

**Returns:** [CustomCamera](./Camera.md#customcamera)

#### RemoveCamera

```lua
Cameras:RemoveCamera(camera: CustomCamera)
```

[ClientOnly] Removes the specified camera and its object from the scene.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `camera` | [CustomCamera](./Camera.md#customcamera) |  |  |

## CustomCamera

[ClientOnly] Custom camera object.

**Base:** [Camera](./Camera.md#camera)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `OutputTexture` | [Texture](./Texture.md#texture) | `get/set` |  | [ClientOnly] Texture containing the render output. |


### Methods

#### SetActive

```lua
CustomCamera:SetActive(value: bool)
```

[ClientOnly] Enables or disables the camera.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `value` | bool |  |  |

#### SetRenderSize

```lua
CustomCamera:SetRenderSize(width: int, height: int)
```

[ClientOnly] Changes the camera render size.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `width` | int |  |  |
| `height` | int |  |  |

## MainCamera

[ClientOnly] Main camera object.

**Base:** [Camera](./Camera.md#camera)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `IsFirstPersonLocked` | bool | `get` |  | [ClientOnly] true if the main camera is locked to first-person mode. |


### Methods

#### LockFirstPerson

```lua
MainCamera:LockFirstPerson()
```

[ClientOnly] Locks the main camera in first-person mode.

#### UnlockFirstPerson

```lua
MainCamera:UnlockFirstPerson()
```

[ClientOnly] Unlocks the main camera from first-person mode, allowing its position and rotation to be changed.

