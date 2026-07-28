# Audio

API для воспроизведения звуков и доступа к голосовому чату.

## Contents

- [Sound](#sound)
- [Sounds](#sounds)
- [VoiceChat](#voicechat)

---

## Sound

Звуковой ресурс, используемый для воспроизведения 2D/3D аудио.

## Sounds

[ClientOnly] Глобальный API для работы со звуками.

### Methods

#### GetSound

```lua
Sounds:GetSound(soundName: string): Sound
```

[ClientOnly] Возвращает звук из файлов модуля или nil, если звук с таким именем не загружен. Загрузчик ищет аудиофайлы .wav, .mp3 и .ogg внутри папки sounds модуля. Имя ищется без пути, но с расширением: например, `Hit.wav`.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `soundName` | string |  | [ClientOnly] Имя файла звука с расширением, без пути к папке. Поддерживаются .wav, .mp3 и .ogg. |

**Returns:** [Sound](./Audio.md#sound)

#### PlaySound

```lua
Sounds:PlaySound(sound: Sound, position: Vector3, volume: number = ..., minDistance: number = ..., maxDistance: number = ..., pitch: number = ...)
```

[ClientOnly] Проигрывает звук в указанной мировой позиции (3D).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `sound` | [Sound](./Audio.md#sound) |  | [ClientOnly] Звук для воспроизведения. |
| `position` | Vector3 |  | [ClientOnly] Мировая позиция источника звука. |
| `volume` | number | ✅ | [ClientOnly] Громкость звука в диапазоне 0-1. |
| `minDistance` | number | ✅ | [ClientOnly] Расстояние, до которого звук слышен на полной громкости. Значение  по умолчанию: 5. |
| `maxDistance` | number | ✅ | [ClientOnly] Расстояние, после которого звук перестает быть слышен. Значение  по умолчанию: 500. |
| `pitch` | number | ✅ | [ClientOnly] Высота тона и скорость воспроизведения. Значение  по умолчанию: 1. |

#### PlaySound2D

```lua
Sounds:PlaySound2D(sound: Sound, volume: number = ..., pitch: number = ...)
```

[ClientOnly] Проигрывает звук без позиционирования (2D).

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `sound` | [Sound](./Audio.md#sound) |  | [ClientOnly] Звук для воспроизведения. |
| `volume` | number | ✅ | [ClientOnly] Громкость звука в диапазоне 0-1. |
| `pitch` | number | ✅ | [ClientOnly] Высота тона и скорость воспроизведения. Значение  по умолчанию: 1. |

## VoiceChat

[ClientOnly] Глобальный API для чтения состояния голосового чата EOS и локального заглушения игроков.

### Methods

#### IsAvailable

```lua
VoiceChat:IsAvailable(agent: Agent): bool
```

[ClientOnly] true, если агент известен как участник текущей голосовой комнаты.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |

**Returns:** bool

#### IsMuted

```lua
VoiceChat:IsMuted(agent: Agent): bool
```

[ClientOnly] true, если агент локально заглушен в текущей голосовой комнате.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |

**Returns:** bool

#### IsSpeaking

```lua
VoiceChat:IsSpeaking(agent: Agent): bool
```

[ClientOnly] true, если агент сейчас говорит в текущей голосовой комнате.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |

**Returns:** bool

#### SetMuted

```lua
VoiceChat:SetMuted(agent: Agent, muted: bool): bool
```

[ClientOnly] Локально заглушает или разглушает агента в текущей голосовой комнате. Возвращает true, если запрос отправлен.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |
| `muted` | bool |  |  |

**Returns:** bool

#### ToggleMuted

```lua
VoiceChat:ToggleMuted(agent: Agent): bool
```

[ClientOnly] Переключает локальное заглушение агента в текущей голосовой комнате. Возвращает true, если запрос отправлен.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `agent` | [Agent](./Agent.md#agent) |  |  |

**Returns:** bool

