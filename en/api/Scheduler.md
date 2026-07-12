# Scheduler

Scheduler API: subscribing to simulation ticks.

## Contents

- [EventSubscription](#eventsubscription)
- [Scheduler](#scheduler)

---

## EventSubscription

Subscription to an event. Allows unsubscribing from the event.

### Methods

#### Cancel

```lua
EventSubscription:Cancel()
```

Cancels the subscription: the callback will no longer be called.

## Scheduler

Global scheduler API: subscribing to simulation ticks and delayed calls.

### Methods

#### OnFrame

```lua
Scheduler:OnFrame(callback: LuaFunction): EventSubscription
```

[ClientOnly] Calls the callback every game frame. Returns a subscription that can be cancelled.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnTick

```lua
Scheduler:OnTick(callback: LuaFunction): EventSubscription
```

[ServerOnly] Calls the callback every simulation tick. Returns a subscription that can be cancelled.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### Schedule

```lua
Scheduler:Schedule(duration: number, callback: LuaFunction)
```

Calls the callback once after duration seconds. Does nothing if callback is nil or if the delayed call limit is exceeded.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `duration` | number |  |  |
| `callback` | LuaFunction |  |  |

