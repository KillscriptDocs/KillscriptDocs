# Network

API для взаимодействия клиентской и серверной частей Reflex-модуля.

## Contents

- [Network](#network)

---

## Network

API для взаимодействия клиентской и серверной частей Reflex-модуля.

### Methods

#### OnTableReceived

```lua
Network:OnTableReceived(callback: LuaFunction)
```

Регистрирует коллбек на получение таблицы, отправленной противоположной стороной модуля.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

#### SendTable

```lua
Network:SendTable(table: LuaTable)
```

Отправляет таблицу на противоположную сторону (клиент или сервер). Таблица может содержать string, number, boolean, nil и вложенные таблицы. Значения других типов молча игнорируются.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `table` | LuaTable |  |  |

