# Time

API for retrieving and converting time and simulation ticks.

## Contents

- [Time](#time)

---

## Time

Global API for working with time and simulation ticks.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Seconds` | number | `get` |  | Current match time in seconds. |
| `Tick` | int | `get` |  | Current simulation tick. |


### Methods

#### SecondsToTick

```lua
Time:SecondsToTick(secs: number): int
```

Returns the number of ticks corresponding to the specified duration in seconds.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `secs` | number |  |  |

**Returns:** int

#### TickToSeconds

```lua
Time:TickToSeconds(ticks: int): number
```

Returns the duration in seconds corresponding to the specified number of ticks.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `ticks` | int |  |  |

**Returns:** number

