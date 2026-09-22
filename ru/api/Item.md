# Item

API предметов.

## Contents

- [BridgeChargeItem](#bridgechargeitem)
- [Drop](#drop)
- [Drops](#drops)
- [EItemSlot](#eitemslot)
- [EThrowState](#ethrowstate)
- [FirearmItem](#firearmitem)
- [HitscanHit](#hitscanhit)
- [Item](#item)
- [Items](#items)
- [MeleeItem](#meleeitem)
- [ThrowableItem](#throwableitem)

---

## BridgeChargeItem

BridgeCharge как предмет инвентаря.

**Base:** [Item](./Item.md#item)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `IsPlanting` | bool | `get` |  | true, если идет установка BridgeCharge. |
| `PlantProgress` | number | `get` |  | Прогресс установки BridgeCharge (0.0 - 1.0). |
| `PlantRemainingTicks` | int | `get` |  | Оставшееся количество тиков установки BridgeCharge. |

## Drop

Сущность лежащего на земле предмета.

**Base:** [Entity](./Entity.md#entity)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Config` | [ConfigItem](./GameConfig.md#configitem) | `get` |  | Конфигурация лежащего предмета. Возвращает nil, если объект скрыт или конфигурация предмета недоступна. |
| `Item` | [Item](./Item.md#item) | `get` |  | Сам предмет. Возвращает nil, если объект скрыт или данные предмета недоступны. |


### Methods

#### PickUp

```lua
Drop:PickUp(switchToNewItem: bool = ...)
```

[ClientOnly] Подбирает выброшенный предмет. Разрешен подбор только предметов, выброшенных союзниками. В режиме Defusal требуется доступность меню покупки.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `switchToNewItem` | bool | ✅ | true, чтобы после подбора взять предмет в руки; false, чтобы только добавить его в инвентарь. Значение по умолчанию: true. |

## Drops

Глобальный API для листинга выброшенных предметов.

### Methods

#### GetAll

```lua
Drops:GetAll(): Array<Drop>
```

Возвращает все выброшенные предметы.

**Returns:** Array<[Drop](./Item.md#drop)>

#### GetNearby

```lua
Drops:GetNearby(): Array<Drop>
```

Возвращает ближайшие предметы выброшенные локальной командой, которые можно подобрать.

**Returns:** Array<[Drop](./Item.md#drop)>

## EItemSlot

Слоты предметов в инвентаре.

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | Слот не определен. |
| `PrimaryWeapon` | `1` | Основное оружие. |
| `SecondaryWeapon` | `2` | Вторичное оружие. |
| `Knife` | `3` | Нож. |
| `Grenade` | `4` | Граната. |
| `BridgeCharge` | `5` | BridgeCharge. |
| `Armor` | `6` | Броня. |
| `Defuser` | `7` | Набор для разминирования. |

## EThrowState

Состояние броска метательного предмета.

| Name | Value | Comment |
|---|---:|---|
| `None` | `0` | Бросок не выполняется. |
| `Preparing` | `1` | Подготовка к основному (сильному) броску. |
| `PreparingAlternate` | `2` | Подготовка к альтернативному (слабому) броску. |
| `Throwing` | `3` | Основной (сильный) бросок. |
| `ThrowingAlternate` | `4` | Альтернативный (слабый) бросок. |

## FirearmItem

Огнестрельное оружие как предмет инвентаря.

**Base:** [Item](./Item.md#item)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `ClipAmmo` | int | `get` |  | Количество патронов в магазине. |
| `Config` | [ConfigItemFirearm](./GameConfig.md#configitemfirearm) | `get/set` |  | Конфигурация огнестрельного оружия. Возвращает nil, если конфигурация недоступна. |
| `Dispersion` | number | `get` |  | Полный разброс оружия с учетом текущего состояния и конфигурации. Для оружия не в руках возвращает 0. |
| `HasAmmo` | bool | `get` |  | Возвращает true, если в магазине или в запасе есть патроны. |
| `IsReloading` | bool | `get` |  | Возвращает true, если оружие в руках и перезаряжается. |
| `ReloadProgress` | number | `get` |  | Прогресс перезарядки оружия в руках от 0 до 1. Для оружия не в руках возвращает 0. |
| `RemainingAmmo` | int | `get` |  | Количество патронов в запасе. |


### Methods

#### GetPredictedHits

```lua
FirearmItem:GetPredictedHits(): Array<Array<HitscanHit>>
```

[ServerOnly] [LocalAgent] Возвращает список возможных точек попадания, если оружие находится в руках локального агента, и он выстрелит прямо сейчас. Каждый тик на основе направления прицеливания и значения неточности вычисляется несколько случайных траекторий, по которым может быть произведен выстрел. Выстрел гарантированно будет произведен по одной из этих траекторий. Каждое значение возвращаемого массива - список потенциальных попаданий по одной из траекторий, аналогично результатам вызова HitscanHit для этой траектории.

**Returns:** Array<Array<[HitscanHit](./Item.md#hitscanhit)>>

#### HitscanFirearm

```lua
FirearmItem:HitscanFirearm(firePosition: Vector3, projectileDirection: Vector3): Array<HitscanHit>
```

Проводит симуляцию выстрела из указанной позиции в указанном направлении и возвращает список попаданий с учетом прострелов. На клиенте массив переиспользуется модулем до следующего вызова HitscanFirearm для любого оружия в этом модуле. Для сохранения скопируйте попадания в Lua-таблицу.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `firePosition` | Vector3 |  | Позиция источника выстрела, для агента можно взять из Aim.Position |
| `projectileDirection` | Vector3 |  | Направление из источника для выстрела, для агента можно взять из Aim.Direction |

**Returns:** Array<[HitscanHit](./Item.md#hitscanhit)>

## HitscanHit

Результат попадания снаряда (hitscan).

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `EntryPoint` | Vector3 | `get` |  | Точка входа снаряда в поверхность. |
| `EntryPower` | number | `get` |  | Относительная мощность на входе в поверхность (в диапазоне 0-1, где 1 - полная мощность). Мощность уменьшается при прострелах насквозь. |
| `ExitPower` | number | `get` |  | Относительная мощность на выходе из поверхности (в диапазоне 0-1, где 1 - полная мощность). Мощность уменьшается при прострелах насквозь. |
| `HasExited` | bool | `get` |  | true, если снаряд вышел насквозь. |
| `Hitbox` | [Hitbox](./Agent.md#hitbox) | `get` |  | Хитбокс, в который произошло попадание (или nil). |

## Item

Базовый объект всех предметов.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AsBridgeChargeItem` | [BridgeChargeItem](./Item.md#bridgechargeitem) | `get` |  | Возвращает предмет как BridgeChargeItem или nil, если это предмет другого типа. |
| `AsFirearmItem` | [FirearmItem](./Item.md#firearmitem) | `get` |  | Возвращает предмет как FirearmItem или nil, если это предмет другого типа. |
| `AsMeleeItem` | [MeleeItem](./Item.md#meleeitem) | `get` |  | Возвращает предмет как MeleeItem или nil, если это предмет другого типа. |
| `AsThrowableItem` | [ThrowableItem](./Item.md#throwableitem) | `get` |  | Возвращает предмет как ThrowableItem или nil, если это предмет другого типа. |
| `ConfigItem` | [ConfigItem](./GameConfig.md#configitem) | `get/set` |  | Конфигурация предмета. Возвращает nil, если конфигурация недоступна. |
| `Icon` | [Texture](./Texture.md#texture) | `get/set` |  | Иконка предмета в полном разрешении. Возвращает nil, если у предмета нет иконки. |
| `IconSmall` | [Texture](./Texture.md#texture) | `get/set` |  | Маленькая иконка предмета с уменьшенной детализацией. Возвращает nil, если у предмета нет такой иконки. |
| `IsBridgeCharge` | bool | `get` |  | true, если предмет — BridgeCharge. |
| `IsDropped` | bool | `get` |  | true, если у предмета нет владельца. |
| `IsFirearm` | bool | `get` |  | true, если предмет — огнестрельное оружие. |
| `IsMelee` | bool | `get` |  | true, если предмет — оружие ближнего боя. |
| `IsThrowable` | bool | `get` |  | true, если предмет — метательный. |
| `IsVisible` | bool | `get` |  | true, если предмет видим для локальной команды. Когда предмет не виден, динамические члены возвращают неопределённые значения, а статичные данные типа и конфигурации остаются доступными. |
| `ItemSlot` | [EItemSlot](./Item.md#eitemslot) | `get/set` |  | Слот инвентаря, в который кладется предмет из конфигурации. |
| `Name` | string | `get/set` |  | Название предмета из конфигурации. |
| `Position` | Vector3 | `get` |  | Позиция агента, у которого находится предмет, либо позиция выброшенного предмета. |

## Items

Глобальный API для листинга предметов.

### Methods

#### GetAll

```lua
Items:GetAll(): Array<Item>
```

Возвращает все предметы (Items) на карте.

**Returns:** Array<[Item](./Item.md#item)>

#### GetAllBridgeCharges

```lua
Items:GetAllBridgeCharges(): Array<BridgeChargeItem>
```

Возвращает все BridgeCharge в виде предметов на карте.

**Returns:** Array<[BridgeChargeItem](./Item.md#bridgechargeitem)>

## MeleeItem

Оружие ближнего боя как предмет инвентаря.

**Base:** [Item](./Item.md#item)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Config` | [ConfigItemMelee](./GameConfig.md#configitemmelee) | `get/set` |  | Конфигурация холодного оружия. Возвращает nil, если конфигурация недоступна. |


### Methods

#### HitscanMelee

```lua
MeleeItem:HitscanMelee(firePosition: Vector3, direction: Vector3, distance: number): HitscanHit
```

Проводит симуляцию удара из указанной позиции в указанном направлении и возвращает попадание или nil, если попадания нет.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `firePosition` | Vector3 |  | Позиция для удара, для агента можно взять из Aim.Position |
| `direction` | Vector3 |  | Направление для удара, для агента можно взять из Aim.Direction |
| `distance` | number |  | Максимальная дистанция удара, до которой производится симуляция. В качестве значения можно использовать ConfigItemMelee.StrongAttackMaxHitDistance |

**Returns:** [HitscanHit](./Item.md#hitscanhit)

## ThrowableItem

Метательный предмет (граната) как элемент инвентаря.

**Base:** [Item](./Item.md#item)

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `Config` | [ConfigItemThrowable](./GameConfig.md#configitemthrowable) | `get/set` |  | Конфигурация метательного предмета. Возвращает nil, если конфигурация недоступна. |
| `ThrowState` | [EThrowState](./Item.md#ethrowstate) | `get` |  | Текущее состояние броска. |


### Methods

#### SimulateThrowTrajectory

```lua
ThrowableItem:SimulateThrowTrajectory(throwState: EThrowState): Array<Vector3>
```

[ClientOnly] Возвращает симулированную траекторию броска для текущего поворота и позиции владельца. Массив переиспользуется всем модулем: его содержимое действительно только до следующего вызова SimulateTrajectory или SimulateThrowTrajectory для любого объекта в этом же модуле, даже если вызов вернет пустой массив. Для сохранения скопируйте точки в Lua-таблицу до следующего вызова. Вызовы других модулей, обновление состояния сцены и удаление объекта не изменяют возвращенный массив.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `throwState` | [EThrowState](./Item.md#ethrowstate) |  | Должно быть Preparing или PreparingAlternate, иначе вернет пустой массив, для текущего предмета состояние можно взять из поля ThrowState |

**Returns:** Array<Vector3>

