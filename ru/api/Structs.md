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

Цвет в формате RGBA (красный, зелёный, синий, альфа).
Используется для задания цвета/прозрачности в рендеринге и UI.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `r` | `number` |  | Красный компонент (число в диапазоне 0..1) |
| `g` | `number` |  | Зелёный компонент (число в диапазоне 0..1) |
| `b` | `number` |  | Синий компонент (число в диапазоне 0..1) |
| `a` | `number` |  | Альфа-канал / прозрачность (число в диапазоне 0..1) |

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

**Returns:** `Color`

#### Color

```lua
Color(r: number, g: number, b: number): Color
```

Создаёт цвет из 3 компонентов RGB (альфа по умолчанию 1).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `r` | `number` |  | Красный компонент |
| `g` | `number` |  | Зелёный компонент |
| `b` | `number` |  | Синий компонент |

**Returns:** `Color`

## Quaternion

Кватернион — представление поворота в 3D-пространстве.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `x` | `number` |  | X-компонента кватерниона |
| `y` | `number` |  | Y-компонента кватерниона |
| `z` | `number` |  | Z-компонента кватерниона |
| `w` | `number` |  | W-компонента кватерниона |
| `normalized` | `Quaternion` |  | Нормализованная копия этого кватерниона |
| `eulerAngles` | `Vector3` |  | Эйлеровы углы в градусах (pitch=x, yaw=y, roll=z) |

### Constructors

#### Quaternion

```lua
Quaternion(x: number, y: number, z: number, w: number): Quaternion
```

Создаёт новый кватернион.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | X-компонента |
| `y` | `number` |  | Y-компонента |
| `z` | `number` |  | Z-компонента |
| `w` | `number` |  | W-компонента |

**Returns:** `Quaternion`

### Methods

#### euler

```lua
Quaternion.euler(x: number, y: number, z: number): Quaternion
```

Создаёт кватернион из Эйлеровых углов (в градусах).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | Pitch в градусах |
| `y` | `number` |  | Yaw в градусах |
| `z` | `number` |  | Roll в градусах |

**Returns:** `Quaternion`

#### lookRotation

```lua
Quaternion.lookRotation(forward: Vector3|table, up?: Vector3|table): Quaternion
```

Создаёт кватернион, который направляет “вперёд” вдоль заданного вектора.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `forward` | `Vector3|table` |  | Направление вперёд |
| `up` | `Vector3|table` | yes | Вектор “вверх” |

**Returns:** `Quaternion`

#### angleAxis

```lua
Quaternion.angleAxis(angle: number, axis: Vector3|table): Quaternion
```

Создаёт кватернион из угла (в градусах) и оси вращения.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `angle` | `number` |  | Угол в градусах |
| `axis` | `Vector3|table` |  | Ось вращения (Vector3 или таблица {x, y, z}) |

**Returns:** `Quaternion`

#### fromToRotation

```lua
Quaternion.fromToRotation(fromDir: Vector3|table, toDir: Vector3|table): Quaternion
```

Поворачивает направление `fromDir` в `toDir` и возвращает кватернион этого поворота.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `fromDir` | `Vector3|table` |  | Исходное направление |
| `toDir` | `Vector3|table` |  | Целевое направление |

**Returns:** `Quaternion`

#### Dot

```lua
Quaternion:Dot(b: Quaternion): number
```

Скалярное произведение (dot) двух кватернионов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Quaternion` |  | Второй кватернион |

**Returns:** `number`

#### Normalize

```lua
Quaternion:Normalize(): Quaternion
```

Нормализует кватернион на месте (изменяет объект) и возвращает self.

**Returns:** `Quaternion`

#### Inverse

```lua
Quaternion:Inverse(): Quaternion
```

Возвращает обратный кватернион: поворот, который отменяет self.

**Returns:** `Quaternion`

#### Angle

```lua
Quaternion:Angle(b: Quaternion): number
```

Угол (в градусах) между self и другим поворотом.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Quaternion` |  | Второй поворот |

