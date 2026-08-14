# Config

Module user settings API.

## Contents

- [ConfigManager](#configmanager)

---

## ConfigManager

[ClientOnly] Global API for working with module configuration.

### Methods

#### OnChanged

```lua
ConfigManager:OnChanged(callback: LuaFunction): EventSubscription
```

[ClientOnly] Calls the callback after new module settings are applied. Returns a subscription that can be cancelled.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### Save

```lua
ConfigManager:Save()
```

[ClientOnly] Validates the values in the Config table, applies the allowed constraints, and saves the module configuration.


---

## Config

Table with module settings. The game automatically loads saved values into it
and saves changes back, but only for options declared in the module's default
config.json.

Code can overwrite data in this table, but the next time module settings are
changed in game, the table will be filled again from the current configuration.

```lua
Config: table
```
