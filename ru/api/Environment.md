# Environment

API окружения: производительность, статистика сети, устройство, текущая карта.

## Contents

- [CpuLimit](#cpulimit)
- [MapInfo](#mapinfo)
- [NetworkInfo](#networkinfo)
- [Performance](#performance)
- [Screen](#screen)

---

## CpuLimit

Информация о лимите процессорного времени модуля и количестве доступных CPU-циклов.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `CpuCycleLimit` | int | `get` |  | Максимальное количество CPU-циклов, доступных модулю за один тик. |
| `RemainingCpuCycles` | int | `get` |  | Количество CPU-циклов, оставшихся модулю до конца текущего тика. |
| `RemainingCpuTime` | number | `get` |  | Доля оставшегося процессорного времени для модуля (0–1, где 0 — времени не осталось). |

## MapInfo

Глобальная информация о карте: имя, размеры и параметры миникарты.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `BasementBottomY` | number | `get` |  | Нижняя граница подземного уровня по Y. |
| `BasementTopY` | number | `get` |  | Верхняя граница подземного уровня по Y. |
| `MapCameraHeight` | number | `get` |  | Высота камеры миникарты. |
| `MapCenter` | Vector3 | `get` |  | Центр карты в мировых координатах. |
| `MapName` | string | `get` |  | Название текущей карты. |
| `MapSize` | number | `get` |  | Размер карты (условная единица). |


### Methods

#### GetZones

```lua
MapInfo:GetZones(position: Vector3): Array<string>
```

Возвращает список зон, в указанной позиции.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `position` | Vector3 |  |  |

**Returns:** Array<string>

## NetworkInfo

[ClientOnly] Информация о сетевом соединении: RTT, пинг, скорость передачи и потери пакетов.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `InKBps` | number | `get` |  | [ClientOnly] Скорость входящего трафика в килобайтах в секунду. |
| `InPacketLossPercent` | number | `get` |  | [ClientOnly] Процент потерь входящих пакетов. |
| `InterpolationDelayMaxMs` | number | `get` |  | [ClientOnly] Максимальная задержка интерполяции в миллисекундах за последнюю секунду. |
| `InterpolationDelayMs` | number | `get` |  | [ClientOnly] Средняя задержка интерполяции в миллисекундах за последнюю секунду. |
| `OutKBps` | number | `get` |  | [ClientOnly] Скорость исходящего трафика в килобайтах в секунду. |
| `OutPacketLossPercent` | number | `get` |  | [ClientOnly] Процент потерь исходящих пакетов. |
| `Ping` | int | `get` |  | [ClientOnly] Средний пинг в миллисекундах за последнюю секунду. |
| `PingMax` | int | `get` |  | [ClientOnly] Максимальный пинг в миллисекундах за последнюю секунду. |
| `RttSeconds` | number | `get` |  | [ClientOnly] Текущее RTT в секундах. |
| `ServerTickTimeMaxMs` | number | `get` |  | [ClientOnly] Максимальное время обработки серверного сетевого тика в миллисекундах за последнюю секунду. |
| `ServerTickTimeMs` | number | `get` |  | [ClientOnly] Среднее время обработки серверного сетевого тика в миллисекундах за последнюю секунду. |
| `TickTimeMs` | number | `get` |  | [ClientOnly] Время обработки одного сетевого тика в миллисекундах. |

## Performance

[ClientOnly] Информация о системе и производительности.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AvgFps` | number | `get/set` |  | [ClientOnly] Средний FPS за последнюю секунду. |
| `CpuUsagePercent` | number | `get/set` |  | [ClientOnly] Средняя загрузка CPU игрой за последнюю секунду в процентах относительно времени кадра. На неподдерживаемых платформах может быть 0. |
| `GpuUsagePercent` | number | `get/set` |  | [ClientOnly] Средняя загрузка GPU игрой за последнюю секунду в процентах относительно времени кадра. На неподдерживаемых платформах может быть 0. |
| `MaxFrameMs` | number | `get/set` |  | [ClientOnly] Максимальное время кадра (мс) за последнюю секунду. |

## Screen

[ClientOnly] Информация о размере экрана.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Height` | number | `get` |  | [ClientOnly] Высота экрана в пикселях используемая для отрисовки. |
| `Width` | number | `get` |  | [ClientOnly] Ширина экрана в пикселях используемая для отрисовки. |

