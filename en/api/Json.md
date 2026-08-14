# Json

## Contents

- [Json](#json)

---

## Json

[ClientOnly] Global API for working with JSON.

### Methods

#### FromJson

```lua
Json:FromJson(json: string): LuaTable
```

[ClientOnly] Converts a JSON string to a table. If the root value is not an object or array, it is returned in the value field.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `json` | string |  |  |

**Returns:** LuaTable

#### ToJson

```lua
Json:ToJson(table: LuaTable): string
```

[ClientOnly] Converts a table to a JSON string. Supports string, number, boolean, nil, Color, Quaternion, Rect, Vector2, Vector3, and nested tables.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `table` | LuaTable |  |  |

**Returns:** string

