# InputAction

API ввода: обработка нажатий на кнопки.

## Contents

- [InputAction](#inputaction)
- [InputActions](#inputactions)

---

## InputAction

[ClientOnly] Объект InputAction.

### Methods

#### Disable

```lua
InputAction:Disable()
```

[ClientOnly] Выключает действие ввода, только если оно объявлено в inputs.json текущего модуля. Стандартные игровые действия выключать нельзя.

#### Enable

```lua
InputAction:Enable()
```

[ClientOnly] Включает действие ввода, только если оно объявлено в inputs.json текущего модуля. Стандартные игровые действия включать нельзя.

#### IsPressed

```lua
InputAction:IsPressed(): bool
```

[ClientOnly] true, если действие сейчас считается нажатым.

**Returns:** bool

#### OnPerformed

```lua
InputAction:OnPerformed(func: LuaFunction)
```

[ClientOnly] Подписывает функцию, вызываемую при срабатывании действия.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `func` | LuaFunction |  |  |

## InputActions

[ClientOnly] Глобальный API для поиска и работы с InputAction. Собственные действия модуля объявляются в файле inputs.json в корне модуля: в массиве Actions укажите Name, Type (Button, Value или PassThrough) и Binding.Path. В Binding также можно задать Interactions, Processors и Groups.

### Methods

#### FindAction

```lua
InputActions:FindAction(actionName: string): InputAction
```

[ClientOnly] Возвращает InputAction по имени или nil, если действие не найдено или система ввода недоступна. Сначала ищет действие в inputs.json текущего модуля по полю Name; такие действия затем можно привязать в настройках модуля. Если в модуле действия с таким именем нет, ищет стандартное игровое действие, например UI/Cancel.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `actionName` | string |  |  |

**Returns:** [InputAction](./InputAction.md#inputaction)

