# Clipboard

## Contents

- [Clipboard](#clipboard)
- [ClipboardReadEvent](#clipboardreadevent)

---

## Clipboard

[ClientOnly] Глобальный API для работы с буфером обмена.

### Methods

#### GetText

```lua
Clipboard:GetText(callback: LuaFunction)
```

[ClientOnly] Запрашивает у пользователя разрешение на чтение буфера обмена. После ответа вызывает callback с результатом запроса. Повторный запрос этого модуля игнорируется, пока предыдущий не завершен.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

#### SetText

```lua
Clipboard:SetText(text: string)
```

[ClientOnly] Записывает текст в системный буфер обмена, заменяя его текущее содержимое.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  |  |

## ClipboardReadEvent

[ClientOnly] Результат запроса на чтение буфера обмена.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `IsGranted` | bool |  | [ClientOnly] true, если пользователь разрешил чтение буфера обмена. |
| `Text` | string |  | [ClientOnly] Текст из буфера обмена или nil, если пользователь отклонил запрос. |

