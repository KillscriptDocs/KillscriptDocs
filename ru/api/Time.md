# Time

API для получения и преобразования времени и тиков симуляции.

## Contents

- [Time](#time)

---

## Time

Глобальный API для работы со временем и тиками симуляции.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Seconds` | number | `get` |  | Текущее время матча в секундах. |
| `Tick` | int | `get` |  | Текущий тик симуляции. |


### Methods

#### SecondsToTick

```lua
Time:SecondsToTick(secs: number): int
```

Возвращает количество тиков, соответствующих длительности переданных секунд.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `secs` | number |  |  |

**Returns:** int

#### TickToSeconds

```lua
Time:TickToSeconds(ticks: int): number
```

Возвращает длительность времени в секундах, соответствующую количеству переданных тиков.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `ticks` | int |  |  |

**Returns:** number

