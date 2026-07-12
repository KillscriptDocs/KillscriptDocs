# Audio

API for playing sounds and accessing voice chat.

## Contents

- [Sound](#sound)
- [Sounds](#sounds)
- [VoiceChat](#voicechat)
- [VoiceLinePlayer](#voicelineplayer)

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

[ClientOnly] Returns a sound from the module files, or nil if no sound with that name is loaded. The loader looks for .wav, .mp3, and .ogg audio files inside the module's audio folder. The name is searched without a path but with the extension, for example `Hit.wav`.

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
| `volume` | number | ✅ | [ClientOnly] Sound volume. 1 is 100%. |
| `minDistance` | number | ✅ | [ClientOnly] Distance within which the sound is heard at full volume. 5 is the normal value. |
| `maxDistance` | number | ✅ | [ClientOnly] Distance beyond which the sound stops being audible. 500 is the normal value. |
| `pitch` | number | ✅ | [ClientOnly] Pitch and playback speed. 1 is the normal value. |

#### PlaySound2D

```lua
Sounds:PlaySound2D(sound: Sound, volume: number = ..., pitch: number = ...)
```

[ClientOnly] Plays a sound without positional audio (2D).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `sound` | [Sound](./Audio.md#sound) |  | [ClientOnly] Sound to play. |
| `volume` | number | ✅ | [ClientOnly] Sound volume. 1 is 100%. |
| `pitch` | number | ✅ | [ClientOnly] Pitch and playback speed. 1 is the normal value. |

## VoiceChat

[ClientOnly] Global API for reading EOS voice chat state and locally muting players.

### Methods

#### IsAvailable

```lua
VoiceChat:IsAvailable(agent: Agent): bool
```

[ClientOnly] true if the agent is known as a participant in the current voice room.

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

## VoiceLinePlayer

[ClientOnly] Global API for reading the voice line player state.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `IsPlaying` | bool | `get` |  | [ClientOnly] true if a voice line is currently playing. |
| `Subtitle` | string | `get` |  | [ClientOnly] Subtitle text for the currently playing voice line. |

