# Audio

API for playing sounds and accessing voice chat.

## Contents

- [Sound](#sound)
- [Sounds](#sounds)
- [VoiceChat](#voicechat)
- [VoiceConnectionState](#voiceconnectionstate)

---

## Sound

Sound resource used to play 2D/3D audio.

## Sounds

[ClientOnly] Global API for working with sounds.

### Methods

#### GetSound

```lua
Sounds:GetSound(soundName: string): Sound
```

[ClientOnly] Returns a sound from the module files, or nil if no sound with that name is loaded. The loader looks for .wav, .mp3, and .ogg audio files inside the module's sounds folder. The name is searched without a path but with the extension, for example `Hit.wav`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `soundName` | string |  | [ClientOnly] Sound file name with extension, without the folder path. .wav, .mp3, and .ogg are supported. |

**Returns:** [Sound](./Audio.md#sound)

#### PlaySound

```lua
Sounds:PlaySound(sound: Sound, position: Vector3, volume: number = ..., minDistance: number = ..., maxDistance: number = ..., pitch: number = ...)
```

[ClientOnly] Plays a sound at the specified world position (3D).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `sound` | [Sound](./Audio.md#sound) |  | [ClientOnly] Sound to play. |
| `position` | Vector3 |  | [ClientOnly] World position of the sound source. |
| `volume` | number | ✅ | [ClientOnly] Sound volume in the range from 0 to 1. |
| `minDistance` | number | ✅ | [ClientOnly] Distance within which the sound is audible at full volume. The default value is 5. |
| `maxDistance` | number | ✅ | [ClientOnly] Distance beyond which the sound stops being audible. The default value is 500. |
| `pitch` | number | ✅ | [ClientOnly] Pitch and playback speed. The default value is 1. |

#### PlaySound2D

```lua
Sounds:PlaySound2D(sound: Sound, volume: number = ..., pitch: number = ...)
```

[ClientOnly] Plays a sound without positional audio (2D).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `sound` | [Sound](./Audio.md#sound) |  | [ClientOnly] Sound to play. |
| `volume` | number | ✅ | [ClientOnly] Sound volume in the range from 0 to 1. |
| `pitch` | number | ✅ | [ClientOnly] Pitch and playback speed. The default value is 1. |

## VoiceChat

[ClientOnly] Global API for reading EOS voice chat state and locally muting players.

### Methods

#### GetConnectionState

```lua
VoiceChat:GetConnectionState(agent: Agent): VoiceConnectionState
```

[ClientOnly] Returns the agent's client-reported team voice channel connection state.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |

**Returns:** [VoiceConnectionState](./Audio.md#voiceconnectionstate)

#### GetOutputLevel

```lua
VoiceChat:GetOutputLevel(agent: Agent): number
```

[ClientOnly] Returns the agent's normalized voice level from 0 to 1. Measures sent audio for the local agent and received audio for other agents. Returns 0 if no audio is being transmitted.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |

**Returns:** number

#### IsAvailable

```lua
VoiceChat:IsAvailable(agent: Agent): bool
```

[ClientOnly] true if the agent is known as a participant in the current voice room.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |

**Returns:** bool

#### IsLocal

```lua
VoiceChat:IsLocal(agent: Agent): bool
```

[ClientOnly] true if the agent represents the local voice channel participant.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |

**Returns:** bool

#### IsMuted

```lua
VoiceChat:IsMuted(agent: Agent): bool
```

[ClientOnly] true if the agent is locally muted in the current voice room.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |

**Returns:** bool

#### IsSpeaking

```lua
VoiceChat:IsSpeaking(agent: Agent): bool
```

[ClientOnly] true if the agent is currently speaking in the current voice room.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |

**Returns:** bool

#### SetMuted

```lua
VoiceChat:SetMuted(agent: Agent, muted: bool): bool
```

[ClientOnly] Locally mutes or unmutes the agent in the current voice room. Returns true if the request was sent.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |
| `muted` | bool |  |  |

**Returns:** bool

#### ToggleMuted

```lua
VoiceChat:ToggleMuted(agent: Agent): bool
```

[ClientOnly] Toggles local muting for the agent in the current voice room. Returns true if the request was sent.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |

**Returns:** bool

## VoiceConnectionState

[ClientOnly] Agent's voice channel connection state.

| Name | Value | Comment |
|---|---:|---|
| `Disabled` | `0` | [ClientOnly] Voice chat is disabled or no voice channel is selected. |
| `Connecting` | `1` | [ClientOnly] Connecting or retrying the connection. |
| `Connected` | `2` | [ClientOnly] Connected to the voice channel. |
| `Failed` | `3` | [ClientOnly] Connection failed with a non-recoverable error. |

