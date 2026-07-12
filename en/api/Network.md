# Network

API for interaction between the client and server parts of a Reflex module.

## Contents

- [Network](#network)

---

## Network

API for interaction between the client and server parts of a Reflex module.

### Methods

#### OnTableReceived

```lua
Network:OnTableReceived(callback: LuaFunction)
```

Registers a callback for receiving a table sent by the opposite side of the module.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

#### SendTable

```lua
Network:SendTable(table: LuaTable)
```

Sends a table to the opposite side (client or server). The table can contain string, number, boolean, nil, and nested tables. Values of other types are silently ignored.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `table` | LuaTable |  |  |

