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

#### DrawTexture

```lua
ImGui:DrawTexture(texture: Texture, rect: Rect? = ...)
```

[ClientOnly] Draws a texture on the screen.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Texture to draw. |
| `rect` | Rect? | ✅ | Screen area where the texture will be drawn (if nil, the entire available area is used). |

#### DrawTextureColor

```lua
ImGui:DrawTextureColor(texture: Texture, color: Color, rect: Rect? = ...)
```

[ClientOnly] Draws a texture on the screen with a color mask overlay.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Texture to draw. |
| `color` | Color |  | Color mask applied to the texture. |
| `rect` | Rect? | ✅ | Screen area where the texture will be drawn (if nil, the entire available area is used). |

## ImGuiWindow

[ClientOnly]

### Methods

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

#### DrawTexture

```lua
ImGuiWindow:DrawTexture(texture: Texture, rect: Rect? = ...)
```

Draws a texture inside the window.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Texture to draw. |
| `rect` | Rect? | ✅ | Window area where the texture will be drawn (if nil, the entire available area is used). |

#### DrawTextureColor

```lua
ImGuiWindow:DrawTextureColor(texture: Texture, color: Color, rect: Rect? = ...)
```

Draws a texture inside the window with a color mask overlay.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Texture to draw. |
| `color` | Color |  | Color mask applied to the texture. |
| `rect` | Rect? | ✅ | Window area where the texture will be drawn (if nil, the entire available area is used). |

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

