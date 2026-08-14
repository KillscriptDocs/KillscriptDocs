# Json

## Contents

- [Json](#json)

---

## Json

[ClientOnly] Глобальный API для работы с Json.

### Methods

#### FromJson

```lua
Json:FromJson(json: string): LuaTable
```

[ClientOnly] Преобразует строку JSON в таблицу. Если корневое значение не является объектом или массивом, оно возвращается в поле value.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `json` | string |  |  |

**Returns:** LuaTable

#### ToJson

```lua
Json:ToJson(table: LuaTable): string
```

[ClientOnly] Преобразует таблицу в строку JSON. Поддерживает string, number, boolean, nil, Color, Quaternion, Rect, Vector2, Vector3 и вложенные таблицы.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `table` | LuaTable |  |  |

**Returns:** string

