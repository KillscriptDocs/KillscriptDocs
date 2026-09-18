# Network

API for interaction between the client and server parts of a Reflex module.

## Contents

- [Connection](#connection)
- [ConnectionMessageEvent](#connectionmessageevent)
- [ConnectionScope](#connectionscope)
- [Network](#network)

---

## Connection

A connection for exchanging tables between player modules. Network messages are delivered to connections with the same key and scope.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `IsOpen` | bool | `get/set` |  | true while the connection is open. |
| `Key` | string | `get` |  | The connection key. |
| `Scope` | [ConnectionScope](./Network.md#connectionscope) | `get` |  | The connection scope. |


### Methods

#### Close

```lua
Connection:Close()
```

Closes the connection and unsubscribes it. Subsequent calls do nothing.

#### Send

```lua
Connection:Send(data: LuaTable): bool
```

Sends a table according to the connection scope. The table can be up to 16384 bytes, and the total per-player limit is 8 messages and 16384 bytes per tick. Returns false if the connection is closed, the queue limit has been reached, or sending is unavailable.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `data` | LuaTable |  |  |

**Returns:** bool

## ConnectionMessageEvent

A message received from another player module.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Agent` | [Agent](./Agent.md#agent) |  | The sending player's agent, or nil if the sender currently has no agent. |
| `Data` | LuaTable |  | The table sent by the module. Its format is defined by the module itself. |
| `Scope` | [ConnectionScope](./Network.md#connectionscope) |  | The message delivery scope. Returns ConnectionScope.Local for local delivery. |

## ConnectionScope

The scope of connections and message delivery between player modules.

| Name | Value | Comment |
|---|---:|---|
| `Local` | `0` | [ClientOnly] Local modules on the same client. |
| `Agent` | `1` | A single specified agent belonging to another client. |
| `Party` | `2` | Members of the same party. |
| `Team` | `3` | Players on the same team. |
| `Match` | `4` | All match participants, including spectators. |

## Network

Networking for exchanging tables between modules.

### Methods

#### ConnectAgent

```lua
Network:ConnectAgent(key: string, receiveLocal: bool, agent: Agent, callback: LuaFunction): Connection
```

Creates a connection for exchanging messages with the player who owns the specified agent. Sending invokes callbacks in that player's client and server modules that called ConnectAgent with the same key and our agent.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `key` | string |  | The connection key. |
| `receiveLocal` | bool |  | Whether to receive messages from other local modules using the same connection. Has no effect on the server. |
| `agent` | [Agent](./Agent.md#agent) |  | An agent belonging to another player. A reciprocal connection is required in that player's client or server module. |
| `callback` | LuaFunction |  | Incoming message handler. |

**Returns:** [Connection](./Network.md#connection)

#### ConnectLocal

```lua
Network:ConnectLocal(key: string, callback: LuaFunction): Connection
```

[ClientOnly] Creates a connection for exchanging messages between the client's local modules. Sending invokes callbacks on other ConnectLocal connections with the same key.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `key` | string |  | The connection key. |
| `callback` | LuaFunction |  | Incoming message handler. |

**Returns:** [Connection](./Network.md#connection)

#### ConnectMatch

```lua
Network:ConnectMatch(key: string, receiveLocal: bool, callback: LuaFunction): Connection
```

Creates a connection for exchanging messages between match participants, including spectators. Sending invokes callbacks in the client and server modules of other match participants that called ConnectMatch with the same key.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `key` | string |  | The connection key. |
| `receiveLocal` | bool |  | Whether to receive messages from other local modules using the same connection. Has no effect on the server. |
| `callback` | LuaFunction |  | Incoming message handler. |

**Returns:** [Connection](./Network.md#connection)

#### ConnectParty

```lua
Network:ConnectParty(key: string, receiveLocal: bool, callback: LuaFunction): Connection
```

Creates a connection for exchanging messages between members of the same party. Sending invokes callbacks in the client and server modules of other players in that party that called ConnectParty with the same key.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `key` | string |  | The connection key. |
| `receiveLocal` | bool |  | Whether to receive messages from other local modules using the same connection. Has no effect on the server. |
| `callback` | LuaFunction |  | Incoming message handler. |

**Returns:** [Connection](./Network.md#connection)

#### ConnectTeam

```lua
Network:ConnectTeam(key: string, receiveLocal: bool, callback: LuaFunction): Connection
```

Creates a connection for exchanging messages between players on the same team. Sending invokes callbacks in the client and server modules of other players on that team that called ConnectTeam with the same key.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `key` | string |  | The connection key. |
| `receiveLocal` | bool |  | Whether to receive messages from other local modules using the same connection. Has no effect on the server. |
| `callback` | LuaFunction |  | Incoming message handler. |

**Returns:** [Connection](./Network.md#connection)

#### OnTableReceived

```lua
Network:OnTableReceived(callback: LuaFunction)
```

Registers a handler for incoming tables in a Reflex module.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  | Callback invoked when a table is received. |

#### SendTable

```lua
Network:SendTable(table: LuaTable): bool
```

Sends a table to the opposite side of the Reflex module.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `table` | LuaTable |  |  |

**Returns:** bool

