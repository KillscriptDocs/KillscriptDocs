# Structs

API базовых структур: Vector, Quaternion, Color, Rect.

---

## Contents

- [Color](#color)
- [Quaternion](#quaternion)
- [Rect](#rect)
- [Vector2](#vector2)
- [Vector3](#vector3)

---

## Color

Цвет в формате RGBA (красный, зелёный, синий, альфа). Используется для задания цвета и прозрачности в рендеринге и UI.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `a` | `number` |  | Альфа-канал / прозрачность (число в диапазоне 0..1) |
| `b` | `number` |  | Синий компонент (число в диапазоне 0..1) |
| `g` | `number` |  | Зелёный компонент (число в диапазоне 0..1) |
| `r` | `number` |  | Красный компонент (число в диапазоне 0..1) |

### Constructors

#### Color

```lua
Color(r: number, g: number, b: number, a: number): Color
```

Создаёт цвет из 4 компонентов RGBA.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `r` | `number` |  | Красный компонент |
| `g` | `number` |  | Зелёный компонент |
| `b` | `number` |  | Синий компонент |
| `a` | `number` |  | Альфа-канал (прозрачность) |

#### Color

```lua
Color(r: number, g: number, b: number): Color
```

Создаёт цвет из 3 компонентов RGB (альфа по умолчанию `1`).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `r` | `number` |  | Красный компонент |
| `g` | `number` |  | Зелёный компонент |
| `b` | `number` |  | Синий компонент |

## Quaternion

Кватернион, используемый для представления поворота без проблем Эйлеровых углов, например гимбал-лока.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `eulerAngles` | `Vector3` |  | Эйлеровы углы в градусах (pitch=x, yaw=y, roll=z) |
| `identity` | `Quaternion` |  | Единичный поворот `(0,0,0,1)` |
| `normalized` | `Quaternion` |  | Нормализованная копия этого кватерниона |
| `w` | `number` |  | W-компонента кватерниона |
| `x` | `number` |  | X-компонента кватерниона |
| `y` | `number` |  | Y-компонента кватерниона |
| `z` | `number` |  | Z-компонента кватерниона |

### Constructors

#### Quaternion

```lua
Quaternion(x: number?, y: number?, z: number?, w: number?): Quaternion
```

Создаёт новый кватернион.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number?` | ✅ | X-компонента |
| `y` | `number?` | ✅ | Y-компонента |
| `z` | `number?` | ✅ | Z-компонента |
| `w` | `number?` | ✅ | W-компонента |

### Static Methods

#### Dot

```lua
Quaternion.Dot(a: Quaternion, b: Quaternion): number
```

Скалярное произведение двух кватернионов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Quaternion` |  | Первый кватернион |
| `b` | `Quaternion` |  | Второй кватернион |

**Returns:** `number`

#### Normalize

```lua
Quaternion.Normalize(q: Quaternion): Quaternion
```

Нормализует кватернион и возвращает новую копию.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `q` | `Quaternion` |  | Исходный кватернион |

**Returns:** `Quaternion`

#### Inverse

```lua
Quaternion.Inverse(rotation: Quaternion): Quaternion
```

Возвращает обратный кватернион: поворот, который отменяет `rotation`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `rotation` | `Quaternion` |  | Исходный поворот |

**Returns:** `Quaternion`

#### Angle

```lua
Quaternion.Angle(a: Quaternion, b: Quaternion): number
```

Угол в градусах между двумя поворотами.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Quaternion` |  | Первый поворот |
| `b` | `Quaternion` |  | Второй поворот |

**Returns:** `number`

#### AngleAxis

```lua
Quaternion.AngleAxis(angle: number, axis: Vector3|table): Quaternion
```

Создаёт кватернион из угла в градусах и оси вращения.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `angle` | `number` |  | Угол в градусах |
| `axis` | `Vector3|table` |  | Ось вращения |

**Returns:** `Quaternion`

#### Euler

```lua
Quaternion.Euler(x: number, y: number, z: number): Quaternion
```

Создаёт кватернион из Эйлеровых углов в градусах.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | Pitch в градусах |
| `y` | `number` |  | Yaw в градусах |
| `z` | `number` |  | Roll в градусах |

**Returns:** `Quaternion`

#### FromToRotation

```lua
Quaternion.FromToRotation(fromDir: Vector3|table, toDir: Vector3|table): Quaternion
```

Поворачивает направление `fromDir` в `toDir`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `fromDir` | `Vector3|table` |  | Исходное направление |
| `toDir` | `Vector3|table` |  | Целевое направление |

**Returns:** `Quaternion`

#### Lerp

```lua
Quaternion.Lerp(a: Quaternion, b: Quaternion, t: number): Quaternion
```

Линейная интерполяция между `a` и `b` с нормализацией.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Quaternion` |  | Начальный поворот |
| `b` | `Quaternion` |  | Конечный поворот |
| `t` | `number` |  | Параметр интерполяции `(0..1)` |

**Returns:** `Quaternion`

#### LerpUnclamped

```lua
Quaternion.LerpUnclamped(a: Quaternion, b: Quaternion, t: number): Quaternion
```

То же, что `Lerp`, но `t` не ограничен диапазоном `0..1`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Quaternion` |  | Начальный поворот |
| `b` | `Quaternion` |  | Конечный поворот |
| `t` | `number` |  | Параметр интерполяции |

**Returns:** `Quaternion`

#### Slerp

```lua
Quaternion.Slerp(a: Quaternion, b: Quaternion, t: number): Quaternion
```

Сферическая интерполяция между `a` и `b`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Quaternion` |  | Начальный поворот |
| `b` | `Quaternion` |  | Конечный поворот |
| `t` | `number` |  | Параметр интерполяции `(0..1)` |

**Returns:** `Quaternion`

#### SlerpUnclamped

```lua
Quaternion.SlerpUnclamped(a: Quaternion, b: Quaternion, t: number): Quaternion
```

Сферическая интерполяция без ограничения `t`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Quaternion` |  | Начальный поворот |
| `b` | `Quaternion` |  | Конечный поворот |
| `t` | `number` |  | Параметр интерполяции |

**Returns:** `Quaternion`

#### LookRotation

```lua
Quaternion.LookRotation(forward: Vector3|table, up: Vector3|table = ...): Quaternion
```

Строит кватернион, который направляет объект вперёд вдоль заданного вектора.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `forward` | `Vector3|table` |  | Направление вперёд |
| `up` | `Vector3|table` | ✅ | Вектор вверх |

**Returns:** `Quaternion`

#### RotateTowards

```lua
Quaternion.RotateTowards(from: Quaternion, to: Quaternion, maxDegreesDelta: number): Quaternion
```

Плавно вращает `from` к `to`, но не более чем на `maxDegreesDelta` градусов за шаг.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `from` | `Quaternion` |  | Исходный поворот |
| `to` | `Quaternion` |  | Целевой поворот |
| `maxDegreesDelta` | `number` |  | Максимальный шаг в градусах |

**Returns:** `Quaternion`

#### ToAngleAxis

```lua
Quaternion.ToAngleAxis(q: Quaternion): number, Vector3
```

Преобразует кватернион в угол и ось.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `q` | `Quaternion` |  | Исходный кватернион |

**Returns:** `number`, `Vector3`

#### identity

```lua
Quaternion.identity(): Quaternion
```

Возвращает единичный кватернион.

**Returns:** `Quaternion`

### Instance Methods

#### Normalize

```lua
Quaternion:Normalize(): Quaternion
```

Нормализует кватернион на месте и возвращает `self`.

**Returns:** `Quaternion`

#### ToString

```lua
Quaternion:ToString(): string
```

Возвращает строковое представление кватерниона.

**Returns:** `string`

#### ToAngleAxis

```lua
Quaternion:ToAngleAxis(): number, Vector3
```

Разложение на угол и ось как метод экземпляра.

**Returns:** `number`, `Vector3`

## Rect

Прямоугольник в 2D, обычно используемый для UI, областей отрисовки и хитбоксов.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Zero` | `Rect` |  | Прямоугольник `Rect(0, 0, 0, 0)` |
| `center` | `Vector2` |  | Центр прямоугольника |
| `height` | `number` |  | Высота прямоугольника |
| `width` | `number` |  | Ширина прямоугольника |
| `x` | `number` |  | Координата X |
| `xMax` | `number` |  | Максимальная X-координата |
| `xMin` | `number` |  | Минимальная X-координата |
| `y` | `number` |  | Координата Y |
| `yMax` | `number` |  | Максимальная Y-координата |
| `yMin` | `number` |  | Минимальная Y-координата |

### Constructors

#### Rect

```lua
Rect(x: number, y: number, width: number, height: number): Rect
```

Создаёт прямоугольник по позиции и размеру.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | X-координата |
| `y` | `number` |  | Y-координата |
| `width` | `number` |  | Ширина |
| `height` | `number` |  | Высота |

## Vector2

Вектор в 2D для координат, направлений и смещений в плоскости.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `left` | `Vector2` |  | Влево `Vector2(-1, 0)` |
| `magnitude` | `number` |  | Длина вектора |
| `normalized` | `Vector2` |  | Нормализованная копия вектора |
| `one` | `Vector2` |  | Вектор из единиц `Vector2(1, 1)` |
| `right` | `Vector2` |  | Вправо `Vector2(1, 0)` |
| `x` | `number` |  | Компонента X |
| `y` | `number` |  | Компонента Y |
| `zero` | `Vector2` |  | Нулевой вектор `Vector2(0, 0)` |

### Constructors

#### Vector2

```lua
Vector2(x: number, y: number): Vector2
```

Создаёт `Vector2`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | Компонента X |
| `y` | `number` |  | Компонента Y |

### Methods

#### Magnitude

```lua
Vector2.Magnitude(vector: Vector2): number
```

Возвращает длину вектора.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `vector` | `Vector2` |  | Вектор |

**Returns:** `number`

#### Normalize

```lua
Vector2.Normalize(value: Vector2): Vector2
```

Нормализует вектор и возвращает новый вектор длины `1`, если это возможно.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `value` | `Vector2` |  | Исходный вектор |

**Returns:** `Vector2`

#### Distance

```lua
Vector2.Distance(a: Vector2, b: Vector2): number
```

Расстояние между двумя точками.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Vector2` |  | Первая точка |
| `b` | `Vector2` |  | Вторая точка |

**Returns:** `number`

## Vector3

Вектор в 3D для координат, направлений, скоростей и других пространственных величин.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `forward` | `Vector3` |  | Вперёд `Vector3(0, 0, 1)` |
| `magnitude` | `number` |  | Длина вектора |
| `normalized` | `Vector3` |  | Нормализованная копия вектора |
| `sqrMagnitude` | `number` |  | Квадрат длины |
| `up` | `Vector3` |  | Вверх `Vector3(0, 1, 0)` |
| `x` | `number` |  | Компонента X |
| `y` | `number` |  | Компонента Y |
| `z` | `number` |  | Компонента Z |
| `zero` | `Vector3` |  | Нулевой вектор `Vector3(0, 0, 0)` |

### Constructors

#### Vector3

```lua
Vector3(x: number, y: number, z: number): Vector3
```

Создаёт `Vector3`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | Компонента X |
| `y` | `number` |  | Компонента Y |
| `z` | `number` |  | Компонента Z |

### Static Methods

#### Magnitude

```lua
Vector3.Magnitude(vector: Vector3): number
```

Возвращает длину вектора.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `vector` | `Vector3` |  | Вектор |

**Returns:** `number`

#### Normalize

```lua
Vector3.Normalize(value: Vector3): Vector3
```

Нормализует вектор и возвращает новую копию.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `value` | `Vector3` |  | Исходный вектор |

**Returns:** `Vector3`

#### Angle

```lua
Vector3.Angle(from: Vector3, to: Vector3): number
```

Возвращает угол в градусах между двумя направлениями.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `from` | `Vector3` |  | Первое направление |
| `to` | `Vector3` |  | Второе направление |

**Returns:** `number`

#### Dot

```lua
Vector3.Dot(lhs: Vector3, rhs: Vector3): number
```

Скалярное произведение двух векторов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `lhs` | `Vector3` |  | Первый вектор |
| `rhs` | `Vector3` |  | Второй вектор |

**Returns:** `number`

#### FromYawPitchToDirection

```lua
Vector3.FromYawPitchToDirection(yaw: number, pitch: number): Vector3
```

Преобразует yaw/pitch в единичное направление.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `yaw` | `number` |  | Поворот вокруг Y |
| `pitch` | `number` |  | Наклон вверх или вниз |

**Returns:** `Vector3`

#### Distance

```lua
Vector3.Distance(a: Vector3, b: Vector3): number
```

Расстояние между двумя точками.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `a` | `Vector3` |  | Первая точка |
| `b` | `Vector3` |  | Вторая точка |

**Returns:** `number`

#### Cross

```lua
Vector3.Cross(lhs: Vector3, rhs: Vector3): Vector3
```

Векторное произведение двух векторов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `lhs` | `Vector3` |  | Первый вектор |
| `rhs` | `Vector3` |  | Второй вектор |

**Returns:** `Vector3`

### Instance Methods

#### OnlyXZ

```lua
Vector3:OnlyXZ(): Vector3
```

Возвращает копию вектора в плоскости XZ, где `y = 0`.

**Returns:** `Vector3`

#### ToString

```lua
Vector3:ToString(): string
```

Возвращает строковое представление вектора.

**Returns:** `string`

