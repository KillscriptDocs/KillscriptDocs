# Shop

API for interacting with the in-match shop.

## Contents

- [Shop](#shop)

---

## Shop

[ClientOnly] Global API for working with the shop.

### Methods

#### BuyAndDropItem

```lua
Shop:BuyAndDropItem(itemName: string)
```

[ClientOnly] Buys an item by name and immediately drops it.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemName` | string |  |  |

#### BuyItem

```lua
Shop:BuyItem(itemName: string)
```

[ClientOnly] Buys an item by name.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemName` | string |  |  |

#### CanSellItem

```lua
Shop:CanSellItem(itemName: string): bool
```

[ClientOnly] Checks whether the local player can sell this item right now.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemName` | string |  |  |

**Returns:** bool

#### HasBoughtItem

```lua
Shop:HasBoughtItem(itemName: string): bool
```

[ClientOnly] Checks whether the local player bought this item in the current round.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemName` | string |  |  |

**Returns:** bool

#### IsBuyLimitReachedForItem

```lua
Shop:IsBuyLimitReachedForItem(itemName: string): bool
```

[ClientOnly] Checks whether the purchase limit for the shop item has been reached.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemName` | string |  |  |

**Returns:** bool

#### SellItem

```lua
Shop:SellItem(itemName: string)
```

[ClientOnly] Sells an item by name with a money refund.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemName` | string |  |  |

