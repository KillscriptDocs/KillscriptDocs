# InputAction

Input API: handling button presses.

## Contents

- [InputAction](#inputaction)
- [InputActions](#inputactions)

---

## InputAction

[ClientOnly] InputAction object.

### Methods

#### Disable

```lua
InputAction:Disable()
```

[ClientOnly] Disables the input action only if it is declared in the current module's inputs.json. Standard game actions cannot be disabled.

#### Enable

```lua
InputAction:Enable()
```

[ClientOnly] Enables the input action only if it is declared in the current module's inputs.json. Standard game actions cannot be enabled.

#### IsPressed

```lua
InputAction:IsPressed(): bool
```

[ClientOnly] true if the action is currently considered pressed. Returns false while any input field is focused.

**Returns:** bool

#### OnPerformed

```lua
InputAction:OnPerformed(func: LuaFunction)
```

[ClientOnly] Subscribes a function that is called when the action is performed. The callback is not called while any input field is focused.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `func` | LuaFunction |  |  |

#### ReadVector2

```lua
InputAction:ReadVector2(): Vector2
```

[ClientOnly] Returns the Vector2 value from the current input. Returns a zero vector if the action is disabled, has a different value type, or any input field is focused.

**Returns:** Vector2

## InputActions

[ClientOnly] Global API for finding and working with InputAction. Custom module actions are declared in inputs.json at the module root: specify Name, Type (Button, Value, or PassThrough), and Binding.Path in the Actions array. Binding can also define Interactions, Processors, and Groups.

### Methods

#### FindAction

```lua
InputActions:FindAction(actionName: string): InputAction
```

[ClientOnly] Returns an InputAction by name, or nil if the action is not found or the input system is unavailable. First searches the current module's inputs.json by the Name field. These actions can then be bound in the module settings. If the module has no action with this name, searches standard game actions, for example UI/Cancel.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `actionName` | string |  |  |

**Returns:** [InputAction](./InputAction.md#inputaction)

