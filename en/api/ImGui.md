# ImGui

Simple immediate-mode GUI API.

## Contents

- [ImGui](#imgui)
- [ImGuiWindow](#imguiwindow)

---

## ImGui

[ClientOnly] System for quickly drawing user interfaces through OnGUI methods.

### Methods

#### AddImGuiWindow

```lua
ImGui:AddImGuiWindow(id: string, title: string, rect: Rect): ImGuiWindow
```

[ClientOnly] Creates a new ImGui window that the user can configure in UI edit mode. Returns nil if the id is empty or the window limit is exceeded.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `id` | string |  | Identifier of the window being created, must be unique. |
| `title` | string |  | Title of the window being created. |
| `rect` | Rect |  | Window area on the screen. |

**Returns:** [ImGuiWindow](./ImGui.md#imguiwindow)

#### DrawDebugText

```lua
ImGui:DrawDebugText(text: string)
```

[ClientOnly] Draws debug text at the edge of the screen.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Text. |

#### DrawSprite

```lua
ImGui:DrawSprite(sprite: Sprite, rect: Rect? = ...)
```

[ClientOnly] Draws a sprite on the screen.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `sprite` | [Sprite](./Sprite.md#sprite) |  | Sprite to draw. |
| `rect` | Rect? | ✅ | Screen area where the sprite will be drawn (if nil, the entire available area is used). |

#### DrawSpriteColor

```lua
ImGui:DrawSpriteColor(sprite: Sprite, color: Color, rect: Rect? = ...)
```

[ClientOnly] Draws a sprite on the screen with a color mask overlay.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `sprite` | [Sprite](./Sprite.md#sprite) |  | Sprite to draw. |
| `color` | Color |  | Color mask applied to the sprite. |
| `rect` | Rect? | ✅ | Screen area where the sprite will be drawn (if nil, the entire available area is used). |

#### DrawText

```lua
ImGui:DrawText(text: string, rect: Rect, fontSize: number = ..., color: Color? = ..., alignment: TextAnchor = ...)
```

[ClientOnly] Draws text on the screen.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Text. |
| `rect` | Rect |  | Text area on the screen. |
| `fontSize` | number | ✅ | Font size of the text. |
| `color` | Color? | ✅ | Text color. |
| `alignment` | [TextAnchor](./UI.md#textanchor) | ✅ | Text alignment. |

#### DrawTextPos

```lua
ImGui:DrawTextPos(text: string, screenPosition: Vector2, fontSize: number = ..., color: Color? = ..., alignment: TextAnchor = ...)
```

[ClientOnly] Draws text on the screen at the specified position and automatically sizes the text area to fit the content. The upper-left screen corner is (0,0).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Text. |
| `screenPosition` | Vector2 |  | Screen position of the text. |
| `fontSize` | number | ✅ | Font size of the text. |
| `color` | Color? | ✅ | Text color. |
| `alignment` | [TextAnchor](./UI.md#textanchor) | ✅ | Text alignment. |

#### DrawTextUV

```lua
ImGui:DrawTextUV(text: string, viewportPosition: Vector2, fontSize: number = ..., color: Color? = ..., alignment: TextAnchor = ...)
```

[ClientOnly] Draws text using viewport coordinates and automatically sizes the text area to fit the content. The lower-left viewport corner is (0,0), the upper-right corner is (1,1).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Text. |
| `viewportPosition` | Vector2 |  | Text position in viewport coordinates. |
| `fontSize` | number | ✅ | Font size of the text. |
| `color` | Color? | ✅ | Text color. |
| `alignment` | [TextAnchor](./UI.md#textanchor) | ✅ | Text alignment. |

## ImGuiWindow

[ClientOnly]

### Methods

#### DrawSprite

```lua
ImGuiWindow:DrawSprite(sprite: Sprite, rect: Rect? = ...)
```

Draws a sprite inside the window.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `sprite` | [Sprite](./Sprite.md#sprite) |  | Sprite to draw. |
| `rect` | Rect? | ✅ | Window area where the sprite will be drawn (if nil, the entire available area is used). |

#### DrawSpriteColor

```lua
ImGuiWindow:DrawSpriteColor(sprite: Sprite, color: Color, rect: Rect? = ...)
```

Draws a sprite inside the window with a color mask overlay.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `sprite` | [Sprite](./Sprite.md#sprite) |  | Sprite to draw. |
| `color` | Color |  | Color mask applied to the sprite. |
| `rect` | Rect? | ✅ | Window area where the sprite will be drawn (if nil, the entire available area is used). |

#### DrawText

```lua
ImGuiWindow:DrawText(text: string, rect: Rect, fontSize: number, color: Color, alignment: TextAnchor = ...)
```

Draws text inside the window.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Text. |
| `rect` | Rect |  | Text area inside the window. |
| `fontSize` | number |  | Font size of the text. |
| `color` | Color |  | Text color. |
| `alignment` | [TextAnchor](./UI.md#textanchor) | ✅ | Text alignment. |

#### GetContentRenderSize

```lua
ImGuiWindow:GetContentRenderSize(): Vector2
```

[ClientOnly] Returns the actual window content area size on the screen in pixels, including UI scale and floating window scale.

**Returns:** Vector2

#### SetVisibilityTypes

```lua
ImGuiWindow:SetVisibilityTypes(visibilityTypes: LuaTable): bool
```

[ClientOnly] Sets the window visibility types in the HUD layout editor. Pass a table of WindowVisibilityType values. nil or an empty table leaves the window only in the All modes filter.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `visibilityTypes` | LuaTable |  |  |

**Returns:** bool

