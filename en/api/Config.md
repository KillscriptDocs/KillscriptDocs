# Config

Module user settings API.

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
