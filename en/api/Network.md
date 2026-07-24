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
Network:SendTable(table: LuaTable): bool
```

Sends a table to the opposite side (client or server) and returns true if successful. Up to 8 tables with a combined size of 16384 bytes can be sent per tick. Exceeding a limit or passing nil causes an error. The table can contain string, number, boolean, nil, and nested tables. Values of other types are silently ignored.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `table` | LuaTable |  |  |

**Returns:** bool

