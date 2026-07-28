# UI

API для создания продвинутого пользовательского интерфейса. Предоставляет доступ к Unity UI Toolkit.

## Contents

- [BackgroundPositionKeyword](#backgroundpositionkeyword)
- [BackgroundSizeType](#backgroundsizetype)
- [DisplayStyle](#displaystyle)
- [DotViewElement](#dotviewelement)
- [ElementStyle](#elementstyle)
- [ImageElement](#imageelement)
- [PlayerRankDisplay](#playerrankdisplay)
- [ScrollView](#scrollview)
- [TextAnchor](#textanchor)
- [TextElement](#textelement)
- [TextFieldElement](#textfieldelement)
- [Tweener](#tweener)
- [UI](#ui)
- [VisualElement](#visualelement)
- [WindowVisibilityType](#windowvisibilitytype)

---

## BackgroundPositionKeyword

[ClientOnly]

| Name | Value | Comment |
|---|---:|---|
| `Left` | `0` | [ClientOnly] |
| `Center` | `1` | [ClientOnly] |
| `Right` | `2` | [ClientOnly] |
| `Top` | `3` | [ClientOnly] |
| `Bottom` | `4` | [ClientOnly] |

## BackgroundSizeType

[ClientOnly]

| Name | Value | Comment |
|---|---:|---|
| `Contain` | `0` | [ClientOnly] |
| `Cover` | `1` | [ClientOnly] |
| `Auto` | `2` | [ClientOnly] |

## DisplayStyle

[ClientOnly]

| Name | Value | Comment |
|---|---:|---|
| `Flex` | `0` | [ClientOnly] |
| `None` | `1` | [ClientOnly] |

## DotViewElement

[ClientOnly]

**Base:** [VisualElement](./UI.md#visualelement)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `count` | int | `get/set` |  | count |
| `fillToValue` | bool | `get/set` |  | если true — подсвечиваются все точки от 0 до value включительно |
| `value` | int | `get/set` |  | value |


### Methods

#### Reset

```lua
DotViewElement:Reset()
```

Reset

## ElementStyle

[ClientOnly]

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `backgroundColor` | Color | `get/set` |  |  |
| `backgroundImage` | [Texture](./Texture.md#texture) | `set` |  |  |
| `backgroundPositionX` | [BackgroundPositionKeyword](./UI.md#backgroundpositionkeyword) | `get/set` |  |  |
| `backgroundPositionY` | [BackgroundPositionKeyword](./UI.md#backgroundpositionkeyword) | `get/set` |  |  |
| `backgroundSize` | [BackgroundSizeType](./UI.md#backgroundsizetype) | `get/set` |  |  |
| `borderRadius` | number | `set` |  |  |
| `bottom` | number | `get/set` |  |  |
| `color` | Color | `get/set` |  |  |
| `display` | [DisplayStyle](./UI.md#displaystyle) | `get/set` |  |  |
| `height` | number | `get/set` |  |  |
| `heightPercent` | number | `get/set` |  |  |
| `left` | number | `get/set` |  |  |
| `marginBottom` | number | `get/set` |  |  |
| `marginLeft` | number | `get/set` |  |  |
| `marginRight` | number | `get/set` |  |  |
| `marginTop` | number | `get/set` |  |  |
| `maxHeight` | number | `get/set` |  |  |
| `maxWidth` | number | `get/set` |  |  |
| `minHeight` | number | `get/set` |  |  |
| `minWidth` | number | `get/set` |  |  |
| `opacity` | number | `get/set` |  |  |
| `right` | number | `get/set` |  |  |
| `rotate` | number | `get/set` |  |  |
| `rotateAngle` | number | `get/set` |  |  |
| `scale` | Vector3 | `get/set` |  |  |
| `tintColor` | Color | `get/set` |  |  |
| `top` | number | `get/set` |  |  |
| `translate` | Vector3 | `get/set` |  |  |
| `width` | number | `get/set` |  |  |
| `widthPercent` | number | `get/set` |  |  |

## ImageElement

[ClientOnly]

**Base:** [VisualElement](./UI.md#visualelement)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) | `get/set` |  |  |

## PlayerRankDisplay

[ClientOnly] Глобальный API для отображения ранга игрока в UI.

### Methods

#### BindAgent

```lua
PlayerRankDisplay:BindAgent(agent: Agent, cntAvatarRank: VisualElement, imgRank: VisualElement)
```

[ClientOnly] Привязывает ранг агента к UI-элементам аватара: фон ранга устанавливается на cntAvatarRank, иконка ранга на imgRank.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |
| `cntAvatarRank` | [VisualElement](./UI.md#visualelement) |  |  |
| `imgRank` | [VisualElement](./UI.md#visualelement) |  |  |

#### Clear

```lua
PlayerRankDisplay:Clear(cntAvatarRank: VisualElement, imgRank: VisualElement)
```

[ClientOnly] Очищает фон и иконку ранга у переданных UI-элементов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `cntAvatarRank` | [VisualElement](./UI.md#visualelement) |  |  |
| `imgRank` | [VisualElement](./UI.md#visualelement) |  |  |

## ScrollView

[ClientOnly]

**Base:** [VisualElement](./UI.md#visualelement)

### Methods

#### CanScrollByDelta

```lua
ScrollView:CanScrollByDelta(deltaY: number): bool
```

Проверяет, можно ли прокрутить ScrollView на указанную дельту колесика мыши.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `deltaY` | number |  |  |

**Returns:** bool

#### DisableAutoScroll

```lua
ScrollView:DisableAutoScroll()
```

#### EnableAutoScroll

```lua
ScrollView:EnableAutoScroll()
```

#### RefreshVerticalScrollerVisibility

```lua
ScrollView:RefreshVerticalScrollerVisibility()
```

Обновляет видимость вертикального скроллбара по фактическому переполнению контента.

#### ScrollByDelta

```lua
ScrollView:ScrollByDelta(deltaY: number): bool
```

Прокручивает ScrollView на указанную дельту колесика мыши. Возвращает true, если прокрутка была выполнена.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `deltaY` | number |  |  |

**Returns:** bool

#### ScrollToBottom

```lua
ScrollView:ScrollToBottom()
```

#### ScrollToTop

```lua
ScrollView:ScrollToTop()
```

## TextAnchor

[ClientOnly]

| Name | Value | Comment |
|---|---:|---|
| `UpperLeft` | `0` | [ClientOnly] |
| `UpperCenter` | `1` | [ClientOnly] |
| `UpperRight` | `2` | [ClientOnly] |
| `MiddleLeft` | `3` | [ClientOnly] |
| `MiddleCenter` | `4` | [ClientOnly] |
| `MiddleRight` | `5` | [ClientOnly] |
| `LowerLeft` | `6` | [ClientOnly] |
| `LowerCenter` | `7` | [ClientOnly] |
| `LowerRight` | `8` | [ClientOnly] |

## TextElement

[ClientOnly]

**Base:** [VisualElement](./UI.md#visualelement)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `text` | string | `get/set` |  |  |

## TextFieldElement

[ClientOnly]

**Base:** [VisualElement](./UI.md#visualelement)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `IsFocused` | bool | `get` |  |  |
| `value` | string | `get/set` |  |  |


### Methods

#### Focus

```lua
TextFieldElement:Focus()
```

## Tweener

[ClientOnly]

### Methods

#### IsComplete

```lua
Tweener:IsComplete(): bool
```

**Returns:** bool

#### Stop

```lua
Tweener:Stop(complete: bool = ...)
```

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `complete` | bool | ✅ |  |

## UI

[ClientOnly]

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `IsConsoleVisible` | bool | `get` |  | [ClientOnly] true, если окно отладочной консоли сейчас отображается. |
| `IsCursorUnlocked` | bool | `get` |  | [ClientOnly] true, если курсор сейчас разблокирован игровым состоянием или через UI API. |
| `IsExclusiveWindowOpen` | bool | `get` |  | [ClientOnly] |
| `IsWindowOpen` | bool | `get` |  | [ClientOnly] |


### Methods

#### BlurBackground

```lua
UI:BlurBackground(element: VisualElement): bool
```

[ClientOnly]

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### BuildFromUxml

```lua
UI:BuildFromUxml(path: string, id: string, title: string, anchorMode: string, posX: string, posY: string): VisualElement
```

[ClientOnly] Собирает окно из UXML и возвращает его корневой элемент. Возвращает nil, если id пустой, UXML не найден или превышен лимит UI-объектов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `path` | string |  |  |
| `id` | string |  |  |
| `title` | string |  |  |
| `anchorMode` | string |  |  |
| `posX` | string |  |  |
| `posY` | string |  |  |

**Returns:** [VisualElement](./UI.md#visualelement)

#### BuildFromUxmlAbsolute

```lua
UI:BuildFromUxmlAbsolute(path: string): VisualElement
```

[ClientOnly] Собирает UI из UXML без окна и добавляет его в корень. Возвращает nil, если UXML не найден или превышен лимит UI-объектов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `path` | string |  |  |

**Returns:** [VisualElement](./UI.md#visualelement)

#### BuildFromUxmlAbsoluteCenter

```lua
UI:BuildFromUxmlAbsoluteCenter(path: string, id: string, title: string): VisualElement
```

[ClientOnly] Собирает окно из UXML с абсолютным центром и возвращает его корневой элемент. Возвращает nil, если UXML не найден или превышен лимит UI-объектов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `path` | string |  |  |
| `id` | string |  |  |
| `title` | string |  |  |

**Returns:** [VisualElement](./UI.md#visualelement)

#### BuildFromUxmlInteractive

```lua
UI:BuildFromUxmlInteractive(path: string): VisualElement
```

[ClientOnly] Собирает UI из UXML и сразу включает обработку событий мыши (`pickingMode = Position`). Используйте для интерактивных меню. Возвращает nil, если UXML не найден или превышен лимит UI-объектов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `path` | string |  |  |

**Returns:** [VisualElement](./UI.md#visualelement)

#### CloseWindow

```lua
UI:CloseWindow(element: VisualElement, hideVisual: bool = ...): bool
```

[ClientOnly] Закрывает указанное открытое окно. Если hideVisual = false, элемент остается видимым. Возвращает true при успехе.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |
| `hideVisual` | bool | ✅ |  |

**Returns:** bool

#### CreateFromUxml

```lua
UI:CreateFromUxml(path: string): VisualElement
```

[ClientOnly] Создает UI-элемент из UXML без добавления в корень. Возвращает nil, если UXML не найден или превышен лимит UI-объектов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `path` | string |  |  |

**Returns:** [VisualElement](./UI.md#visualelement)

#### CreateLabel

```lua
UI:CreateLabel(): TextElement
```

[ClientOnly] Создает TextElement. Возвращает nil, если превышен лимит UI-объектов.

**Returns:** [TextElement](./UI.md#textelement)

#### CreateVisualElement

```lua
UI:CreateVisualElement(): VisualElement
```

[ClientOnly] Создает пустой VisualElement. Возвращает nil, если превышен лимит UI-объектов.

**Returns:** [VisualElement](./UI.md#visualelement)

#### Delete

```lua
UI:Delete(element: VisualElement): bool
```

[ClientOnly] Полностью удаляет UI-элемент: закрывает окно при необходимости, убирает его из иерархии и запрещает дальнейшее использование.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### GetMousePosition

```lua
UI:GetMousePosition(): Vector2
```

[ClientOnly]

**Returns:** Vector2

#### HideOverlappingUI

```lua
UI:HideOverlappingUI(element: VisualElement): bool
```

[ClientOnly]

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### LockCursor

```lua
UI:LockCursor(element: VisualElement): bool
```

[ClientOnly]

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### LockPlayerInput

```lua
UI:LockPlayerInput(element: VisualElement): bool
```

[ClientOnly]

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### OpenWindow

```lua
UI:OpenWindow(element: VisualElement, unlockCursor: bool, lockInput: bool, hideOverlappingUI: bool, blurBackground: bool): bool
```

[ClientOnly] Открывает эксклюзивное окно модуля. Окно модуля с тегом Chat может открываться поверх любого другого эксклюзивного окна. Возвращает true при успехе.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |
| `unlockCursor` | bool |  |  |
| `lockInput` | bool |  |  |
| `hideOverlappingUI` | bool |  |  |
| `blurBackground` | bool |  |  |

**Returns:** bool

#### Q

```lua
UI:Q(root: VisualElement, id: string): VisualElement
```

[ClientOnly] Ищет дочерний элемент по имени и возвращает его. Возвращает nil, если элемент не найден.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `root` | [VisualElement](./UI.md#visualelement) |  |  |
| `id` | string |  |  |

**Returns:** [VisualElement](./UI.md#visualelement)

#### RemoveFromHierarchy

```lua
UI:RemoveFromHierarchy(root: VisualElement)
```

[ClientOnly]

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `root` | [VisualElement](./UI.md#visualelement) |  |  |

#### ScheduleAnimation

```lua
UI:ScheduleAnimation(root: VisualElement, paramsTable: LuaTable): Tweener
```

[ClientOnly] Запускает анимацию для указанного элемента и возвращает tweener. В таблице параметров можно передать `replaceExisting = true`, чтобы перед запуском остановить предыдущую заменяемую анимацию на этом элементе. Возвращает nil, если root или таблица параметров равны nil, либо превышен лимит анимаций.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `root` | [VisualElement](./UI.md#visualelement) |  |  |
| `paramsTable` | LuaTable |  |  |

**Returns:** [Tweener](./UI.md#tweener)

#### SetWindowVisibilityTypes

```lua
UI:SetWindowVisibilityTypes(element: VisualElement, visibilityTypes: LuaTable): bool
```

[ClientOnly] Задает типы видимости окна в редакторе раскладки HUD. Передайте таблицу значений WindowVisibilityType. nil или пустая таблица оставляет окно только в фильтре всех режимов.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |
| `visibilityTypes` | LuaTable |  |  |

**Returns:** bool

#### ShowOverlappingUI

```lua
UI:ShowOverlappingUI(element: VisualElement): bool
```

[ClientOnly]

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### ToUpperInvariant

```lua
UI:ToUpperInvariant(text: string): string
```

[ClientOnly] Возвращает строку в верхнем регистре по инвариантной культуре. Если передан nil, возвращает nil.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  |  |

**Returns:** string

#### UiToViewportPoint

```lua
UI:UiToViewportPoint(uiPoint: Vector2): Vector2
```

[ClientOnly] Преобразует UI-координаты в координаты viewport. Нижний левый угол viewport — (0,0); верхний правый угол — (1,1).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `uiPoint` | Vector2 |  |  |

**Returns:** Vector2

#### UnblurBackground

```lua
UI:UnblurBackground(element: VisualElement): bool
```

[ClientOnly]

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### UnlockCursor

```lua
UI:UnlockCursor(element: VisualElement): bool
```

[ClientOnly]

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### UnlockPlayerInput

```lua
UI:UnlockPlayerInput(element: VisualElement): bool
```

[ClientOnly]

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### ViewportToUiPoint

```lua
UI:ViewportToUiPoint(viewportPoint: Vector3): Vector2
```

[ClientOnly] Преобразует координаты viewport (0..1) в UI-координаты. Верхний левый угол UI-координат — (0,0); нижний правый угол — (Screen.width,Screen.height). Z координата не используется.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `viewportPoint` | Vector3 |  |  |

**Returns:** Vector2

## VisualElement

[ClientOnly]

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `childCount` | int | `get` |  |  |
| `hasChildren` | bool | `get` |  |  |
| `height` | number | `get` |  |  |
| `name` | string | `get` |  |  |
| `style` | [ElementStyle](./UI.md#elementstyle) | `get` |  |  |
| `visible` | bool | `get/set` |  |  |
| `width` | number | `get` |  |  |
| `windowScale` | number | `get` |  |  |


### Methods

#### Add

```lua
VisualElement:Add(element: VisualElement)
```

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

#### AddToClassList

```lua
VisualElement:AddToClassList(className: string)
```

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `className` | string |  |  |

#### Clear

```lua
VisualElement:Clear()
```

#### Delete

```lua
VisualElement:Delete(): bool
```

Полностью удаляет этот UI-элемент и запрещает дальнейшее использование.

**Returns:** bool

#### EnableInClassList

```lua
VisualElement:EnableInClassList(className: string, value: bool)
```

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `className` | string |  |  |
| `value` | bool |  |  |

#### EnableMouseEvents

```lua
VisualElement:EnableMouseEvents()
```

Включает обработку событий мыши и указателя для элемента, устанавливая pickingMode в Position.

#### GetChild

```lua
VisualElement:GetChild(name: string): VisualElement
```

Возвращает дочерний элемент по имени или nil, если элемент не найден.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `name` | string |  |  |

**Returns:** [VisualElement](./UI.md#visualelement)

#### GetChildAt

```lua
VisualElement:GetChildAt(index: int): VisualElement
```

Возвращает дочерний элемент по индексу. Может вернуть nil, если для найденного элемента не удалось получить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `index` | int |  |  |

**Returns:** [VisualElement](./UI.md#visualelement)

#### GetPickingMode

```lua
VisualElement:GetPickingMode(): int
```

Возвращает текущий pickingMode элемента: 0 для Position, 1 для Ignore.

**Returns:** int

#### OnClick

```lua
VisualElement:OnClick(callback: LuaFunction)
```

Регистрирует коллбэк для событий клика на этом элементе.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

#### OnMouseEnter

```lua
VisualElement:OnMouseEnter(callback: LuaFunction)
```

Регистрирует коллбэк для событий начала наведения на этом элементе.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

#### OnMouseLeave

```lua
VisualElement:OnMouseLeave(callback: LuaFunction)
```

Регистрирует коллбэк для событий окончания наведения на этом элементе.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

#### OnPointerDown

```lua
VisualElement:OnPointerDown(callback: LuaFunction)
```

Регистрирует коллбэк для событий нажатия указателя на этом элементе.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

#### RemoveFromHierarchy

```lua
VisualElement:RemoveFromHierarchy()
```

#### ScheduleAnimation

```lua
VisualElement:ScheduleAnimation(pars: LuaTable): Tweener
```

Запускает анимацию элемента и возвращает tweener. В таблице параметров можно передать `replaceExisting = true`, чтобы перед запуском остановить предыдущую заменяемую анимацию на этом элементе. Возвращает nil, если таблица параметров равна nil или превышен лимит анимаций.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `pars` | LuaTable |  |  |

**Returns:** [Tweener](./UI.md#tweener)

#### SendToBack

```lua
VisualElement:SendToBack()
```

Отправляет элемент в конец списка детей родителя, чтобы он рисовался позади соседних элементов.

#### SetBorderColor

```lua
VisualElement:SetBorderColor(color: Color)
```

[ClientOnly] Устанавливает цвет всех сторон рамки элемента.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `color` | Color |  |  |

#### SetCursor

```lua
VisualElement:SetCursor(cursorName: string): bool
```

[ClientOnly] Устанавливает курсор для элемента. Поддерживаются значения 'arrow', 'hand', 'text', 'move', 'resize-horizontal', 'resize-vertical', 'pipette'.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `cursorName` | string |  |  |

**Returns:** bool

#### SetName

```lua
VisualElement:SetName(name: string)
```

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `name` | string |  |  |

#### SetPickingMode

```lua
VisualElement:SetPickingMode(mode: int)
```

Устанавливает режим обработки указателя для элемента. 'Position' (0) принимает события мыши, 'Ignore' (1) пропускает их сквозь элемент.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `mode` | int |  |  |

## WindowVisibilityType

[ClientOnly] Тип видимости окна в редакторе раскладки HUD.

| Name | Value | Comment |
|---|---:|---|
| `Match` | `0` | [ClientOnly] Окно отображается в фильтре обычного матча. |
| `Spectate` | `1` | [ClientOnly] Окно отображается в фильтре наблюдения. |
| `Killcam` | `2` | [ClientOnly] Окно отображается в фильтре killcam. |

