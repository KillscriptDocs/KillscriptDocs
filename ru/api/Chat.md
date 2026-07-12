# Chat

API игрового чата.

## Contents

- [ChatChannel](#chatchannel)
- [ChatChannelKind](#chatchannelkind)
- [ChatManager](#chatmanager)
- [ChatMessage](#chatmessage)

---

## ChatChannel

[ClientOnly] Канал чата.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `DisplayName` | string | `get/set` |  | [ClientOnly] Отображаемое имя канала. |
| `Id` | string | `get/set` |  | [ClientOnly] Внутренний id канала. |
| `IsAvailable` | bool | `get/set` |  | [ClientOnly] true, если канал сейчас доступен. |
| `IsReadOnly` | bool | `get/set` |  | [ClientOnly] true, если в канал нельзя отправлять сообщения. |
| `Kind` | int | `get/set` |  | [ClientOnly] Тип канала как число. |
| `KindName` | string | `get/set` |  | [ClientOnly] Тип канала как строка. |
| `TeamId` | UInt32 | `get/set` |  | [ClientOnly] Id команды для командного канала, иначе 0. |

## ChatChannelKind

[ClientOnly] Канал чата

| Name | Value | Comment |
|---|---:|---|
| `Party` | `0` | Группа |
| `Private` | `1` | Приватный |
| `Match` | `2` | Матч |
| `Team` | `3` | Команда |

## ChatManager

[ClientOnly] Глобальный API чата: каналы, сообщения и отправка через активный канал.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `MessageLimit` | int | `get` |  | [ClientOnly] Максимальная длина сообщения чата. |


### Methods

#### AddLocalMessage

```lua
ChatManager:AddLocalMessage(text: string)
```

[ClientOnly] Добавляет локальное сообщение в чат которое будет видно только локальному игроку.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  |  |

#### GetActiveChannel

```lua
ChatManager:GetActiveChannel(): ChatChannel
```

[ClientOnly] Возвращает активный канал или nil, если канал не выбран.

**Returns:** [ChatChannel](./Chat.md#chatchannel)

#### GetChannels

```lua
ChatManager:GetChannels(): Array<ChatChannel>
```

[ClientOnly] Возвращает доступные сейчас каналы чата.

**Returns:** Array<[ChatChannel](./Chat.md#chatchannel)>

#### GetMessages

```lua
ChatManager:GetMessages(): Array<ChatMessage>
```

[ClientOnly] Возвращает видимые сейчас сообщения чата.

**Returns:** Array<[ChatMessage](./Chat.md#chatmessage)>

#### OnActiveChannelChanged

```lua
ChatManager:OnActiveChannelChanged(callback: LuaFunction): EventSubscription
```

[ClientOnly] Вызывает коллбек при изменении активного канала. Возвращает подписку, которую можно отменить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnChannelsChanged

```lua
ChatManager:OnChannelsChanged(callback: LuaFunction): EventSubscription
```

[ClientOnly] Вызывает коллбек при изменении списка каналов: когда каналы появляются, исчезают или меняют доступность. Возвращает подписку, которую можно отменить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnMessagesChanged

```lua
ChatManager:OnMessagesChanged(callback: LuaFunction): EventSubscription
```

[ClientOnly] Вызывает коллбек при изменении списка сообщений. Возвращает подписку, которую можно отменить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### SendActiveMessage

```lua
ChatManager:SendActiveMessage(text: string): bool
```

[ClientOnly] Отправляет сообщение в активный канал. Возвращает false, если канал недоступен или только для чтения.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  |  |

**Returns:** bool

#### SendMessage

```lua
ChatManager:SendMessage(text: string)
```

[ClientOnly] Отправляет сообщение в активный канал.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  |  |

#### SetActiveChannel

```lua
ChatManager:SetActiveChannel(channelId: string): bool
```

[ClientOnly] Выбирает канал по id. Возвращает true, если канал стал активным.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `channelId` | string |  |  |

**Returns:** bool

#### SetActiveChannelByKind

```lua
ChatManager:SetActiveChannelByKind(channelKind: ChatChannelKind)
```

[ClientOnly] Выбирает первый доступный канал указанного типа.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `channelKind` | [ChatChannelKind](./Chat.md#chatchannelkind) |  |  |

#### SetActiveLocalTeamChannel

```lua
ChatManager:SetActiveLocalTeamChannel()
```

[ClientOnly] Выбирает командный канал локального игрока. Для зрителя выбирает первый командный канал.

#### ShowMessageContextMenu

```lua
ChatManager:ShowMessageContextMenu(messageId: string)
```

[ClientOnly] Открывает контекстное меню для сообщения по id.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `messageId` | string |  |  |

## ChatMessage

[ClientOnly] Сообщение чата.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `ChannelDisplayName` | string | `get/set` |  | [ClientOnly] Отображаемое имя канала. |
| `ChannelId` | string | `get/set` |  | [ClientOnly] Id канала. |
| `ChannelKind` | [ChatChannelKind](./Chat.md#chatchannelkind) | `get/set` |  | [ClientOnly] Тип канала. |
| `IsLocal` | bool | `get/set` |  | [ClientOnly] true, если сообщение отправил локальный игрок. |
| `IsSystem` | bool | `get/set` |  | [ClientOnly] true, если сообщение системное. |
| `MessageId` | string | `get/set` |  | [ClientOnly] Id сообщения. |
| `SenderDisplayName` | string | `get/set` |  | [ClientOnly] Имя отправителя. |
| `SenderUserId` | string | `get/set` |  | [ClientOnly] Id отправителя. |
| `TeamId` | UInt32 | `get/set` |  | [ClientOnly] Id команды для командного сообщения, иначе 0. |
| `Text` | string | `get/set` |  | [ClientOnly] Текст сообщения. |

