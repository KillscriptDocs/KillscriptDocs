# Scheduler

API планировщика: подписка на тики симуляции.

## Contents

- [EventSubscription](#eventsubscription)
- [Scheduler](#scheduler)

---

## EventSubscription

Подписка на событие. Позволяет отписаться от события.

### Methods

#### Cancel

```lua
EventSubscription:Cancel()
```

Отменяет подписку: коллбек больше не будет вызываться.

## Scheduler

Глобальный API планировщика: подписка на тики симуляции и отложенные вызовы.

### Methods

#### OnFrame

```lua
Scheduler:OnFrame(callback: LuaFunction): EventSubscription
```

[ClientOnly] Вызывает коллбек каждый кадр игры. Возвращает подписку, которую можно отменить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### OnTick

```lua
Scheduler:OnTick(callback: LuaFunction): EventSubscription
```

[ServerOnly] Вызывает коллбек каждый тик симуляции. Возвращает подписку, которую можно отменить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### Schedule

```lua
Scheduler:Schedule(duration: number, callback: LuaFunction)
```

Вызывает коллбек один раз через duration секунд. Если callback равен nil или превышен лимит отложенных вызовов, ничего не делает.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `duration` | number |  |  |
| `callback` | LuaFunction |  |  |

