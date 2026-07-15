# ImGui

API простого Immediate-mode графического интерфейса

## Contents

- [ImGui](#imgui)
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

#### DrawDebugText

```lua
ImGui:DrawDebugText(text: string)
```

[ClientOnly] Отрисовывает отладочный текст в краю экрана.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Текст |

#### DrawText

```lua
ImGui:DrawText(text: string, rect: Rect, fontSize: number = ..., color: Color? = ..., alignment: TextAnchor = ...)
```

[ClientOnly] Рисует текст на экране.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Текст |
| `rect` | Rect |  | Область текста на экране |
| `fontSize` | number | ✅ | Размер шрифта текста |
| `color` | Color? | ✅ | Цвет текста |
| `alignment` | [TextAnchor](./UI.md#textanchor) | ✅ | Позиционирование текста |

#### DrawTextPos

```lua
ImGui:DrawTextPos(text: string, screenPosition: Vector2, fontSize: number = ..., color: Color? = ..., alignment: TextAnchor = ...)
```

[ClientOnly] Рисует текст на экране по указанной позиции и автоматически подбирает размер области под содержимое. Верхний левый угол экрана — (0,0).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Текст |
| `screenPosition` | Vector2 |  | Экранная позиция текста |
| `fontSize` | number | ✅ | Размер шрифта текста |
| `color` | Color? | ✅ | Цвет текста |
| `alignment` | [TextAnchor](./UI.md#textanchor) | ✅ | Позиционирование текста |

#### DrawTextUV

```lua
ImGui:DrawTextUV(text: string, viewportPosition: Vector2, fontSize: number = ..., color: Color? = ..., alignment: TextAnchor = ...)
```

[ClientOnly] Рисует текст по координатам viewport и автоматически подбирает размер области под содержимое. Используются X и Y, Z игнорируется. Нижний левый угол viewport — (0,0); верхний правый угол — (1,1).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Текст |
| `viewportPosition` | Vector2 |  | Позиция текста в координатах viewport |
| `fontSize` | number | ✅ | Размер шрифта текста |
| `color` | Color? | ✅ | Цвет текста |
| `alignment` | [TextAnchor](./UI.md#textanchor) | ✅ | Позиционирование текста |

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

## ImGuiWindow

[ClientOnly]

### Methods

#### DrawText

```lua
ImGuiWindow:DrawText(text: string, rect: Rect, fontSize: number, color: Color, alignment: TextAnchor = ...)
```

Рисует текст внуртри окна.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Текст |
| `rect` | Rect |  | Область текста внуртри окна |
| `fontSize` | number |  | Размер шрифта текста |
| `color` | Color |  | Цвет текста |
| `alignment` | [TextAnchor](./UI.md#textanchor) | ✅ | Позиционирование текста |

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

#### GetContentRenderSize

```lua
ImGuiWindow:GetContentRenderSize(): Vector2
```

[ClientOnly] Возвращает фактический размер области окна на экране в пикселях с учетом масштаба UI и масштаба плавающего окна.

**Returns:** Vector2

#### SetVisibilityTypes

```lua
ImGuiWindow:SetVisibilityTypes(visibilityTypes: LuaTable): bool
```

[ClientOnly] Задает типы видимости окна в редакторе раскладки HUD. Передайте таблицу значений WindowVisibilityType. nil или пустая таблица оставляет окно только в фильтре всех режимов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `visibilityTypes` | LuaTable |  |  |

**Returns:** bool

