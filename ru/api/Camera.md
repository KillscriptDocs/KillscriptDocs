# Camera

API камеры. Позволяет создавать дополнительные пользовательские камеры.

## Contents

- [Camera](#camera)
- [Cameras](#cameras)

---

## Camera

[ClientOnly] Объект камеры.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Aspect` | number | `get/set` |  | [ClientOnly] Соотношение сторон (aspect). |
| `FarClipPlane` | number | `get/set` |  | [ClientOnly] Дальняя плоскость отсечения. |
| `Fov` | number | `get/set` |  | [ClientOnly] Угол обзора (FOV). |
| `IsMainCamera` | bool | `get/set` |  | [ClientOnly] true, если это главная камера сцены. |
| `IsOrthographic` | bool | `get/set` |  | [ClientOnly] Режим ортографической проекции. |
| `NearClipPlane` | number | `get/set` |  | [ClientOnly] Ближняя плоскость отсечения. |
| `OrthographicSize` | number | `get/set` |  | [ClientOnly] Размер ортографической камеры. |
| `OutputSprite` | [Sprite](./Sprite.md#sprite) | `get/set` |  | [ClientOnly] Спрайт с результатом рендера. Для главной камеры возвращает nil. |
| `Position` | Vector3 | `get/set` |  | [ClientOnly] Позиция камеры в мире. |
| `Rotation` | Quaternion | `get/set` |  | [ClientOnly] Поворот камеры в мире. |


### Methods

#### SetActive

```lua
Camera:SetActive(value: bool)
```

[ClientOnly] Включает или выключает пользовательскую камеру.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `value` | bool |  |  |

#### SetRenderSize

```lua
Camera:SetRenderSize(width: int, height: int)
```

[ClientOnly] Изменяет размер рендера для пользовательской камеры.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `width` | int |  |  |
| `height` | int |  |  |

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
| `Main` | [Camera](./Camera.md#camera) | `get` |  | [ClientOnly] Главная камера сцены (только для чтения). |


### Methods

#### CreateCamera

```lua
Cameras:CreateCamera(): Camera
```

[ClientOnly] Создает новую камеру и возвращает ее объект. Возвращает nil, если модуль достиг лимита камер.

**Returns:** [Camera](./Camera.md#camera)

#### RemoveCamera

```lua
Cameras:RemoveCamera(camera: Camera)
```

[ClientOnly] Удаляет указанную камеру и ее объект со сцены.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `camera` | [Camera](./Camera.md#camera) |  |  |

