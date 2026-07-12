# GameConfig

API конфигурации игры: параметры предметов, глобальные константы, флаги и т.д.

## Contents

- [ConfigConstant](#configconstant)
- [ConfigDefusalShop](#configdefusalshop)
- [ConfigFlag](#configflag)
- [ConfigItem](#configitem)
- [ConfigItemFirearm](#configitemfirearm)
- [ConfigItemMelee](#configitemmelee)
- [ConfigItemThrowable](#configitemthrowable)
- [ItemConfigs](#itemconfigs)
- [WeaponPreview](#weaponpreview)

---

## ConfigConstant

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AirAcceleration` | number | `get` | ✅ | Определяет ускорение при передвижении в воздухе (sv_airaccelerate) |
| `AirFriction` | number | `get` | ✅ | Коэффициент трения при движении в воздухе (аналогично sv_friction). |
| `BombSoundRadius` | number | `get` | ✅ | Радиус слышимости звука установленного Bridge Charge. |
| `CrouchJumpHorizontalImpulse` | number | `get` | ✅ | Горизонтальный импульс прыжка из приседа. |
| `CrouchJumpVerticalImpulse` | number | `get` | ✅ | Вертикальный импульс прыжка из приседа. |
| `CrouchSpeed` | number | `get` | ✅ | Скорость передвижения в приседе (м/с). |
| `CrouchStabilizationFactor` | number | `get` | ✅ | Насколько присед уменьшает длительность оглушения (0 - никак, 1 - мгновенный выход из оглушения). |
| `CrouchSwitchTime` | number | `get` | ✅ | Сколько секунд занимает переход между стоянием и приседом. |
| `CrouchUncertaintyLossFactor` | number | `get` | ✅ | Множитель набора точности стрельбы в приседе (1 - такая же скорость как стоя, >1 - точность в присяде набирается быстрее). |
| `DefusalAgentsPerTeam` | number | `get` | ✅ | Количество специалистов в одной команде. |
| `DefusalBombDefuseNoDefuserTime` | number | `get` | ✅ | Сколько секунд занимает взлом Bridge Charge без Cyberdeck. |
| `DefusalBombDefuseWithDefuserTime` | number | `get` | ✅ | Сколько секунд занимает взлом Bridge Charge с помощью Cyberdeck. |
| `DefusalBombExplosionExpansionTime` | number | `get` | ✅ | За сколько секунд сфера взрыва бомбы расширяется до максимального радиуса. |
| `DefusalBombExplosionRadius` | number | `get` | ✅ | Радиус взрыва Bridge Charge. |
| `DefusalBombExplosionTime` | number | `get` | ✅ | Через сколько секунд после установки Bridge Charge взрывается. |
| `DefusalBombPlantTime` | number | `get` | ✅ | Сколько секунд занимает установка Bridge Charge. |
| `DefusalLateBuyDuration` | number | `get` | ✅ | Сколько секунд после начала fight-фазы ещё разрешена покупка в buy zone. |
| `DefusalMoneyDefuse` | number | `get` | ✅ | Личная награда специалисту за взлом Bridge Charge. |
| `DefusalMoneyLimitCT` | number | `get` | ✅ | Максимум денег, который может хранить специалист Killscript Company. |
| `DefusalMoneyLimitT` | number | `get` | ✅ | Максимум денег, который может хранить специалист Bridger Front. |
| `DefusalMoneyLose0CT` | number | `get` | ✅ | Награда Killscript Company за поражение после 0 предыдущих поражений подряд. |
| `DefusalMoneyLose0T` | number | `get` | ✅ | Награда Bridger Front за поражение после 0 предыдущих поражений подряд. |
| `DefusalMoneyLose1CT` | number | `get` | ✅ | Награда Killscript Company за поражение после 1 предыдущих поражений подряд. |
| `DefusalMoneyLose1T` | number | `get` | ✅ | Награда Bridger Front за поражение после 1 предыдущих поражений подряд. |
| `DefusalMoneyLose2CT` | number | `get` | ✅ | Награда Killscript Company за поражение после 2 предыдущих поражений подряд. |
| `DefusalMoneyLose2T` | number | `get` | ✅ | Награда Bridger Front за поражение после 2 предыдущих поражений подряд. |
| `DefusalMoneyLose3CT` | number | `get` | ✅ | Награда Killscript Company за поражение после 3 предыдущих поражений подряд. |
| `DefusalMoneyLose3T` | number | `get` | ✅ | Награда Bridger Front за поражение после 3 предыдущих поражений подряд. |
| `DefusalMoneyLose4CT` | number | `get` | ✅ | Награда Killscript Company за поражение после 4 и более поражений подряд. |
| `DefusalMoneyLose4T` | number | `get` | ✅ | Награда Bridger Front за поражение после 4 и более поражений подряд. |
| `DefusalMoneyLosePlantBonus` | number | `get` | ✅ | Дополнительная награда атакакующей команде за поражение после успешной установки Bridge Charge. |
| `DefusalMoneyPlant` | number | `get` | ✅ | Личная награда специалисту за установку Bridge Charge. |
| `DefusalMoneyStartCT` | number | `get` | ✅ | Стартовые деньги специалиста Killscript Company. |
| `DefusalMoneyStartT` | number | `get` | ✅ | Стартовые деньги специалист Bridger Front. |
| `DefusalMoneyWinBombDefusal` | number | `get` | ✅ | Награда обороняющейся команде за победу взломом Bridge Charge. |
| `DefusalMoneyWinBombDetonation` | number | `get` | ✅ | Награда атакакующей команде за победу взрывом Bridge Charge. |
| `DefusalMoneyWinTeamEliminationCT` | number | `get` | ✅ | Награда Killscript Company за победу уничтожением всей команды соперника. |
| `DefusalMoneyWinTeamEliminationT` | number | `get` | ✅ | Награда Bridger Front за победу уничтожением всей команды соперника. |
| `DefusalMoneyWinTimeOver` | number | `get` | ✅ | Награда обороняющейся команде за победу по истечении времени раунда. |
| `DefusalRoundsPerSide` | number | `get` | ✅ | Сколько раундов играется до смены сторон. |
| `DefusalRoundsToWin` | number | `get` | ✅ | Сколько выигранных раундов нужно для победы в матче. |
| `DefusalStageBuyDuration` | number | `get` | ✅ | Длительность buy-фазы раунда в секундах. |
| `DefusalStageEndDuration` | number | `get` | ✅ | Длительность паузы перед началом следующего раунда, если стороны не меняются. |
| `DefusalStageEnd_SwapDuration` | number | `get` | ✅ | Длительность послераундовой фазы при смене сторон. |
| `DefusalStageFightDuration` | number | `get` | ✅ | Длительность боевой фазы раунда в секундах. |
| `DefusalTimeoutDuration` | number | `get` | ✅ | Длительность одного командного тайм-аута в секундах. |
| `DefusalTimeoutLimit` | number | `get` | ✅ | Максимум тайм-аутов на команду за матч. |
| `DefuseSoundRadius` | number | `get` | ✅ | Радиус слышимости взлома Bridge Charge. |
| `DelayCrouchJump` | number | `get` | ✅ | Минимальное время в секундах между двумя последовательными crouch jump. |
| `DynamicAirFriction` | number | `get` | ✅ | Коэффициент трения для "динамической" скорости при нахождении в воздухе. Гравитация и вертикальная составляющая прыжка считаются отдельной "динамической" скоростью, которая не связана напрямую с обычной скоростью движения персонажа. |
| `DynamicGroundFriction` | number | `get` | ✅ | Коэффициент трения для "динамической" скорости при движении по земле. Гравитация и вертикальная составляющая прыжка считаются отдельной "динамической" скоростью, которая не связана напрямую с обычной скоростью движения персонажа. |
| `FireDamageInitial` | number | `get` | ✅ | Начальный урон от нахождения в огне в секунду. |
| `FireDamageMax` | number | `get` | ✅ | Максимальный урон от нахождения в огне в секунду. |
| `FireDamageTimeToMaxDamage` | number | `get` | ✅ | За сколько секунд урон от огня разгоняется от начального до максимального. |
| `FireStoppingPower` | number | `get` | ✅ | Насколько огонь замедляет специалистов (один минус множитель к скорости движения при каждом получении урона). |
| `FireUncertaintyGainPerSecond` | number | `get` | ✅ | Сколько неточности стрельбы в секунду добавляет нахождение в огне. |
| `FireUncertaintyLimit` | number | `get` | ✅ | Максимальная неточность стрельбы, которую можно набрать от огня. |
| `GrenadeCarryLimit` | number | `get` | ✅ | Максимум гранат, которые специалист может носить одновременно. |
| `GroundAcceleration` | number | `get` | ✅ | Определяет ускорение при передвижении по земле (sv_accelerate) |
| `GroundFriction` | number | `get` | ✅ | Коэффициент трения при движении по земле (sv_friction). |
| `InGameViolation_AfkPoints` | number | `get` | ✅ | Сколько очков нарушений выдаётся за AFK (нахождение в buy zone на протяжении всего раунда). |
| `InGameViolation_FriendlyDamagePointsMultiplier` | number | `get` | ✅ | Сколько очков нарушений начисляется за каждую единицу урона по союзнику. |
| `InGameViolation_FriendlyEmpAdditionalHitPoints` | number | `get` | ✅ | Очки нарушений за каждое последующее попадание EMP по союзнику. |
| `InGameViolation_FriendlyEmpFirstHitPoints` | number | `get` | ✅ | Очки нарушений за первое попадание EMP по союзнику. |
| `InGameViolation_FriendlyEmpSecondHitPoints` | number | `get` | ✅ | Очки нарушений за второе попадание EMP по союзнику. |
| `InGameViolation_FriendlyShieldBreakPoints` | number | `get` | ✅ | Сколько очков нарушений начисляется за сломанный Kinetic Shield союзника. |
| `InGameViolation_KickThreshold` | number | `get` | ✅ | Порог очков нарушений, после которого игрок исключается из матча. |
| `JumpCooldown` | number | `get` | ✅ | Минимальная задержка между прыжками. |
| `JumpHorizontalImpulse` | number | `get` | ✅ | Горизонтальный импульс обычного прыжка. |
| `JumpSoundRadius` | number | `get` | ✅ | Радиус слышимости прыжка. |
| `JumpVerticalImpulse` | number | `get` | ✅ | Вертикальный импульс обычного прыжка. |
| `LandingFallSpeedThreshold` | number | `get` | ✅ | Порог вертикальной скорости падения, после которого применяется штраф жёсткого приземления. |
| `LandingSoundRadius` | number | `get` | ✅ | Радиус слышимости приземления. |
| `LandingSpeedFactor` | number | `get` | ✅ | Множитель скорости после жёсткого приземления. |
| `LeaverTimeoutSeconds` | number | `get` | ✅ | Сколько суммарно секунд игрок может быть отключён за время матча до того, как он будет исключен из матча. |
| `MatchConnectionTImeoutSeconds` | number | `get` | ✅ | Сколько секунд игра ждёт подключения игроков перед отменой старта матча. |
| `MaxGroundAngle` | number | `get` | ✅ | Максимальный угол поверхности, на котором может стоять специалист. |
| `MeleeHitSoundRadius` | number | `get` | ✅ | Радиус слышимости попадания ближней атакой. |
| `PenetrationAdditionalDistance` | number | `get` | ✅ | Дополнительный штраф к запасу пробития после прохождения через поверхность. |
| `PenetrationGlobalFactor` | number | `get` | ✅ | Глобальный множитель пробития: чем больше значение, тем легче пули проходят через материалы. |
| `PlantSoundRadius` | number | `get` | ✅ | Радиус слышимости установки Bridge Charge. |
| `PostDeathVisionSpotDuration` | number | `get` | ✅ | Сколько секунд после смерти специалист ещё считается источником видимости. |
| `ReloadSoundRadius` | number | `get` | ✅ | Радиус слышимости перезарядки. |
| `RunSoundRadius` | number | `get` | ✅ | Радиус слышимости шагов при беге. |
| `RunSpeed` | number | `get` | ✅ | Максимальная скорость бега (м/с). |
| `ScopeUncertaintyHalfLifeFactor` | number | `get` | ✅ | Множитель периода затухания накопленной неточности во время прицеливания через ADS. Меньше 1 - точность быстрее набирается при прицеливании. |
| `SonarPingInterval` | number | `get` | ✅ | Интервал между импульсами сонар-гранаты. |
| `SonarPingSpotDuration` | number | `get` | ✅ | Сколько секунд после импульса сонар-граната держит метку видимости. |
| `SoundSpotDuration_Firearm` | number | `get` | ✅ | Сколько секунд после выстрела система обнаружения "видит" вражеского специалиста через стены в радиусе звука/ |
| `SoundSpotDuration_Movement` | number | `get` | ✅ | Сколько секунд после передвижения система обнаружения "видит" вражеского специалиста через стены в радиусе звука/ |
| `StartMatchDelaySeconds` | number | `get` | ✅ | Задержка перед стартом матча после того, как все слоты заполнены. |
| `ViewAngle` | number | `get` | ✅ | Максимальный угол от направления прицеливания, в котором специалисты визуально считывают информацию. |
| `WalkSpeed` | number | `get` | ✅ | Скорость ходьбы (м/с) и порог, после которого скорость передвижения начинает влиять на точность стрельбы. |


### Methods

#### GetShopConfigs

```lua
ConfigConstant.GetShopConfigs(): Array<ConfigDefusalShop>
```

**Returns:** Array<[ConfigDefusalShop](./GameConfig.md#configdefusalshop)>

## ConfigDefusalShop

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AvailableForCT` | bool | `get` |  | Может ли специалисты Killscript Company покупать этот предмет. |
| `AvailableForT` | bool | `get` |  | Могут ли специалисты Bridger Front покупать этот предмет. |
| `BuyLimit` | int | `get` |  | Максимум покупок этого предмета за раунд на одного специалиста. |
| `Column` | int | `get` |  | Рекомендуемый номер колонки в сетке buy menu. |
| `Item_cfg` | [ConfigItem](./GameConfig.md#configitem) | `get` |  | Предмет, который продаётся по этой записи магазина. |
| `Price` | int | `get` |  | Цена покупки. При обратной продаже в buy-фазе возвращается это же значение. |
| `Row` | int | `get` |  | Рекомендуемый номер строки в сетке buy menu. |
| `StartingForCT` | bool | `get` |  | Выдаётся ли предмет специалистам Killscript Company в начале раунда. |
| `StartingForT` | bool | `get` |  | Выдаётся ли предмет специалистам Bridger Front в начале раунда. |
| `name` | string | `get` |  |  |

## ConfigFlag

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AllowAirStrafe` | bool | `get` | ✅ | Отключает механизм, ограничивающий набор скорости в воздухе, позволяя персонажам набирать огромную скорость. |
| `AllowWallhack` | bool | `get` | ✅ | Отключает серверную систему проверки видимости, позволяя всем игрокам получать доступ ко всей информации. |
| `DefusalKeepInventory` | bool | `get` | ✅ | Сохранять ли инвентарь между раундами, когда экономика не сбрасывается. |
| `FalloffUncertaintyGain` | bool | `get` | ✅ | Уменьшать ли прибавку неточности от попадания по мере роста дистанции между DamageFalloffBegin и DamageFalloffEnd. |
| `HeadAtAimDirection` | bool | `get` | ✅ | Смещать ли голову персонажа в сторону реального направления прицеливания. |
| `HeadAtLookRotation` | bool | `get` | ✅ | Смещать ли голову персонажа в сторону направления взгляда. |
| `OcclusionSymmetry` | bool | `get` | ✅ | Меняет систему проверки видимости таким образом, что лучи проверки видимости идут не только от головы наблюдателя к частям тела вражеских специалистов, но и от частей тела наблюдателя к головам вражеских специалистов. |
| `Revealnventory` | bool | `get` | ✅ | Показывать ли противникам не только текущий предмет, но и остальной инвентарь игрока. |
| `StunnedPlayerCannotStunAnyone` | bool | `get` | ✅ | Запрещает оглушённому игроку накладывать стан на других игроков выстрелами. |

## ConfigItem

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AirborneUncertainty` | number | `get` |  | Дополнительная неточность для огнестрельного оружия, когда владелец находится в воздухе. |
| `CarryLimit` | int | `get` |  | Максимум одинаковых предметов этого типа в инвентаре. Сейчас в основном используется для гранат. |
| `DrawTime` | number | `get` |  | Длительность доставания или переключения на предмет в секундах. |
| `Droppable` | bool | `get` |  | Можно ли выбрасывать предмет, ронять его после смерти и покупать с выбросом в мир. |
| `Icon` | [Sprite](./Sprite.md#sprite) | `get` |  | Иконка предмета в полном разрешении. Возвращает nil, если у конфигурации нет иконки. |
| `IconSmall` | [Sprite](./Sprite.md#sprite) | `get` |  | Маленькая иконка предмета с уменьшенной детализацией. Возвращает nil, если у конфигурации нет такой иконки. |
| `ItemSlot` | [EItemSlot](./Item.md#eitemslot) | `get` |  | Слот инвентаря и категория предмета. |
| `KillReward` | int | `get` |  | Денежная награда за убийство этим предметом. |
| `MovementSpeedFactor` | number | `get` |  | Множитель скорости передвижения, пока предмет экипирован. |
| `MovementSpeedUncertaintyFactor` | number | `get` |  | Сколько дополнительной неточности даёт скорость сверх WalkSpeed за каждый м/с. |
| `MovementSpeedUncertaintyLimit` | number | `get` |  | Предел дополнительной неточности от текущей скорости передвижения. |
| `MovementUncertaintyGain` | number | `get` |  | Сколько неточности добавляется за каждый метр пройденной дистанции. |
| `MovementUncertaintyLimit` | number | `get` |  | Максимум неточности, который может накопиться от перемещения. |
| `Name` | string | `get` |  | Название предмета |
| `RotationSpeed` | number | `get` |  | Скорость поворота прицела к цели в градусах в секунду. |
| `RotationUncertaintyGain` | number | `get` |  | Сколько неточности добавляется за каждый градус поворота прицела. |
| `RotationUncertaintyLimit` | number | `get` |  | Максимум неточности, который может накопиться от поворота прицела. |
| `ThirdPersonAnimationId` | int | `get` |  | ID набора анимаций для third-person аниматора персонажа. 0 - пистолет, 1 - винтовка, 2 - нож, 3 - граната, 4 - устройство. |
| `UncertaintyBaseLoss` | number | `get` |  | Дополнительное линейное уменьшение накопленной неточности в секунду. |
| `UncertaintyHalfLife` | number | `get` |  | Время в секундах, за которое накопленная неточность прицеливания уменьшается вдвое. |
| `UncertaintyLossStability` | number | `get` |  | Насколько быстро неточность продолжает спадать во время оглушения: 0 - вообще не спадает, 1 - как обычно. |
| `name` | string | `get` |  | Уникальное название предмета. Используется как идентификатор. |

## ConfigItemFirearm

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `AdsHasScreen` | bool | `get` |  | Есть ли у прицела отдельный экран или линза, при наличии которого модулям не следует отображать перекрестие прицела в HUD. |
| `AdsTime` | number | `get` |  | Время входа и выхода из ADS в секундах. |
| `AdsZoomX` | number | `get` |  | Кратность приближения при прицеливании через ADS. |
| `CanAds` | bool | `get` |  | Разрешено ли этому оружию прицеливание через ADS. |
| `Damage` | number | `get` |  | Базовый урон вблизи до применения множителей по частям тела и падения урона по дистанции. |
| `DamageDistant` | number | `get` |  | Урон на дальней дистанции после полного падения урона. |
| `DamageFalloffBegin` | number | `get` |  | Дистанция, с которой начинается переход от ближнего урона к дальнему. |
| `DamageFalloffEnd` | number | `get` |  | Дистанция, на которой падение урона считается полностью завершённым. |
| `Dispersion` | number | `get` |  | Базовый разброс выстрела в градусах до учёта неопределенности (из-за поворота камеры, движения и т.д.) |
| `FireRate` | number | `get` |  | Скорострельность в выстрелах в минуту. |
| `FireSoundRadius` | number | `get` |  | Радиус слышимости выстрела, в котором специалист будет обнаружен даже через стены. |
| `HeadDamageFactor` | number | `get` |  | Множитель урона при попадании в голову. |
| `HitStunTime` | number | `get` |  | Длительность оглушения от попадания в голову (в секундах). |
| `HitUncertaintyGain` | number | `get` |  | Сколько неточности получает жертва при попадании. |
| `HitUncertaintyLimit` | number | `get` |  | Максимум неточности, до которого попадание может довести жертву. |
| `Item_cfg` | [ConfigItem](./GameConfig.md#configitem) | `get` |  | Базовый предмет из таблицы Item, к которому привязана эта конфигурация огнестрельного оружия. |
| `LegsDamageFactor` | number | `get` |  | Множитель урона при попадании в ноги. |
| `MaxClipAmmo` | int | `get` |  | Вместимость магазина. |
| `MaxHitDistance` | number | `get` |  | Максимальная дистанция нанесения урона. |
| `PenetrationPower` | number | `get` |  | Запас пробития для прохождения пули через поверхности. |
| `ProjectilesPerShot` | int | `get` |  | Количество снарядов, выпускаемых за один выстрел (1 для всех видов оружия, кроме дробовиков). |
| `RagdollHitForce` | number | `get` |  | Сила импульса, прикладываемого к ragdoll при смертельном попадании. |
| `ReloadTime` | number | `get` |  | Длительность перезарядки в секундах. |
| `ShieldPenetration` | number | `get` |  | Процент урона, который проходит сквозь Kinetic Shield. |
| `ShotUncertaintyGain` | number | `get` |  | Сколько неточности добавляется стрелку за один выстрел. |
| `ShotUncertaintyLimit` | number | `get` |  | Предел неточности, который может накопиться от стрельбы. |
| `ShotUncertaintyMul` | number | `get` |  | Множитель, который применяется к уже накопленной неточности при выстреле. |
| `StartAmmo` | int | `get` |  | Общий запас патронов при выдаче предмета, включая магазин. |
| `StoppingPower` | number | `get` |  | Доля скорости цели, которая срезается при попадании. |
| `name` | string | `get` |  |  |

## ConfigItemMelee

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `FastAttackBackstabDamage` | number | `get` |  | Урон быстрой атаки в спину (не используется). |
| `FastAttackDamage` | number | `get` |  | Урон быстрой атаки (не используется). |
| `FastAttackDamageDelay` | number | `get` |  | Задержка от начала быстрой атаки до момента нанесения урона (не используется). |
| `FastAttackDuration` | number | `get` |  | Длительность быстрой атаки в секундах не используется). |
| `FastAttackMaxHitDistance` | number | `get` |  | Максимальная дистанция попадания для быстрой атаки (не используется). |
| `FastAttackStoppingPower` | number | `get` |  | Насколько быстрая атака замедляет цель при попадании (не используется). |
| `FastAttackStunTime` | number | `get` |  | Длительность оглушения от быстрой атаки (не используется). |
| `FastAttackUncertaintyGain` | number | `get` |  | Сколько неточности быстрая атака добавляет жертве (не используется). |
| `FastAttackUncertaintyLimit` | number | `get` |  | Максимум неточности, который быстрая атака может навесить жертве (не используется). |
| `Item_cfg` | [ConfigItem](./GameConfig.md#configitem) | `get` |  | Базовый предмет из таблицы Item, к которому привязана эта конфигурация ближнего оружия. |
| `StrongAttackBackstabDamage` | number | `get` |  | Урон сильной атаки в спину. |
| `StrongAttackDamage` | number | `get` |  | Урон сильной атаки. |
| `StrongAttackDamageDelay` | number | `get` |  | Задержка от начала сильной атаки до момента нанесения урона. |
| `StrongAttackDuration` | number | `get` |  | Длительность сильной атаки в секундах. |
| `StrongAttackMaxHitDistance` | number | `get` |  | Максимальная дистанция попадания для сильной атаки. |
| `StrongAttackStoppingPower` | number | `get` |  | Насколько сильная атака замедляет цель при попадании. |
| `StrongAttackStunTime` | number | `get` |  | Длительность оглушения от сильной атаки. |
| `StrongAttackUncertaintyGain` | number | `get` |  | Сколько неточности сильная атака добавляет жертве. |
| `StrongAttackUncertaintyLimit` | number | `get` |  | Максимум неточности, который сильная атака может навесить жертве. |
| `name` | string | `get` |  |  |

## ConfigItemThrowable

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `BounceLimit` | int | `get` |  | Максимум отскоков до принудительного затухания движения. |
| `BouncinessFloor` | number | `get` |  | Коэффициент вертикального отскока при ударе о пол. |
| `BouncinessWall` | number | `get` |  | Коэффициент отскока при ударе о стены и другие обычные поверхности. |
| `Damage` | number | `get` |  | Урон взрыва вблизи. |
| `DamageDistant` | number | `get` |  | Урон взрыва на краю радиуса после полного падения. |
| `DamageFalloffBegin` | number | `get` |  | Дистанция, с которой начинается падение урона взрыва. |
| `DamageFalloffEnd` | number | `get` |  | Дистанция, на которой падение урона взрыва полностью завершается. |
| `ExplodeOnFire` | bool | `get` |  | Взрывать ли предмет при касании огня. |
| `ExplodeOnFloor` | bool | `get` |  | Взрывать ли предмет при столкновении с полом или другой почти горизонтальной поверхностью. |
| `ExplodeOnImpact` | bool | `get` |  | Взрывать ли предмет при любом столкновении. |
| `ExplodeOnStop` | bool | `get` |  | Взрывать ли предмет, когда он почти полностью остановился. |
| `ExplosionBlindnessDuration` | number | `get` |  | Длительность слепоты от взрыва в секундах. |
| `ExplosionBlindnessRadius` | number | `get` |  | Радиус, в котором взрыв накладывает слепоту на пораженных специалистов. Ослепленные специалисты не могут получать информацию через свои органы чувств, и опираются только на информацию, переданную от союзников. |
| `ExplosionDelay` | number | `get` |  | Задержка до автоматического взрыва после броска в секундах. |
| `ExplosionFireExtinguishRadius` | number | `get` |  | Радиус, в котором взрыв тушит огонь. |
| `ExplosionLifetime` | number | `get` |  | Сколько секунд объект взрыва существует до удаления. |
| `ExplosionSoundRadius` | number | `get` |  | Радиус слышимости звука взрыва для звуковой системы. Не влияет на распространение информации, информация о взрыве доступна на любом расстоянии. |
| `FastThrowDuration` | number | `get` |  | Длительность анимации обычного броска после того, как граната была брошена. |
| `FastThrowSpeed` | number | `get` |  | Начальная скорость обычного броска (м/с). |
| `Gravity` | number | `get` |  | Ускорение вниз, которое применяется к летящему снаряду (м/с^2). |
| `HitStunTime` | number | `get` |  | Длительность оглушения от взрыва в секундах. |
| `HitUncertaintyGain` | number | `get` |  | Сколько неточности взрыв добавляет пострадавшему. |
| `HitUncertaintyLimit` | number | `get` |  | Максимум неточности, который этот взрыв может навесить пострадавшему. |
| `Item_cfg` | [ConfigItem](./GameConfig.md#configitem) | `get` |  | Базовый предмет из таблицы Item, к которому привязана эта конфигурация метательного предмета. |
| `MaxHitDistance` | number | `get` |  | Максимальный радиус, в котором наносится урон от взрыва. |
| `PrepareThrowDuration` | number | `get` |  | Время подготовки перед тем, как гранату можно бросить. |
| `ShieldDecayHPPerSecond` | number | `get` |  | Сколько прочности щит теряет каждую секунду. |
| `ShieldHP` | number | `get` |  | Запас прочности купола или щита, если этот взрыв создаёт защитную зону. |
| `ThrownColliderRadius` | number | `get` |  | Радиус сферического коллайдера летящего предмета. |
| `TrajectoryColor` | Color | `get` |  | Цвет линии предпросмотра траектории гранаты. |
| `WeakThrowDuration` | number | `get` |  | Длительность анимации слабого броска после того, как граната была брошена. |
| `WeakThrowSpeed` | number | `get` |  | Начальная скорость слабого броска (м/с). |
| `name` | string | `get` |  |  |

## ItemConfigs

### Methods

#### GetConfigItemByName

```lua
ItemConfigs.GetConfigItemByName(name: string): ConfigItem
```

Возвращает конфигурацию предмета по имени или nil, если имя пустое или предмет не найден.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `name` | string |  |  |

**Returns:** [ConfigItem](./GameConfig.md#configitem)

#### GetConfigItemFirearmByName

```lua
ItemConfigs.GetConfigItemFirearmByName(name: string): ConfigItemFirearm
```

Возвращает конфигурацию огнестрельного предмета по имени или nil, если имя пустое или предмет не найден.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `name` | string |  |  |

**Returns:** [ConfigItemFirearm](./GameConfig.md#configitemfirearm)

#### GetConfigItemMeleeByName

```lua
ItemConfigs.GetConfigItemMeleeByName(name: string): ConfigItemMelee
```

Возвращает конфигурацию холодного оружия по имени или nil, если имя пустое или предмет не найден.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `name` | string |  |  |

**Returns:** [ConfigItemMelee](./GameConfig.md#configitemmelee)

#### GetConfigItemThrowableByName

```lua
ItemConfigs.GetConfigItemThrowableByName(name: string): ConfigItemThrowable
```

Возвращает конфигурацию метательного предмета по имени или nil, если имя пустое или предмет не найден.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `name` | string |  |  |

**Returns:** [ConfigItemThrowable](./GameConfig.md#configitemthrowable)

#### GetItemConfigById

```lua
ItemConfigs.GetItemConfigById(itemId: int): ConfigItem
```

Возвращает конфигурацию предмета по ID или nil, если ID некорректен или предмет не найден.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemId` | int |  |  |

**Returns:** [ConfigItem](./GameConfig.md#configitem)

#### GetItemIconById

```lua
ItemConfigs.GetItemIconById(itemId: int): Sprite
```

Возвращает иконку предмета по ID или nil, если ID некорректен, предмет не найден или у него нет иконки.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemId` | int |  |  |

**Returns:** [Sprite](./Sprite.md#sprite)

#### GetItemNameById

```lua
ItemConfigs.GetItemNameById(itemId: int): string
```

Возвращает имя предмета по ID. Если предмет не найден, возвращает 'Unknown'.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `itemId` | int |  |  |

**Returns:** string

## WeaponPreview

[ClientOnly]

### Methods

#### GetWeaponPreview

```lua
WeaponPreview.GetWeaponPreview(weaponName: string): Sprite
```

[ClientOnly] Возвращает спрайт предпросмотра оружия по имени или nil, если рендерер предпросмотра недоступен или предпросмотр не удалось получить.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `weaponName` | string |  |  |

**Returns:** [Sprite](./Sprite.md#sprite)

#### RemoveFromCache

```lua
WeaponPreview.RemoveFromCache(weaponName: string)
```

[ClientOnly] Удаляет предпросмотр конкретного оружия из кэша.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `weaponName` | string |  |  |

