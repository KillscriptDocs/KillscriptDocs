# WorldVisuals

API для трехмерной визуализации в игровом мире: линии, области поражения.

## Contents

- [LineRenderer](#linerenderer)
- [SurfaceOverlay](#surfaceoverlay)
- [WorldObject](#worldobject)
- [WorldVisuals](#worldvisuals)

---

## LineRenderer

[ClientOnly] Линия в мире для визуализации траекторий и направлений.

**Base:** [WorldObject](./WorldVisuals.md#worldobject)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `PositionCount` | int | `get/set` |  | [ClientOnly] Количество точек линии. Максимум 2048 точек. |


### Methods

#### SetColor

```lua
LineRenderer:SetColor(color: Color)
```

[ClientOnly] Устанавливает цвет линии.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `color` | Color |  |  |

#### SetDistanceWidth

```lua
LineRenderer:SetDistanceWidth(nearWidth: number, farWidth: number, nearDistance: number, farDistance: number)
```

[ClientOnly] Устанавливает толщину линии на ближней и дальней дистанции. Между дистанциями толщина меняется линейно.

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

[ClientOnly] Устанавливает яркость и прозрачность участков линии, перекрытых геометрией. Значения ограничиваются диапазоном от 0 до 1.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `brightness` | number |  |  |
| `transparency` | number |  |  |

#### SetPatternEnabled

```lua
LineRenderer:SetPatternEnabled(enabled: bool)
```

[ClientOnly] Включает или выключает использование паттерна для линии.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `enabled` | bool |  |  |

#### SetPatternRepeat

```lua
LineRenderer:SetPatternRepeat(repeatCount: number)
```

[ClientOnly] Устанавливает частоту повторения паттерна вдоль линии.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `repeatCount` | number |  |  |

#### SetPatternSprite

```lua
LineRenderer:SetPatternSprite(sprite: Sprite)
```

[ClientOnly] Устанавливает спрайт паттерна линии.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `sprite` | [Sprite](./Sprite.md#sprite) |  |  |

#### SetPosition

```lua
LineRenderer:SetPosition(index: int, position: Vector3)
```

[ClientOnly] Устанавливает позицию точки по индексу (индекс начинается с 0). Индекс должен быть меньше 2048.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `index` | int |  |  |
| `position` | Vector3 |  |  |

#### SetPositionCount

```lua
LineRenderer:SetPositionCount(count: int)
```

[ClientOnly] Устанавливает количество точек линии. Максимум 2048 точек.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `count` | int |  |  |

#### SetPositions

```lua
LineRenderer:SetPositions(table: LuaTable)
```

[ClientOnly] Устанавливает позиции точек из table. Максимум 2048 точек.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `table` | LuaTable |  |  |

#### SetPositions

```lua
LineRenderer:SetPositions(points: Array<Vector3>)
```

[ClientOnly] Устанавливает позиции точек из массива. Максимум 2048 точек.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `points` | Array<Vector3> |  |  |

#### SetProgress

```lua
LineRenderer:SetProgress(progress: number)
```

[ClientOnly] Устанавливает длину уже пройденного участка линии для материалов с параметром _Progress.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `progress` | number |  |  |

#### SetWidth

```lua
LineRenderer:SetWidth(width: number)
```

[ClientOnly] Устанавливает фиксированную толщину линии, задавая одинаковую ближнюю и дальнюю толщину.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `width` | number |  |  |

## SurfaceOverlay

[ClientOnly] Сферическая визуализация области поражения, которая проецируется на видимые поверхности мира.

**Base:** [WorldObject](./WorldVisuals.md#worldobject)

### Methods

#### SetColor

```lua
SurfaceOverlay:SetColor(color: Color)
```

[ClientOnly] Устанавливает цвет области поражения, включая альфу.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `color` | Color |  |  |

#### SetFillBase

```lua
SurfaceOverlay:SetFillBase(fillBase: number)
```

[ClientOnly] Устанавливает базовую плотность заливки области поражения.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `fillBase` | number |  |  |

#### SetOcclusionEnabled

```lua
SurfaceOverlay:SetOcclusionEnabled(on: bool)
```

[ClientOnly] Включает или выключает маску перекрытий области поражения: за укрытием паттерн и заливка не рисуются.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `on` | bool |  |  |

#### SetPosition

```lua
SurfaceOverlay:SetPosition(position: Vector3)
```

[ClientOnly] Устанавливает центр области поражения в мире.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `position` | Vector3 |  |  |

#### SetSize

```lua
SurfaceOverlay:SetSize(size: Vector3)
```

[ClientOnly] Устанавливает размер области поражения. При объемном размере визуализация становится сферической.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `size` | Vector3 |  |  |

#### SetVisible

```lua
SurfaceOverlay:SetVisible(on: bool)
```

[ClientOnly] Включает или выключает отображение области поражения.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `on` | bool |  |  |

## WorldObject

[ClientOnly] Базовый объект мира.

## WorldVisuals

[ClientOnly] Глобальный API для спавна мировых объектов.

### Methods

#### CreateLineRenderer

```lua
WorldVisuals:CreateLineRenderer(): LineRenderer
```

[ClientOnly] Создает и возвращает объект для рисования линии. Возвращает nil, если модуль достиг лимита объектов спавнера.

**Returns:** [LineRenderer](./WorldVisuals.md#linerenderer)

#### CreateSurfaceOverlay

```lua
WorldVisuals:CreateSurfaceOverlay(): SurfaceOverlay
```

[ClientOnly] Создает и возвращает объект для проекции оверлея на поверхности. Возвращает nil, если модуль достиг лимита объектов спавнера.

**Returns:** [SurfaceOverlay](./WorldVisuals.md#surfaceoverlay)

#### RemoveObject

```lua
WorldVisuals:RemoveObject(toRemove: any)
```

[ClientOnly] Удаляет ранее созданный объект спавнера.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `toRemove` | any |  |  |

