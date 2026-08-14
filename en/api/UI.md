# UI

API for creating advanced user interfaces. Provides access to Unity UI Toolkit.

## Contents

- [ArcDirection](#arcdirection)
- [BackgroundPositionKeyword](#backgroundpositionkeyword)
- [BackgroundSizeType](#backgroundsizetype)
- [DisplayStyle](#displaystyle)
- [DotViewElement](#dotviewelement)
- [ElementStyle](#elementstyle)
- [FillRule](#fillrule)
- [ImageElement](#imageelement)
- [LineCap](#linecap)
- [LineJoin](#linejoin)
- [PainterElement](#painterelement)
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

## ArcDirection

[ClientOnly] Arc direction.

| Name | Value | Comment |
|---|---:|---|
| `Clockwise` | `0` | [ClientOnly] Clockwise. |
| `CounterClockwise` | `1` | [ClientOnly] Counterclockwise. |

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
| `fillToValue` | bool | `get/set` |  | if true, all dots from 0 through value are highlighted |
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

## FillRule

[ClientOnly] Rule for determining the interior of a path.

| Name | Value | Comment |
|---|---:|---|
| `NonZero` | `0` | [ClientOnly] Non-zero fill rule. |
| `OddEven` | `1` | [ClientOnly] Odd-even fill rule. |

## ImageElement

[ClientOnly]

**Base:** [VisualElement](./UI.md#visualelement)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) | `get/set` |  |  |

## LineCap

[ClientOnly] Line cap type.

| Name | Value | Comment |
|---|---:|---|
| `Butt` | `0` | [ClientOnly] Flat cap at the line endpoint. |
| `Round` | `1` | [ClientOnly] Rounded line cap. |

## LineJoin

[ClientOnly] Line join type.

| Name | Value | Comment |
|---|---:|---|
| `Miter` | `0` | [ClientOnly] Mitered line join. |
| `Round` | `1` | [ClientOnly] Rounded line join. |
| `Bevel` | `2` | [ClientOnly] Beveled line join. |

## PainterElement

[ClientOnly] A UI element for drawing 2D vector graphics with Painter2D commands. Stores up to 1024 drawing commands. Once the limit is reached, new commands are silently ignored until ClearCommands is called.

**Base:** [VisualElement](./UI.md#visualelement)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `CommandCount` | int | `get` |  | [ClientOnly] Number of retained commands executed when the element is drawn. The maximum value is 1024. |
| `DashOffset` | number | `get/set` |  | [ClientOnly] Offset at which the dash pattern begins when stroking paths with Stroke. |
| `FillColor` | Color | `get/set` |  | [ClientOnly] Color used to fill paths with Fill. |
| `FillTexture` | [Texture](./Texture.md#texture) | `get/set` |  | [ClientOnly] Texture used to fill paths with Fill. Set to nil to disable the texture. |
| `LineCap` | [LineCap](./UI.md#linecap) | `get/set` |  | [ClientOnly] Line cap used when stroking paths with Stroke. |
| `LineJoin` | [LineJoin](./UI.md#linejoin) | `get/set` |  | [ClientOnly] Line join used when stroking paths with Stroke. |
| `LineWidth` | number | `get/set` |  | [ClientOnly] Line width used when stroking paths with Stroke. |
| `MiterLimit` | number | `get/set` |  | [ClientOnly] Maximum ratio of the miter length to the line width for LineJoin.Miter joins when stroking paths with Stroke. |
| `StrokeColor` | Color | `get/set` |  | [ClientOnly] Color used to stroke paths with Stroke. |


### Methods

#### Arc

```lua
PainterElement:Arc(center: Vector2, radius: number, startAngle: number, endAngle: number, direction: ArcDirection = ...)
```

[ClientOnly] Adds an arc with angles in degrees to the current subpath.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `center` | Vector2 |  |  |
| `radius` | number |  |  |
| `startAngle` | number |  |  |
| `endAngle` | number |  |  |
| `direction` | [ArcDirection](./UI.md#arcdirection) | ✅ |  |

#### ArcTo

```lua
PainterElement:ArcTo(p1: Vector2, p2: Vector2, radius: number)
```

[ClientOnly] Adds an arc to the current subpath that is tangent to the segments from the current point to p1 and from p1 to p2.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `p1` | Vector2 |  |  |
| `p2` | Vector2 |  |  |
| `radius` | number |  |  |

#### BeginPath

```lua
PainterElement:BeginPath()
```

[ClientOnly] Begins a new path and clears the previously recorded subpaths of the current path.

#### BezierCurveTo

```lua
PainterElement:BezierCurveTo(p1: Vector2, p2: Vector2, p3: Vector2)
```

[ClientOnly] Adds a cubic Bezier curve to the current subpath.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `p1` | Vector2 |  |  |
| `p2` | Vector2 |  |  |
| `p3` | Vector2 |  |  |

#### ClearCommands

```lua
PainterElement:ClearCommands()
```

[ClientOnly] Clears all retained drawing commands.

#### ClosePath

```lua
PainterElement:ClosePath()
```

[ClientOnly] Closes the current subpath with a straight line.

#### Fill

```lua
PainterElement:Fill(fillRule: FillRule = ...)
```

[ClientOnly] Fills the current path.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `fillRule` | [FillRule](./UI.md#fillrule) | ✅ |  |

#### GetDashPattern

```lua
PainterElement:GetDashPattern(values: LuaTable): int
```

[ClientOnly] Copies the current dash pattern into the provided table and returns the number of values.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `values` | LuaTable |  |  |

**Returns:** int

#### LineTo

```lua
PainterElement:LineTo(position: Vector2)
```

[ClientOnly] Adds a straight line to the specified point.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `position` | Vector2 |  |  |

#### MoveTo

```lua
PainterElement:MoveTo(position: Vector2)
```

[ClientOnly] Begins a new subpath at the specified point.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `position` | Vector2 |  |  |

#### QuadraticCurveTo

```lua
PainterElement:QuadraticCurveTo(p1: Vector2, p2: Vector2)
```

[ClientOnly] Adds a quadratic Bezier curve to the current subpath.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `p1` | Vector2 |  |  |
| `p2` | Vector2 |  |  |

#### SetDashPattern

```lua
PainterElement:SetDashPattern(pattern: LuaTable): bool
```

[ClientOnly] Sets alternating dash and gap lengths from a numeric table. Returns true if the pattern was set successfully.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `pattern` | LuaTable |  |  |

**Returns:** bool

#### SetDashPattern

```lua
PainterElement:SetDashPattern(dash: number, gap: number): bool
```

[ClientOnly] Sets a simple dash pattern from a dash length and a gap length. Returns true if the pattern was set successfully.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `dash` | number |  |  |
| `gap` | number |  |  |

**Returns:** bool

#### Stroke

```lua
PainterElement:Stroke()
```

[ClientOnly] Strokes the current path.

## PlayerRankDisplay

[ClientOnly] Global API for displaying a player's rank in the UI.

### Methods

#### BindAgent

```lua
PlayerRankDisplay:BindAgent(agent: Agent, cntAvatarRank: VisualElement, imgRank: VisualElement)
```

[ClientOnly] Binds the agent's rank to avatar UI elements: the rank background is applied to cntAvatarRank, and the rank icon is applied to imgRank.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |
| `cntAvatarRank` | [VisualElement](./UI.md#visualelement) |  |  |
| `imgRank` | [VisualElement](./UI.md#visualelement) |  |  |

#### Clear

```lua
PlayerRankDisplay:Clear(cntAvatarRank: VisualElement, imgRank: VisualElement)
```

[ClientOnly] Clears the rank background and icon from the provided UI elements.

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

Checks whether the ScrollView can be scrolled by the specified mouse wheel delta.

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

Refreshes the visibility of the vertical scrollbar based on the actual content overflow.

#### ScrollByDelta

```lua
ScrollView:ScrollByDelta(deltaY: number): bool
```

Scrolls the ScrollView by the specified mouse wheel delta. Returns true if scrolling was performed.

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
| `IsConsoleVisible` | bool | `get` |  | [ClientOnly] true if the debug console window is currently visible. |
| `IsCursorUnlocked` | bool | `get` |  | [ClientOnly] true if the cursor is currently unlocked by the gameplay state or through the UI API. |
| `IsExclusiveWindowOpen` | bool | `get` |  | [ClientOnly] true if at least one module has an open window. |
| `IsWindowOpen` | bool | `get` |  | [ClientOnly] true if this module has at least one open window. |


### Methods

#### BlurBackground

```lua
UI:BlurBackground(element: VisualElement): bool
```

[ClientOnly] Enables background blur for the specified open window. Returns true on success.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### BuildFromUxml

```lua
UI:BuildFromUxml(path: string, id: string, title: string, anchorMode: string, posX: string, posY: string): VisualElement
```

[ClientOnly] Builds a window from UXML and returns its root element. Returns nil if the id is empty, the UXML is not found, or the UI object limit is exceeded.

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

[ClientOnly] Builds UI from UXML without a window and adds it to the root. Returns nil if the UXML is not found or the UI object limit is exceeded.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `path` | string |  |  |

**Returns:** [VisualElement](./UI.md#visualelement)

#### BuildFromUxmlAbsoluteCenter

```lua
UI:BuildFromUxmlAbsoluteCenter(path: string, id: string, title: string): VisualElement
```

[ClientOnly] Builds a window from UXML with absolute centering and returns its root element. Returns nil if the UXML is not found or the UI object limit is exceeded.

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

[ClientOnly] Builds UI from UXML and immediately enables mouse event handling (`pickingMode = Position`). Use this for interactive menus. Returns nil if the UXML is not found or the UI object limit is exceeded.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `path` | string |  |  |

**Returns:** [VisualElement](./UI.md#visualelement)

#### CloseWindow

```lua
UI:CloseWindow(element: VisualElement, hideVisual: bool = ...): bool
```

[ClientOnly] Closes the specified open window. If hideVisual = false, the element remains visible. Returns true on success.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |
| `hideVisual` | bool | ✅ |  |

**Returns:** bool

#### CreateFromUxml

```lua
UI:CreateFromUxml(path: string): VisualElement
```

[ClientOnly] Creates a UI element from UXML without adding it to the root. Returns nil if the UXML is not found or the UI object limit is exceeded.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `path` | string |  |  |

**Returns:** [VisualElement](./UI.md#visualelement)

#### CreateLabel

```lua
UI:CreateLabel(): TextElement
```

[ClientOnly] Creates a TextElement. Returns nil if the UI object limit is exceeded.

**Returns:** [TextElement](./UI.md#textelement)

#### CreatePainter

```lua
UI:CreatePainter(): PainterElement
```

[ClientOnly] Creates a PainterElement for drawing 2D vector graphics. Returns nil if the UI object limit is exceeded.

**Returns:** [PainterElement](./UI.md#painterelement)

#### CreateVisualElement

```lua
UI:CreateVisualElement(): VisualElement
```

[ClientOnly] Creates an empty VisualElement. Returns nil if the UI object limit is exceeded.

**Returns:** [VisualElement](./UI.md#visualelement)

#### Delete

```lua
UI:Delete(element: VisualElement): bool
```

[ClientOnly] Completely deletes the UI element: closes the window if needed, removes it from the hierarchy, and prevents further use.

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

[ClientOnly] Hides HUD elements that overlap the specified open window. Other open windows remain visible. Returns true on success.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### LockCursor

```lua
UI:LockCursor(element: VisualElement): bool
```

[ClientOnly] Stops the specified open window from unlocking the cursor. Returns true on success.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### LockPlayerInput

```lua
UI:LockPlayerInput(element: VisualElement): bool
```

[ClientOnly] Locks player input for the specified open window. Returns true on success.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### OpenWindow

```lua
UI:OpenWindow(element: VisualElement, unlockCursor: bool, lockInput: bool, hideOverlappingUI: bool, blurBackground: bool): bool
```

[ClientOnly] Opens a module window with its previously assigned priority. Multiple windows can be open at the same time. Returns true on success.

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

[ClientOnly] Finds a child element by name and returns it. Returns nil if the element is not found.

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

[ClientOnly] Starts an animation for the specified element and returns a tweener. You can pass `replaceExisting = true` in the parameter table to stop the previous replaceable animation on this element before starting a new one. Returns nil if root or the parameter table is nil, or if the animation limit is exceeded.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `root` | [VisualElement](./UI.md#visualelement) |  |  |
| `paramsTable` | LuaTable |  |  |

**Returns:** [Tweener](./UI.md#tweener)

#### SetWindowPriority

```lua
UI:SetWindowPriority(element: VisualElement, priority: int): bool
```

[ClientOnly] Sets the priority of a window or HUD element. An element with a higher priority is displayed on top. If priorities are equal, the element whose priority was set later is displayed on top. The default priority is 0. Returns true on success.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |
| `priority` | int |  |  |

**Returns:** bool

#### SetWindowVisibilityTypes

```lua
UI:SetWindowVisibilityTypes(element: VisualElement, visibilityTypes: LuaTable): bool
```

[ClientOnly] Sets the window visibility types in the HUD layout editor. Pass a table of WindowVisibilityType values. nil or an empty table leaves the window only in the All modes filter.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |
| `visibilityTypes` | LuaTable |  |  |

**Returns:** bool

#### ShowOverlappingUI

```lua
UI:ShowOverlappingUI(element: VisualElement): bool
```

[ClientOnly] Stops hiding HUD elements for the specified open window. Returns true on success.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### ShowPlayerContextMenu

```lua
UI:ShowPlayerContextMenu(agent: Agent, ownerWindow: VisualElement = ...)
```

[ClientOnly] Opens the context menu for the player controlling the specified agent. If an owner window is provided, the menu closes automatically when that window closes.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |
| `ownerWindow` | [VisualElement](./UI.md#visualelement) | ✅ |  |

#### ToUpperInvariant

```lua
UI:ToUpperInvariant(text: string): string
```

[ClientOnly] Returns the string in uppercase using the invariant culture. If nil is passed, returns nil.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  |  |

**Returns:** string

#### UiToViewportPoint

```lua
UI:UiToViewportPoint(uiPoint: Vector2): Vector2
```

[ClientOnly] Converts UI coordinates to viewport coordinates. The lower-left viewport corner is (0,0); the upper-right corner is (1,1).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `uiPoint` | Vector2 |  |  |

**Returns:** Vector2

#### UnblurBackground

```lua
UI:UnblurBackground(element: VisualElement): bool
```

[ClientOnly] Disables background blur for the specified open window. Returns true on success.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### UnlockCursor

```lua
UI:UnlockCursor(element: VisualElement): bool
```

[ClientOnly] Unlocks the cursor for the specified open window. Returns true on success.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### UnlockPlayerInput

```lua
UI:UnlockPlayerInput(element: VisualElement): bool
```

[ClientOnly] Stops the specified open window from locking player input. Returns true on success.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `element` | [VisualElement](./UI.md#visualelement) |  |  |

**Returns:** bool

#### ViewportToUiPoint

```lua
UI:ViewportToUiPoint(viewportPoint: Vector3): Vector2
```

[ClientOnly] Converts viewport coordinates (0..1) to UI coordinates. The upper-left UI corner is (0,0); the lower-right corner is (Screen.width,Screen.height). The Z coordinate is not used.

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

Completely deletes this UI element and prevents further use.

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

Make this element receive mouse/pointer events (sets pickingMode to Position).

#### GetChild

```lua
VisualElement:GetChild(name: string): VisualElement
```

Returns the child element by name, or nil if the element is not found.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `name` | string |  |  |

**Returns:** [VisualElement](./UI.md#visualelement)

#### GetChildAt

```lua
VisualElement:GetChildAt(index: int): VisualElement
```

Returns the child element by index. May return nil if a wrapper for the found element could not be obtained.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `index` | int |  |  |

**Returns:** [VisualElement](./UI.md#visualelement)

#### GetPickingMode

```lua
VisualElement:GetPickingMode(): int
```

Get the current picking mode of this element. Returns 0 for Position, 1 for Ignore.

**Returns:** int

#### OnClick

```lua
VisualElement:OnClick(callback: LuaFunction)
```

Register a callback for click events on this element.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

#### OnMouseEnter

```lua
VisualElement:OnMouseEnter(callback: LuaFunction)
```

Register a callback for mouse enter (hover start) events on this element.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

#### OnMouseLeave

```lua
VisualElement:OnMouseLeave(callback: LuaFunction)
```

Register a callback for mouse leave (hover end) events on this element.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

#### OnPointerDown

```lua
VisualElement:OnPointerDown(callback: LuaFunction)
```

Register a callback for pointer down events on this element.

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

Starts an animation for the element and returns a tweener. You can pass `replaceExisting = true` in the parameter table to stop the previous replaceable animation on this element before starting a new one. Returns nil if the parameter table is nil or the animation limit is exceeded.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `pars` | LuaTable |  |  |

**Returns:** [Tweener](./UI.md#tweener)

#### SendToBack

```lua
VisualElement:SendToBack()
```

Send this element to the back of its parent's children (renders behind siblings).

#### SetBorderColor

```lua
VisualElement:SetBorderColor(color: Color)
```

[ClientOnly] Sets the color of all element border sides.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `color` | Color |  |  |

#### SetCursor

```lua
VisualElement:SetCursor(cursorName: string): bool
```

[ClientOnly] Sets the cursor for this element. Supported values: 'arrow', 'hand', 'text', 'move', 'resize-horizontal', 'resize-vertical', 'pipette'.

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

Set the picking mode for this element. Use 'Position' (0) to receive mouse events, 'Ignore' (1) to pass through.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `mode` | int |  |  |

## WindowVisibilityType

[ClientOnly] Window visibility type in the HUD layout editor.

| Name | Value | Comment |
|---|---:|---|
| `Match` | `0` | [ClientOnly] The window appears in the regular match filter. |
| `Spectate` | `1` | [ClientOnly] The window appears in the spectating filter. |
| `Killcam` | `2` | [ClientOnly] The window appears in the killcam filter. |

