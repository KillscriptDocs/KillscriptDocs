# Localization

Localization API.

## Contents

- [Localization](#localization)

---

## Localization

[ClientOnly] Resolves translations by key for the current language, including module strings, with fallback to English (United States).

### Methods

#### GetTranslation

```lua
Localization:GetTranslation(term: string): string
```

[ClientOnly] Gets a localized string by term. You can use terms from localization.csv or from the game's translations.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `term` | string |  |  |

**Returns:** string

