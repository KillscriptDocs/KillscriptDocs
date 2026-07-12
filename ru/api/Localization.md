# Localization

API локализации.

## Contents

- [Localization](#localization)

---

## Localization

[ClientOnly] Получает переводы по ключу для текущего языка, включая строки модулей, с запасным вариантом на English (United States).

### Methods

#### GetTranslation

```lua
Localization:GetTranslation(term: string): string
```

[ClientOnly] Получает локализованную строку по термину, можно использовать строки из localization.csv или из перевода игры

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `term` | string |  |  |

**Returns:** string

