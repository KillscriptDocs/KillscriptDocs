# ImGui

API простого Immediate-mode графического интерфейса

## Contents

- [ImGui](#imgui)
- [ImGuiFont](#imguifont)
- [ImGuiWindow](#imguiwindow)

---

## ImGui

[ClientOnly] Система для быстрой отрисовки пользовательского интерфейса через методы OnGUI.

### Methods

#### AddImGuiWindow

```lua
ImGui:AddImGuiWindow(id: string, title: string, rect: Rect): ImGuiWindow
```

[ClientOnly] Создаёт новое окно ImGui, которое пользователь сможет настроить в режиме редактирования UI. Возвращает nil, если id пустой или превышен лимит окон.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `id` | string |  | Индетификатор создаваемого окна, должен быть уникален |
| `title` | string |  | Заголовок создаваемого окна |
| `rect` | Rect |  | Область окна на экране |

**Returns:** [ImGuiWindow](./ImGui.md#imguiwindow)

#### ClearAlphaMask

```lua
ImGui:ClearAlphaMask()
```

[ClientOnly] Отключает альфа-маску для последующих команд отрисовки текущего кадра.

#### DrawCircle

```lua
ImGui:DrawCircle(center: Vector2, radius: number, color: Color, thickness: number = ..., segments: int = ...)
```

[ClientOnly] Рисует контур окружности на экране. Толщина располагается по обе стороны от указанного радиуса.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `center` | Vector2 |  | Центр окружности в экранных координатах |
| `radius` | number |  | Радиус окружности |
| `color` | Color |  | Цвет окружности |
| `thickness` | number | ✅ | Толщина линии |
| `segments` | int | ✅ | Количество сегментов. Значение 0 подбирает количество автоматически, остальные значения ограничиваются диапазоном от 3 до 256 |

#### DrawDebugText

```lua
ImGui:DrawDebugText(text: string)
```

[ClientOnly] Отрисовывает отладочный текст в краю экрана.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Текст |

#### DrawKeyTip

```lua
ImGui:DrawKeyTip(inputAction: InputAction, rect: Rect, fontSize: number = ..., color: Color? = ...)
```

[ClientOnly] Рисует подсказку клавиши для действия ввода на экране.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `inputAction` | [InputAction](./InputAction.md#inputaction) |  | Действие ввода, назначенная клавиша которого будет отображена |
| `rect` | Rect |  | Экранная область подсказки |
| `fontSize` | number | ✅ | Размер шрифта |
| `color` | Color? | ✅ | Цвет фона подсказки |

#### DrawLine

```lua
ImGui:DrawLine(pos1: Vector2, pos2: Vector2, color: Color, thickness: number = ...)
```

[ClientOnly] Рисует линию между двумя точками на экране.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `pos1` | Vector2 |  | Начало линии в экранных координатах |
| `pos2` | Vector2 |  | Конец линии в экранных координатах |
| `color` | Color |  | Цвет линии |
| `thickness` | number | ✅ | Толщина линии |

#### DrawRect

```lua
ImGui:DrawRect(rect: Rect, color: Color)
```

[ClientOnly] Рисует заполненный прямоугольник на экране.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `rect` | Rect |  | Экранная область прямоугольника |
| `color` | Color |  | Цвет прямоугольника |

#### DrawText

```lua
ImGui:DrawText(text: string, rect: Rect, fontSize: number = ..., color: Color? = ..., alignment: TextAnchor = ..., font: ImGuiFont = ...)
```

[ClientOnly] Рисует текст на экране.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Текст |
| `rect` | Rect |  | Область текста на экране |
| `fontSize` | number | ✅ | Размер шрифта текста |
| `color` | Color? | ✅ | Цвет текста |
| `alignment` | [TextAnchor](./UI.md#textanchor) | ✅ | Позиционирование текста |
| `font` | [ImGuiFont](./ImGui.md#imguifont) | ✅ | Шрифт интерфейса |

#### DrawTextPos

```lua
ImGui:DrawTextPos(text: string, screenPosition: Vector2, fontSize: number = ..., color: Color? = ..., alignment: TextAnchor = ..., font: ImGuiFont = ...)
```

[ClientOnly] Рисует текст на экране по указанной позиции и автоматически подбирает размер области под содержимое. Верхний левый угол экрана — (0,0).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Текст |
| `screenPosition` | Vector2 |  | Экранная позиция текста |
| `fontSize` | number | ✅ | Размер шрифта текста |
| `color` | Color? | ✅ | Цвет текста |
| `alignment` | [TextAnchor](./UI.md#textanchor) | ✅ | Позиционирование текста |
| `font` | [ImGuiFont](./ImGui.md#imguifont) | ✅ | Шрифт интерфейса |

#### DrawTextUV

```lua
ImGui:DrawTextUV(text: string, viewportPosition: Vector2, fontSize: number = ..., color: Color? = ..., alignment: TextAnchor = ..., font: ImGuiFont = ...)
```

[ClientOnly] Рисует текст по координатам viewport и автоматически подбирает размер области под содержимое. Используются X и Y, Z игнорируется. Нижний левый угол viewport — (0,0); верхний правый угол — (1,1).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Текст |
| `viewportPosition` | Vector2 |  | Позиция текста в координатах viewport |
| `fontSize` | number | ✅ | Размер шрифта текста |
| `color` | Color? | ✅ | Цвет текста |
| `alignment` | [TextAnchor](./UI.md#textanchor) | ✅ | Позиционирование текста |
| `font` | [ImGuiFont](./ImGui.md#imguifont) | ✅ | Шрифт интерфейса |

#### DrawTexture

```lua
ImGui:DrawTexture(texture: Texture, rect: Rect? = ...)
```

[ClientOnly] Рисует текстуру на экране.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Текстура для отрисовки |
| `rect` | Rect? | ✅ | Экранная область, в которой будет отрисована текстура (Если nil, то используется вся доступная область) |

#### DrawTextureColor

```lua
ImGui:DrawTextureColor(texture: Texture, color: Color, rect: Rect? = ...)
```

[ClientOnly] Рисует текстуру на экране с наложением цветовой маски.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Текстура для отрисовки |
| `color` | Color |  | Цветовая маска, применяемая к текстуре |
| `rect` | Rect? | ✅ | Экранная область, в которой будет отрисована текстура (Если nil, то используется вся доступная область) |

#### DrawTextureRegion

```lua
ImGui:DrawTextureRegion(texture: Texture, color: Color, rect: Rect, uvRect: Rect)
```

[ClientOnly] Рисует область текстуры на экране. UV-область задаётся нормализованными координатами от левого верхнего угла текстуры.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Текстура для отрисовки |
| `color` | Color |  | Цветовая маска, применяемая к текстуре |
| `rect` | Rect |  | Экранная область отрисовки |
| `uvRect` | Rect |  | Нормализованная UV-область текстуры с началом координат в левом верхнем углу |

#### MeasureText

```lua
ImGui:MeasureText(text: string, fontSize: number = ..., font: ImGuiFont = ...): Vector2
```

[ClientOnly] Возвращает ширину и высоту текста в логических координатах ImGui. Для отсутствующего символа используется та же замена, что при отрисовке. Пустой текст или некорректный размер шрифта возвращает (0, 0).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Измеряемый текст |
| `fontSize` | number | ✅ | Размер шрифта |
| `font` | [ImGuiFont](./ImGui.md#imguifont) | ✅ | Шрифт интерфейса |

**Returns:** Vector2

#### PopMatrix

```lua
ImGui:PopMatrix()
```

[ClientOnly] Восстанавливает последнюю сохранённую матрицу преобразования. Если стек пуст, матрица не изменяется.

#### PushMatrix

```lua
ImGui:PushMatrix()
```

[ClientOnly] Сохраняет текущую матрицу преобразования в стек. Глубина стека ограничена 32 уровнями.

#### Rotate

```lua
ImGui:Rotate(angle: number)
```

[ClientOnly] Поворачивает систему координат по часовой стрелке для последующих команд отрисовки текущего кадра.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `angle` | number |  | Угол поворота в градусах |

#### Scale

```lua
ImGui:Scale(scale: Vector2)
```

[ClientOnly] Масштабирует систему координат относительно её текущего начала для последующих команд отрисовки текущего кадра.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `scale` | Vector2 |  | Масштаб по осям X и Y |

#### SetAlphaMask

```lua
ImGui:SetAlphaMask(texture: Texture, rect: Rect)
```

[ClientOnly] Устанавливает альфа-маску для последующих команд отрисовки текущего кадра. Вся текстура маски отображается в указанную экранную область, а за её пределами ничего не рисуется. Повторный вызов заменяет текущую маску.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Текстура, альфа-канал которой используется как маска |
| `rect` | Rect |  | Экранная область маски |

#### Translate

```lua
ImGui:Translate(translation: Vector2)
```

[ClientOnly] Смещает систему координат для последующих команд отрисовки текущего кадра.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `translation` | Vector2 |  | Смещение в экранных координатах |

## ImGuiFont

[ClientOnly] Шрифты интерфейса, доступные для отрисовки текста через ImGui.

| Name | Value | Comment |
|---|---:|---|
| `NotoSansRegular` | `0` | [ClientOnly] Обычный Noto Sans. |
| `NotoSansMedium` | `1` | [ClientOnly] Средний Noto Sans. |
| `NotoSansBold` | `2` | [ClientOnly] Полужирный Noto Sans. |
| `NotoSansBlack` | `3` | [ClientOnly] Жирный Noto Sans. |
| `NotoSansItalic` | `4` | [ClientOnly] Курсивный Noto Sans. |
| `NotoSansMediumItalic` | `5` | [ClientOnly] Средний курсивный Noto Sans. |
| `NotoSansBoldItalic` | `6` | [ClientOnly] Полужирный курсивный Noto Sans. |

## ImGuiWindow

[ClientOnly]

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `ShouldClipContent` | bool | `get/set` |  | [ClientOnly] Указывает требуется ли обрезать всю отрисовку по границам окна. По умолчанию true. |


### Methods

#### ClearAlphaMask

```lua
ImGuiWindow:ClearAlphaMask()
```

[ClientOnly] Отключает альфа-маску для последующих команд отрисовки текущего кадра.

#### DrawCircle

```lua
ImGuiWindow:DrawCircle(center: Vector2, radius: number, color: Color, thickness: number = ..., segments: int = ...)
```

[ClientOnly] Рисует контур окружности внутри окна. Толщина располагается по обе стороны от указанного радиуса.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `center` | Vector2 |  | Центр окружности в координатах окна |
| `radius` | number |  | Радиус окружности |
| `color` | Color |  | Цвет окружности |
| `thickness` | number | ✅ | Толщина линии |
| `segments` | int | ✅ | Количество сегментов. Значение 0 подбирает количество автоматически, остальные значения ограничиваются диапазоном от 3 до 256 |

#### DrawKeyTip

```lua
ImGuiWindow:DrawKeyTip(inputAction: InputAction, rect: Rect, fontSize: number = ..., color: Color? = ...)
```

[ClientOnly] Рисует подсказку клавиши для действия ввода внутри окна.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `inputAction` | [InputAction](./InputAction.md#inputaction) |  | Действие ввода, назначенная клавиша которого будет отображена |
| `rect` | Rect |  | Область подсказки внутри окна |
| `fontSize` | number | ✅ | Размер шрифта |
| `color` | Color? | ✅ | Цвет фона подсказки |

#### DrawLine

```lua
ImGuiWindow:DrawLine(pos1: Vector2, pos2: Vector2, color: Color, thickness: number = ...)
```

[ClientOnly] Рисует линию между двумя точками внутри окна.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `pos1` | Vector2 |  | Начало линии в координатах окна |
| `pos2` | Vector2 |  | Конец линии в координатах окна |
| `color` | Color |  | Цвет линии |
| `thickness` | number | ✅ | Толщина линии |

#### DrawRect

```lua
ImGuiWindow:DrawRect(rect: Rect, color: Color)
```

[ClientOnly] Рисует заполненный прямоугольник внутри окна.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `rect` | Rect |  | Оконная область прямоугольника |
| `color` | Color |  | Цвет прямоугольника |

#### DrawText

```lua
ImGuiWindow:DrawText(text: string, rect: Rect, fontSize: number = ..., color: Color? = ..., alignment: TextAnchor = ..., font: ImGuiFont = ...)
```

Рисует текст внуртри окна.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Текст |
| `rect` | Rect |  | Область текста внуртри окна |
| `fontSize` | number | ✅ | Размер шрифта текста |
| `color` | Color? | ✅ | Цвет текста |
| `alignment` | [TextAnchor](./UI.md#textanchor) | ✅ | Позиционирование текста |
| `font` | [ImGuiFont](./ImGui.md#imguifont) | ✅ | Шрифт интерфейса |

#### DrawTexture

```lua
ImGuiWindow:DrawTexture(texture: Texture, rect: Rect? = ...)
```

Рисует текстуру внуртри окна.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Текстура для отрисовки |
| `rect` | Rect? | ✅ | Оконная область, в которой будет отрисована текстура (Если nil, то используется вся доступная область) |

#### DrawTextureColor

```lua
ImGuiWindow:DrawTextureColor(texture: Texture, color: Color, rect: Rect? = ...)
```

Рисует текстуру внуртри окна с наложением цветовой маски.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Текстура для отрисовки |
| `color` | Color |  | Цветовая маска, применяемая к текстуре |
| `rect` | Rect? | ✅ | Оконная область, в которой будет отрисована текстура (Если nil, то используется вся доступная область) |

#### DrawTextureRegion

```lua
ImGuiWindow:DrawTextureRegion(texture: Texture, color: Color, rect: Rect, uvRect: Rect)
```

[ClientOnly] Рисует область текстуры внутри окна. UV-область задаётся нормализованными координатами от левого верхнего угла текстуры.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Текстура для отрисовки |
| `color` | Color |  | Цветовая маска, применяемая к текстуре |
| `rect` | Rect |  | Область отрисовки внутри окна |
| `uvRect` | Rect |  | Нормализованная UV-область текстуры с началом координат в левом верхнем углу |

#### GetContentRenderSize

```lua
ImGuiWindow:GetContentRenderSize(): Vector2
```

[ClientOnly] Возвращает фактический размер области окна на экране в пикселях с учетом масштаба UI и масштаба плавающего окна.

**Returns:** Vector2

#### PopMatrix

```lua
ImGuiWindow:PopMatrix()
```

[ClientOnly] Восстанавливает последнюю сохранённую матрицу преобразования окна. Если стек пуст, матрица не изменяется.

#### PushMatrix

```lua
ImGuiWindow:PushMatrix()
```

[ClientOnly] Сохраняет текущую матрицу преобразования окна в стек. Глубина стека ограничена 32 уровнями.

#### Rotate

```lua
ImGuiWindow:Rotate(angle: number)
```

[ClientOnly] Поворачивает систему координат окна по часовой стрелке для последующих команд отрисовки текущего кадра.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `angle` | number |  | Угол поворота в градусах |

#### Scale

```lua
ImGuiWindow:Scale(scale: Vector2)
```

[ClientOnly] Масштабирует систему координат окна относительно её текущего начала для последующих команд отрисовки текущего кадра.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `scale` | Vector2 |  | Масштаб по осям X и Y |

#### SetAlphaMask

```lua
ImGuiWindow:SetAlphaMask(texture: Texture, rect: Rect)
```

[ClientOnly] Устанавливает альфа-маску для последующих команд отрисовки текущего кадра. Вся текстура маски отображается в указанную область окна, а за её пределами ничего не рисуется. Повторный вызов заменяет текущую маску.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Текстура, альфа-канал которой используется как маска |
| `rect` | Rect |  | Область маски в координатах окна |

#### SetVisibilityTypes

```lua
ImGuiWindow:SetVisibilityTypes(visibilityTypes: LuaTable): bool
```

[ClientOnly] Задает типы видимости окна в редакторе раскладки HUD. Передайте таблицу значений WindowVisibilityType. nil или пустая таблица оставляет окно только в фильтре всех режимов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `visibilityTypes` | LuaTable |  |  |

**Returns:** bool

#### Translate

```lua
ImGuiWindow:Translate(translation: Vector2)
```

[ClientOnly] Смещает систему координат окна для последующих команд отрисовки текущего кадра.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `translation` | Vector2 |  | Смещение в координатах окна |

