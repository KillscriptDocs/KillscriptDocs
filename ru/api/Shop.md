# Shop

API для работы с магазином внутри матча.

## Contents

- [Shop](#shop)

---

## Shop

[ClientOnly] Глобальный API для работы с магазином.

### Methods

#### BuyAndDropItem

```lua
Shop:BuyAndDropItem(itemName: string)
```

[ClientOnly] Покупает предмет по имени и сразу выбрасывает его.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemName` | string |  |  |

#### BuyItem

```lua
Shop:BuyItem(itemName: string)
```

[ClientOnly] Покупает предмет по имени.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemName` | string |  |  |

#### CanSellItem

```lua
Shop:CanSellItem(itemName: string): bool
```

[ClientOnly] Проверяет, может ли локальный игрок продать этот предмет прямо сейчас.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemName` | string |  |  |

**Returns:** bool

#### HasBoughtItem

```lua
Shop:HasBoughtItem(itemName: string): bool
```

[ClientOnly] Проверяет, покупал ли локальный игрок этот предмет в текущем раунде.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemName` | string |  |  |

**Returns:** bool

#### IsBuyLimitReachedForItem

```lua
Shop:IsBuyLimitReachedForItem(itemName: string): bool
```

[ClientOnly] Проверяет, достигнут ли лимит покупок для предмета магазина.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemName` | string |  |  |

**Returns:** bool

#### SellItem

```lua
Shop:SellItem(itemName: string)
```

[ClientOnly] Продаёт предмет по имени с возвратом денег.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemName` | string |  |  |

