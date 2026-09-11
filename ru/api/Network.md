# Network

API для взаимодействия клиентской и серверной частей Reflex-модуля.

## Contents

- [Connection](#connection)
- [ConnectionMessageEvent](#connectionmessageevent)
- [ConnectionScope](#connectionscope)
- [Network](#network)

---

## Connection

Подключение для обмена таблицами между модулями игроков. Сетевые сообщения получают подключения с теми же ключом и областью.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `IsOpen` | bool | `get/set` |  | true, пока подключение открыто. |
| `Key` | string | `get` |  | Ключ подключения. |
| `Scope` | [ConnectionScope](./Network.md#connectionscope) | `get` |  | Область подключения. |


### Methods

#### Close

```lua
Connection:Close()
```

Закрывает подключение и отменяет подписку. Повторный вызов ничего не делает.

#### Send

```lua
Connection:Send(data: LuaTable): bool
```

Отправляет таблицу согласно области подключения. Размер таблицы — до 16384 байт, общий лимит игрока — 8 сообщений и 16384 байта за тик. Возвращает false, если подключение закрыто, достигнут лимит или отправка недоступна.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `data` | LuaTable |  |  |

**Returns:** bool

## ConnectionMessageEvent

Полученное сообщение другого модуля игрока.

### Fields

| Name | Type | Static | Comment |
|---|---|:---:|---|
| `Agent` | [Agent](./Agent.md#agent) |  | Агент игрока-отправителя или nil, если у отправителя сейчас нет агента. |
| `Data` | LuaTable |  | Таблица, отправленная модулем. Формат таблицы определяет сам модуль. |
| `Scope` | [ConnectionScope](./Network.md#connectionscope) |  | Область доставки сообщения. Для локальной доставки возвращает ConnectionScope.Local. |

## ConnectionScope

Область подключения и доставки сообщений между модулями игроков.

| Name | Value | Comment |
|---|---:|---|
| `Local` | `0` | [ClientOnly] Локальные модули одного клиента. |
| `Agent` | `1` | Один указанный агент другого клиента. |
| `Party` | `2` | Участники одной группы. |
| `Team` | `3` | Игроки одной команды. |
| `Match` | `4` | Все участники матча, включая наблюдателей. |

## Network

Сетевой обмен таблицами между модулями.

### Methods

#### ConnectAgent

```lua
Network:ConnectAgent(key: string, receiveLocal: bool, agent: Agent, callback: LuaFunction): Connection
```

Создаёт подключение для обмена сообщениями с игроком указанного агента. При отправке коллбеки вызываются у его клиентских и серверных модулей, вызвавших ConnectAgent с тем же ключом для нашего агента.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `key` | string |  | Ключ подключения. |
| `receiveLocal` | bool |  | Принимать ли сообщения других локальных модулей с таким же подключением. На сервере не действует. |
| `agent` | [Agent](./Agent.md#agent) |  | Агент другого игрока. В его клиентском или серверном модуле требуется встречное подключение. |
| `callback` | LuaFunction |  | Обработчик входящих сообщений. |

**Returns:** [Connection](./Network.md#connection)

#### ConnectLocal

```lua
Network:ConnectLocal(key: string, callback: LuaFunction): Connection
```

[ClientOnly] Создаёт подключение для обмена сообщениями между локальными модулями клиента. При отправке коллбеки вызываются у других подключений ConnectLocal с тем же ключом.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `key` | string |  | Ключ подключения. |
| `callback` | LuaFunction |  | Обработчик входящих сообщений. |

**Returns:** [Connection](./Network.md#connection)

#### ConnectMatch

```lua
Network:ConnectMatch(key: string, receiveLocal: bool, callback: LuaFunction): Connection
```

Создаёт подключение для обмена сообщениями между участниками матча, включая наблюдателей. При отправке коллбеки вызываются у клиентских и серверных модулей других участников матча, вызвавших ConnectMatch с тем же ключом.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `key` | string |  | Ключ подключения. |
| `receiveLocal` | bool |  | Принимать ли сообщения других локальных модулей с таким же подключением. На сервере не действует. |
| `callback` | LuaFunction |  | Обработчик входящих сообщений. |

**Returns:** [Connection](./Network.md#connection)

#### ConnectParty

```lua
Network:ConnectParty(key: string, receiveLocal: bool, callback: LuaFunction): Connection
```

Создаёт подключение для обмена сообщениями между участниками одной группы. При отправке коллбеки вызываются у клиентских и серверных модулей других игроков этой группы, вызвавших ConnectParty с тем же ключом.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `key` | string |  | Ключ подключения. |
| `receiveLocal` | bool |  | Принимать ли сообщения других локальных модулей с таким же подключением. На сервере не действует. |
| `callback` | LuaFunction |  | Обработчик входящих сообщений. |

**Returns:** [Connection](./Network.md#connection)

#### ConnectTeam

```lua
Network:ConnectTeam(key: string, receiveLocal: bool, callback: LuaFunction): Connection
```

Создаёт подключение для обмена сообщениями между игроками одной команды. При отправке коллбеки вызываются у клиентских и серверных модулей других игроков этой команды, вызвавших ConnectTeam с тем же ключом.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `key` | string |  | Ключ подключения. |
| `receiveLocal` | bool |  | Принимать ли сообщения других локальных модулей с таким же подключением. На сервере не действует. |
| `callback` | LuaFunction |  | Обработчик входящих сообщений. |

**Returns:** [Connection](./Network.md#connection)

#### OnTableReceived

```lua
Network:OnTableReceived(callback: LuaFunction)
```

Регистрирует обработчик входящих таблиц Reflex-модуля.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  | Коллбек получения таблицы. |

#### SendTable

```lua
Network:SendTable(table: LuaTable): bool
```

Отправляет таблицу противоположной стороне Reflex-модуля.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `table` | LuaTable |  |  |

**Returns:** bool