**Returns:** `number`

#### Lerp

```lua
Quaternion:Lerp(b: Quaternion, t: number): Quaternion
```

Линейная интерполяция между self и b с нормализацией (t в диапазоне 0..1).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Quaternion` |  | Конечный поворот |
| `t` | `number` |  | Параметр интерполяции (0..1) |

**Returns:** `Quaternion`

#### LerpUnclamped

```lua
Quaternion:LerpUnclamped(b: Quaternion, t: number): Quaternion
```

То же, что Lerp, но t не ограничен диапазоном 0..1.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Quaternion` |  | Конечный поворот |
| `t` | `number` |  | Параметр интерполяции (может быть вне 0..1) |

**Returns:** `Quaternion`

#### Slerp

```lua
Quaternion:Slerp(b: Quaternion, t: number): Quaternion
```

Сферическая интерполяция между self и b (Slerp), t в диапазоне 0..1.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Quaternion` |  | Конечный поворот |
| `t` | `number` |  | Параметр интерполяции (0..1) |

**Returns:** `Quaternion`

#### SlerpUnclamped

```lua
Quaternion:SlerpUnclamped(b: Quaternion, t: number): Quaternion
```

Slerp без ограничения t.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Quaternion` |  | Конечный поворот |
| `t` | `number` |  | Параметр интерполяции (может быть вне 0..1) |

**Returns:** `Quaternion`

#### RotateTowards

```lua
Quaternion:RotateTowards(to: Quaternion, maxDegreesDelta: number): Quaternion
```

Плавно вращает self к to, но не более чем на maxDegreesDelta (в градусах) за шаг.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `to` | `Quaternion` |  | Целевой поворот |
| `maxDegreesDelta` | `number` |  | Максимальный шаг поворота в градусах |

**Returns:** `Quaternion`

#### ToAngleAxis

```lua
Quaternion:ToAngleAxis(): number, Vector3
```

Разложение кватерниона на угол и ось.

**Returns:** `number`, `Vector3`

## Rect

Прямоугольник в 2D (позиция и размер).

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `x` | `number` |  | Координата X |
| `y` | `number` |  | Координата Y |
| `width` | `number` |  | Ширина прямоугольника |
| `height` | `number` |  | Высота прямоугольника |
| `xMin` | `number` |  | Минимальная X-координата |
| `yMin` | `number` |  | Минимальная Y-координата |
| `xMax` | `number` |  | Максимальная X-координата |
| `yMax` | `number` |  | Максимальная Y-координата |
| `center` | `Vector2` |  | Центр прямоугольника |

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

**Returns:** `Rect`

## Vector2

Вектор в 2D (x, y).

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `x` | `number` |  | Компонента X |
| `y` | `number` |  | Компонента Y |
| `zero` | `Vector2` |  | Нулевой вектор Vector2(0, 0) |
| `one` | `Vector2` |  | Вектор из единиц Vector2(1, 1) |
| `normalized` | `Vector2` |  | Нормализованная копия вектора |
| `magnitude` | `number` |  | Длина (модуль) вектора |
| `sqrMagnitude` | `number` |  | Квадрат длины |

### Constructors

#### Vector2

```lua
Vector2(x: number, y: number): Vector2
```

Создаёт Vector2.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | Компонента X |
| `y` | `number` |  | Компонента Y |

**Returns:** `Vector2`

### Methods

#### Magnitude

```lua
Vector2:Magnitude(): number
```

Возвращает длину (модуль) вектора.

**Returns:** `number`

#### Normalize

```lua
Vector2:Normalize(): Vector2
```

Нормализует вектор и возвращает новый вектор длины 1 (если возможно).

**Returns:** `Vector2`

#### Dot

```lua
Vector2:Dot(rhs: Vector2): number
```

Скалярное произведение двух векторов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `rhs` | `Vector2` |  | Второй вектор |

