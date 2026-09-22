# Camera

API камеры. Позволяет создавать дополнительные пользовательские камеры.

## Contents

- [Camera](#camera)
- [Cameras](#cameras)
- [CustomCamera](#customcamera)
- [MainCamera](#maincamera)

---

## Camera

[ClientOnly] Объект камеры.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Aspect` | number | `get/set` |  | [ClientOnly] Соотношение сторон (aspect). |
| `FarClipPlane` | number | `get/set` |  | [ClientOnly] Дальняя плоскость отсечения. |
| `Fov` | number | `get/set` |  | [ClientOnly] Угол обзора (FOV). |
| `IsActive` | bool | `get` |  | [ClientOnly] true, если объект камеры активен. |
| `IsMainCamera` | bool | `get` |  | [ClientOnly] true, если это главная камера сцены. |
| `IsOrthographic` | bool | `get/set` |  | [ClientOnly] Режим ортографической проекции. |
| `NearClipPlane` | number | `get/set` |  | [ClientOnly] Ближняя плоскость отсечения. |
| `OrthographicSize` | number | `get/set` |  | [ClientOnly] Размер ортографической камеры. |
| `Position` | Vector3 | `get/set` |  | [ClientOnly] Позиция камеры в мире. |
| `Rotation` | Quaternion | `get/set` |  | [ClientOnly] Поворот камеры в мире. |


### Methods

#### AttachToAgentFirstPerson

```lua
Camera:AttachToAgentFirstPerson(agent: Agent): bool
```

[ClientOnly] Привязывает камеру к виду от первого лица агента. Для главной камеры метод доступен только после UnlockFirstPerson. Возвращает true при успешной привязке.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  | Агент, вид от первого лица которого будет отображать камера. |

**Returns:** bool

#### AttachToEntity

```lua
Camera:AttachToEntity(entity: Entity, localPosition: Vector3, localRotation: Quaternion, followRotation: bool, avoidObstacles: bool): bool
```

[ClientOnly] Привязывает камеру к сущности в заданной локальной позиции и повороте. Для Agent камера привязывается к точке обзора от первого лица. Для главной камеры метод доступен только после UnlockFirstPerson. Возвращает true при успешной привязке.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `entity` | [Entity](./Entity.md#entity) |  | Сущность, к которой привязывается камера. |
| `localPosition` | Vector3 |  | Позиция камеры в локальных координатах сущности. |
| `localRotation` | Quaternion |  | Поворот камеры в локальных координатах сущности. |
| `followRotation` | bool |  | Если true, камера наследует поворот сущности, а локальное смещение позиции вращается вместе с ней. Если false, поворот камеры и мировое смещение позиции фиксируются при привязке. |
| `avoidObstacles` | bool |  | Если true, перед установкой позиции проверяет, чтобы камера не попадала внутрь геометрии. |

**Returns:** bool

#### Detach

```lua
Camera:Detach()
```

[ClientOnly] Открепляет камеру, сохраняя ее текущую позицию и поворот.

#### WorldToViewportPoint

```lua
Camera:WorldToViewportPoint(worldPos: Vector3): Vector3
```

Преобразует мировую позицию в координаты viewport (0..1). Нижний левый угол viewport — (0,0); верхний правый угол — (1,1). Положение по оси Z — дистанция до камеры в метрах.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `worldPos` | Vector3 |  |  |

**Returns:** Vector3

## Cameras

[ClientOnly] Глобальный API для работы с камерами.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Main` | [MainCamera](./Camera.md#maincamera) | `get` |  | [ClientOnly] Главная камера сцены (только для чтения). |


### Methods

#### CreateCamera

```lua
Cameras:CreateCamera(): CustomCamera
```

[ClientOnly] Создает новую камеру и возвращает ее объект. Возвращает nil, если модуль достиг лимита камер.

**Returns:** [CustomCamera](./Camera.md#customcamera)

#### RemoveCamera

```lua
Cameras:RemoveCamera(camera: CustomCamera)
```

[ClientOnly] Удаляет указанную камеру и ее объект со сцены.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `camera` | [CustomCamera](./Camera.md#customcamera) |  |  |

## CustomCamera

[ClientOnly] Объект пользовательской камеры.

**Base:** [Camera](./Camera.md#camera)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `OutputTexture` | [Texture](./Texture.md#texture) | `get/set` |  | [ClientOnly] Текстура с результатом рендера. |


### Methods

#### SetActive

```lua
CustomCamera:SetActive(value: bool)
```

[ClientOnly] Включает или выключает камеру.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `value` | bool |  |  |

#### SetRenderSize

```lua
CustomCamera:SetRenderSize(width: int, height: int)
```

[ClientOnly] Изменяет размер рендера для камеры.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `width` | int |  |  |
| `height` | int |  |  |

## MainCamera

[ClientOnly] Объект главной камеры.

**Base:** [Camera](./Camera.md#camera)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `IsFirstPersonLocked` | bool | `get` |  | [ClientOnly] true, если главная камера закреплена в режиме от первого лица. |


### Methods

#### LockFirstPerson

```lua
MainCamera:LockFirstPerson()
```

[ClientOnly] Закрепляет главную камеру в режиме от первого лица.

#### UnlockFirstPerson

```lua
MainCamera:UnlockFirstPerson()
```

[ClientOnly] Снимает закрепление главной камеры в режиме от первого лица, позволяя изменять ее позицию и поворот.

