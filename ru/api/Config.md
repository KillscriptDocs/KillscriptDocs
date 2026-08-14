# Config

API пользовательских настроек модулей.

## Contents

- [ConfigManager](#configmanager)

---

## ConfigManager

[ClientOnly] Глобальный API для работы с конфигурацией модуля.

### Methods

#### OnChanged

```lua
ConfigManager:OnChanged(callback: LuaFunction): EventSubscription
```

[ClientOnly] Вызывает коллбек после применения новых настроек модуля. Возвращает подписку, которую можно отменить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `callback` | LuaFunction |  |  |

**Returns:** [EventSubscription](./Scheduler.md#eventsubscription)

#### Save

```lua
ConfigManager:Save()
```

[ClientOnly] Проверяет значения из таблицы Config, применяет допустимые ограничения и сохраняет конфигурацию модуля.


---

## Config

Таблица с настройками модуля. Игра автоматически загружает в нее значения
из сохраненных настроек и сохраняет изменения обратно, но только для параметров,
объявленных в дефолтном config.json модуля.

Код может перезаписать данные в этой таблице, однако при следующем изменении
настроек модуля в игре таблица будет заполнена заново из актуальной конфигурации.

```lua
Config: table
```