**Returns:** `number`

#### Angle

```lua
Vector2:Angle(to: Vector2): number
```

Возвращает угол в градусах между self и to.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `to` | `Vector2` |  | Второе направление |

**Returns:** `number`

#### Distance

```lua
Vector2:Distance(b: Vector2): number
```

Расстояние между self и b.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Vector2` |  | Вторая точка |

**Returns:** `number`

## Vector3

Вектор в 3D (x, y, z).

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `x` | `number` |  | Компонента X |
| `y` | `number` |  | Компонента Y |
| `z` | `number` |  | Компонента Z |
| `back` | `Vector3` |  | Вектор назад Vector3(0, 0, -1) |
| `down` | `Vector3` |  | Вектор вниз Vector3(0, -1, 0) |
| `forward` | `Vector3` |  | Вектор вперёд Vector3(0, 0, 1) |
| `left` | `Vector3` |  | Вектор влево Vector3(-1, 0, 0) |
| `negativeInfinity` | `Vector3` |  | Vector3(-inf, -inf, -inf) |
| `zero` | `Vector3` |  | Нулевой вектор Vector3(0, 0, 0) |
| `one` | `Vector3` |  | Вектор из единиц Vector3(1, 1, 1) |
| `positiveInfinity` | `Vector3` |  | Vector3(inf, inf, inf) |
| `right` | `Vector3` |  | Вектор вправо Vector3(1, 0, 0) |
| `up` | `Vector3` |  | Вектор вверх Vector3(0, 1, 0) |
| `normalized` | `Vector3` |  | Нормализованная копия вектора |
| `sqrMagnitude` | `number` |  | Квадрат длины |
| `magnitude` | `number` |  | Длина (модуль) вектора |

### Operators

| Signature | Comment |
|---|---|
| `add(Vector3):Vector3` | Сложение векторов |
| `sub(Vector3):Vector3` | Вычитание векторов |

### Constructors

#### Vector3

```lua
Vector3(x: number, y: number, z: number): Vector3
```

Создаёт Vector3.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `x` | `number` |  | Компонента X |
| `y` | `number` |  | Компонента Y |
| `z` | `number` |  | Компонента Z |

**Returns:** `Vector3`

### Methods

#### fromYawPitchToDirection

```lua
Vector3.fromYawPitchToDirection(yaw: number, pitch: number): Vector3
```

Преобразует yaw/pitch в единичное направление.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `yaw` | `number` |  | Поворот вокруг Y (азимут) |
| `pitch` | `number` |  | Наклон вверх/вниз |

**Returns:** `Vector3`

#### Magnitude

```lua
Vector3:Magnitude(): number
```

Возвращает длину (модуль) вектора.

**Returns:** `number`

#### Normalize

```lua
Vector3:Normalize(): Vector3
```

Нормализует вектор и возвращает новый вектор длины 1 (если возможно).

**Returns:** `Vector3`

#### OnlyXZ

```lua
Vector3:OnlyXZ(): Vector3
```

Возвращает копию вектора только в плоскости XZ (компонента Y обнуляется).

**Returns:** `Vector3`

#### Angle

```lua
Vector3:Angle(to: Vector3): number
```

Возвращает угол (в градусах) между self и to.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `to` | `Vector3` |  | Второе направление |

**Returns:** `number`

#### Dot

```lua
Vector3:Dot(rhs: Vector3): number
```

Скалярное произведение (dot) двух векторов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `rhs` | `Vector3` |  | Второй вектор |

**Returns:** `number`

#### Distance

```lua
Vector3:Distance(b: Vector3): number
```

Расстояние между self и b.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `b` | `Vector3` |  | Вторая точка |

**Returns:** `number`

#### Cross

```lua
Vector3:Cross(rhs: Vector3): Vector3
```

Векторное произведение (cross) двух векторов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `rhs` | `Vector3` |  | Второй вектор |

**Returns:** `Vector3`
