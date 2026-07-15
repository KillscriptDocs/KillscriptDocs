# Chat

In-game chat API.

## Contents

- [ChatChannel](#chatchannel)
- [ChatChannelKind](#chatchannelkind)
- [ChatManager](#chatmanager)
- [ChatMessage](#chatmessage)

---

## ChatChannel

[ClientOnly] Chat channel.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `DisplayName` | string | `get/set` |  | [ClientOnly] Channel display name. |
| `Id` | string | `get/set` |  | [ClientOnly] Internal channel ID. |
| `IsAvailable` | bool | `get/set` |  | [ClientOnly] true if the channel is currently available. |
| `IsReadOnly` | bool | `get/set` |  | [ClientOnly] true if messages cannot be sent to the channel. |
| `Kind` | [ChatChannelKind](./Chat.md#chatchannelkind) | `get/set` |  | [ClientOnly] Channel type. |
| `KindName` | string | `get/set` |  | [ClientOnly] Channel type as a string. |
| `Team` | [Team](./Team.md#team) | `get/set` |  | [ClientOnly] Team for a team channel. |

## ChatChannelKind

[ClientOnly] Chat channel.

| Name | Value | Comment |
|---|---:|---|
| `Party` | `0` | Party. |
| `Private` | `1` | Private. |
| `Match` | `2` | Match. |
| `Team` | `3` | Team. |
| `System` | `4` | System. |

## ChatManager

[ClientOnly] Global chat API: channels, messages, and sending through the active channel.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `MessageLimit` | int | `get` |  | [ClientOnly] Maximum chat message length. |


### Methods

#### AddLocalMessage

```lua
ChatManager:AddLocalMessage(text: string)
```

[ClientOnly] Adds a message to the system channel on behalf of the module. The message is visible only to the local player.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  |  |

#### GetActiveChannel

```lua
ChatManager:GetActiveChannel(): ChatChannel
```

[ClientOnly] Returns the active channel, or nil if no channel is selected.

**Returns:** [ChatChannel](./Chat.md#chatchannel)

#### GetChannels

```lua
ChatManager:GetChannels(): Array<ChatChannel>
```

[ClientOnly] Returns the currently available chat channels.

**Returns:** Array<[ChatChannel](./Chat.md#chatchannel)>

#### GetMessages

```lua
ChatManager:GetMessages(): Array<ChatMessage>
```

[ClientOnly] Returns the currently visible chat messages.

**Returns:** Array<[ChatMessage](./Chat.md#chatmessage)>

#### OnActiveChannelChanged

```lua
ChatManager:OnActiveChannelChanged(callback: LuaFunction): EventSubscription
```

[ClientOnly] Calls the callback when the active channel changes. Returns a subscription that can be cancelled.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnChannelsChanged

```lua
ChatManager:OnChannelsChanged(callback: LuaFunction): EventSubscription
```

[ClientOnly] Calls the callback when the channel list changes, when channels appear, disappear, or change availability. Returns a subscription that can be cancelled.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnMessagesChanged

```lua
ChatManager:OnMessagesChanged(callback: LuaFunction): EventSubscription
```

[ClientOnly] Calls the callback when the message list changes. Returns a subscription that can be cancelled.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### SendActiveMessage

```lua
ChatManager:SendActiveMessage(text: string): bool
```

[ClientOnly] Sends a message to the active channel. Returns false if the channel is unavailable or read-only.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  |  |

**Returns:** bool

#### SendMessage

```lua
ChatManager:SendMessage(text: string)
```

[ClientOnly] Sends a message to the active channel.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `text` | string |  |  |

#### SetActiveChannel

```lua
ChatManager:SetActiveChannel(channelId: string): bool
```

[ClientOnly] Selects a channel by ID. Returns true if the channel became active.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `channelId` | string |  |  |

**Returns:** bool

#### SetActiveChannelByKind

```lua
ChatManager:SetActiveChannelByKind(channelKind: ChatChannelKind)
```

[ClientOnly] Selects the first available channel of the specified type.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `channelKind` | [ChatChannelKind](./Chat.md#chatchannelkind) |  |  |

#### SetActiveLocalTeamChannel

```lua
ChatManager:SetActiveLocalTeamChannel()
```

[ClientOnly] Selects the local player's team channel. For a spectator, selects the first team channel.

#### ShowMessageContextMenu

```lua
ChatManager:ShowMessageContextMenu(messageId: string)
```

[ClientOnly] Opens the context menu for a message by ID.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `messageId` | string |  |  |

## ChatMessage

[ClientOnly] Chat message.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `ChannelDisplayName` | string | `get/set` |  | [ClientOnly] Channel display name. |
| `ChannelId` | string | `get/set` |  | [ClientOnly] Channel ID. |
| `ChannelKind` | [ChatChannelKind](./Chat.md#chatchannelkind) | `get/set` |  | [ClientOnly] Channel type. |
| `IsLocal` | bool | `get/set` |  | [ClientOnly] true if the message was sent by the local player. |
| `IsSystem` | bool | `get/set` |  | [ClientOnly] true if the message is a system message. |
| `MessageId` | string | `get/set` |  | [ClientOnly] Message ID. |
| `SenderDisplayName` | string | `get/set` |  | [ClientOnly] Sender name. |
| `SenderUserId` | string | `get/set` |  | [ClientOnly] Sender ID. |
| `Team` | [Team](./Team.md#team) | `get/set` |  | [ClientOnly] Team for a team message. |
| `Text` | string | `get/set` |  | [ClientOnly] Message text. |

