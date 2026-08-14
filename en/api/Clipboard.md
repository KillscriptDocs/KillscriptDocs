# Clipboard

## Contents

- [Clipboard](#clipboard)
- [ClipboardReadEvent](#clipboardreadevent)

---

## Clipboard

[ClientOnly] Global API for working with the clipboard.

### Methods

#### GetText

```lua
Clipboard:GetText(callback: LuaFunction)
```

[ClientOnly] Requests permission from the user to read the clipboard. Once the user responds, calls callback with the request result. Another request from the same module is ignored until the previous one is complete.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

#### SetText

```lua
Clipboard:SetText(text: string)
```

[ClientOnly] Writes text to the system clipboard, replacing its current contents.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  |  |

## ClipboardReadEvent

[ClientOnly] The result of a clipboard read request.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `IsGranted` | bool |  | [ClientOnly] true if the user granted permission to read the clipboard. |
| `Text` | string |  | [ClientOnly] The clipboard text, or nil if the user denied the request. |

