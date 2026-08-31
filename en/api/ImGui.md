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

#### ClearAlphaMask

```lua
ImGui:ClearAlphaMask()
```

[ClientOnly] Disables the alpha mask for subsequent draw commands in the current frame.

#### DrawCircle

```lua
ImGui:DrawCircle(center: Vector2, radius: number, color: Color, thickness: number = ..., segments: int = ...)
```

[ClientOnly] Draws a circle outline on the screen. The stroke extends to both sides of the specified radius.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `center` | Vector2 |  | Circle center in screen coordinates. |
| `radius` | number |  | Circle radius. |
| `color` | Color |  | Circle color. |
| `thickness` | number | ✅ | Stroke thickness. |
| `segments` | int | ✅ | Number of segments. A value of 0 selects the count automatically, other values are clamped to the range from 3 to 256. |

#### DrawDebugText

```lua
ImGui:DrawDebugText(text: string)
```

[ClientOnly] Draws debug text at the edge of the screen.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  | Text. |

#### DrawRect

```lua
ImGui:DrawRect(rect: Rect, color: Color)
```

[ClientOnly] Draws a filled rectangle on the screen.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `rect` | Rect |  | Rectangle area in screen coordinates. |
| `color` | Color |  | Rectangle color. |

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

#### DrawTextureRegion

```lua
ImGui:DrawTextureRegion(texture: Texture, color: Color, rect: Rect, uvRect: Rect)
```

[ClientOnly] Draws a texture region on the screen. The UV region uses normalized coordinates starting at the upper-left corner of the texture.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Texture to draw. |
| `color` | Color |  | Color mask applied to the texture. |
| `rect` | Rect |  | Drawing area in screen coordinates. |
| `uvRect` | Rect |  | Normalized UV region of the texture with its origin at the upper-left corner. |

#### PopMatrix

```lua
ImGui:PopMatrix()
```

[ClientOnly] Restores the last saved transformation matrix. If the stack is empty, the matrix remains unchanged.

#### PushMatrix

```lua
ImGui:PushMatrix()
```

[ClientOnly] Saves the current transformation matrix to the stack. The stack depth is limited to 32 levels.

#### Rotate

```lua
ImGui:Rotate(angle: number)
```

[ClientOnly] Rotates the coordinate system clockwise for subsequent draw commands in the current frame.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `angle` | number |  | Rotation angle in degrees. |

#### Scale

```lua
ImGui:Scale(scale: Vector2)
```

[ClientOnly] Scales the coordinate system relative to its current origin for subsequent draw commands in the current frame.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `scale` | Vector2 |  | Scale along the X and Y axes. |

#### SetAlphaMask

```lua
ImGui:SetAlphaMask(texture: Texture, rect: Rect)
```

[ClientOnly] Sets an alpha mask for subsequent draw commands in the current frame. The entire mask texture is mapped to the specified screen area, and nothing is drawn outside it. Calling this again replaces the current mask.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Texture whose alpha channel is used as the mask. |
| `rect` | Rect |  | Screen area of the mask. |

#### Translate

```lua
ImGui:Translate(translation: Vector2)
```

[ClientOnly] Translates the coordinate system for subsequent draw commands in the current frame.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `translation` | Vector2 |  | Translation in screen coordinates. |

## ImGuiWindow

[ClientOnly]

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `ShouldClipContent` | bool | `get/set` |  | [ClientOnly] Indicates whether all drawing should be clipped to the window bounds. Defaults to true. |


### Methods

#### ClearAlphaMask

```lua
ImGuiWindow:ClearAlphaMask()
```

[ClientOnly] Disables the alpha mask for subsequent draw commands in the current frame.

#### DrawCircle

```lua
ImGuiWindow:DrawCircle(center: Vector2, radius: number, color: Color, thickness: number = ..., segments: int = ...)
```

[ClientOnly] Draws a circle outline inside the window. The stroke extends to both sides of the specified radius.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `center` | Vector2 |  | Circle center in window coordinates. |
| `radius` | number |  | Circle radius. |
| `color` | Color |  | Circle color. |
| `thickness` | number | ✅ | Stroke thickness. |
| `segments` | int | ✅ | Number of segments. A value of 0 selects the count automatically, other values are clamped to the range from 3 to 256. |

#### DrawRect

```lua
ImGuiWindow:DrawRect(rect: Rect, color: Color)
```

[ClientOnly] Draws a filled rectangle inside the window.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `rect` | Rect |  | Rectangle area in window coordinates. |
| `color` | Color |  | Rectangle color. |

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

#### DrawTextureRegion

```lua
ImGuiWindow:DrawTextureRegion(texture: Texture, color: Color, rect: Rect, uvRect: Rect)
```

[ClientOnly] Draws a texture region inside the window. The UV region uses normalized coordinates starting at the upper-left corner of the texture.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Texture to draw. |
| `color` | Color |  | Color mask applied to the texture. |
| `rect` | Rect |  | Drawing area inside the window. |
| `uvRect` | Rect |  | Normalized UV region of the texture with its origin at the upper-left corner. |

#### GetContentRenderSize

```lua
ImGuiWindow:GetContentRenderSize(): Vector2
```

[ClientOnly] Returns the actual window content area size on the screen in pixels, including UI scale and floating window scale.

**Returns:** Vector2

#### PopMatrix

```lua
ImGuiWindow:PopMatrix()
```

[ClientOnly] Restores the last saved window transformation matrix. If the stack is empty, the matrix remains unchanged.

#### PushMatrix

```lua
ImGuiWindow:PushMatrix()
```

[ClientOnly] Saves the current window transformation matrix to the stack. The stack depth is limited to 32 levels.

#### Rotate

```lua
ImGuiWindow:Rotate(angle: number)
```

[ClientOnly] Rotates the window coordinate system clockwise for subsequent draw commands in the current frame.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `angle` | number |  | Rotation angle in degrees. |

#### Scale

```lua
ImGuiWindow:Scale(scale: Vector2)
```

[ClientOnly] Scales the window coordinate system relative to its current origin for subsequent draw commands in the current frame.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `scale` | Vector2 |  | Scale along the X and Y axes. |

#### SetAlphaMask

```lua
ImGuiWindow:SetAlphaMask(texture: Texture, rect: Rect)
```

[ClientOnly] Sets an alpha mask for subsequent draw commands in the current frame. The entire mask texture is mapped to the specified window area, and nothing is drawn outside it. Calling this again replaces the current mask.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `texture` | [Texture](./Texture.md#texture) |  | Texture whose alpha channel is used as the mask. |
| `rect` | Rect |  | Mask area in window coordinates. |

#### SetVisibilityTypes

```lua
ImGuiWindow:SetVisibilityTypes(visibilityTypes: LuaTable): bool
```

[ClientOnly] Sets the window visibility types in the HUD layout editor. Pass a table of WindowVisibilityType values. nil or an empty table leaves the window only in the All modes filter.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `visibilityTypes` | LuaTable |  |  |

**Returns:** bool

#### Translate

```lua
ImGuiWindow:Translate(translation: Vector2)
```

[ClientOnly] Translates the window coordinate system for subsequent draw commands in the current frame.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `translation` | Vector2 |  | Translation in window coordinates. |

