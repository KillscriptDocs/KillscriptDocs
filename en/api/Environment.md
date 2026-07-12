# Environment

Environment API: performance, network statistics, device, and current map.

## Contents

- [CpuLimit](#cpulimit)
- [MapInfo](#mapinfo)
- [NetworkInfo](#networkinfo)
- [Performance](#performance)
- [Screen](#screen)

---

## CpuLimit

Information about the module's CPU time limit and the number of available CPU cycles.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `CpuCycleLimit` | int | `get` |  | Maximum number of CPU cycles available to the module per tick. |
| `RemainingCpuCycles` | int | `get` |  | Number of CPU cycles remaining for the module until the end of the current tick. |
| `RemainingCpuTime` | number | `get` |  | Fraction of the remaining CPU time for the module (0-1, where 0 means no time is left). |

## MapInfo

Global map information: name, size, and minimap parameters.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `BasementBottomY` | number | `get` |  | Lower boundary of the underground level on the Y axis. |
| `BasementTopY` | number | `get` |  | Upper boundary of the underground level on the Y axis. |
| `MapCameraHeight` | number | `get` |  | Minimap camera height. |
| `MapCenter` | Vector3 | `get` |  | Map center in world coordinates. |
| `MapName` | string | `get` |  | Name of the current map. |
| `MapSize` | number | `get` |  | Map size (arbitrary unit). |


### Methods

#### GetZones

```lua
MapInfo:GetZones(position: Vector3): Array<string>
```

Returns the list of zones at the specified position.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `position` | Vector3 |  |  |

**Returns:** Array<string>

## NetworkInfo

[ClientOnly] Network connection information: RTT, ping, transfer rates, and packet loss.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `InKBps` | number | `get` |  | [ClientOnly] Incoming traffic speed in kilobytes per second. |
| `InPacketLossPercent` | number | `get` |  | [ClientOnly] Incoming packet loss percentage. |
| `InterpolationDelayMs` | number | `get` |  | [ClientOnly] Current interpolation delay in milliseconds. |
| `OutKBps` | number | `get` |  | [ClientOnly] Outgoing traffic speed in kilobytes per second. |
| `OutPacketLossPercent` | number | `get` |  | [ClientOnly] Outgoing packet loss percentage. |
| `Ping` | int | `get` |  | [ClientOnly] Average ping in milliseconds based on recent RTT measurements. |
| `RttSeconds` | number | `get` |  | [ClientOnly] Current RTT in seconds. |
| `ServerTickTimeMs` | number | `get` |  | [ClientOnly] Processing time of one server network tick in milliseconds. |
| `TickTimeMs` | number | `get` |  | [ClientOnly] Processing time of one network tick in milliseconds. |

## Performance

[ClientOnly] System and performance information.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AvgFps` | number | `get/set` |  | [ClientOnly] Average FPS over the last second. |
| `CpuUsagePercent` | number | `get/set` |  | [ClientOnly] Average CPU load of the game over the last second as a percentage of frame time. May be 0 on unsupported platforms. |
| `GpuUsagePercent` | number | `get/set` |  | [ClientOnly] Average GPU load of the game over the last second as a percentage of frame time. May be 0 on unsupported platforms. |
| `MaxFrameMs` | number | `get/set` |  | [ClientOnly] Maximum frame time (ms) over the last second. |

## Screen

[ClientOnly] Screen size information.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Height` | number | `get` |  | [ClientOnly] Screen height in pixels. |
| `Width` | number | `get` |  | [ClientOnly] Screen width in pixels. |

