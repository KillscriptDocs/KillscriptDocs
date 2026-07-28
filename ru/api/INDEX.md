# API Reference

## Files

- [Agent](./Agent.md) — API для работы с агентами (специалистами).
- [Array](./Array.md) — API массивов.
- [Audio](./Audio.md) — API для воспроизведения звуков и доступа к голосовому чату.
- [Camera](./Camera.md) — API камеры. Позволяет создавать дополнительные пользовательские камеры.
- [Chat](./Chat.md) — API игрового чата.
- [CombatLog](./CombatLog.md) — API боевого журнала: история полученного и нанесенного урона.
- [Config](./Config.md) — API пользовательских настроек модулей.
- [DefusalGame](./DefusalGame.md) — API режима Defusal: состояние матча и раунда.
- [Entity](./Entity.md) — API сущностей игрового мира.
- [Environment](./Environment.md) — API окружения: производительность, статистика сети, устройство, текущая карта.
- [GameConfig](./GameConfig.md) — API конфигурации игры: параметры предметов, глобальные константы, флаги и т.д.
- [ImGui](./ImGui.md) — API простого Immediate-mode графического интерфейса
- [InputAction](./InputAction.md) — API ввода: обработка нажатий на кнопки.
- [Item](./Item.md) — API предметов.
- [Localization](./Localization.md) — API локализации.
- [Network](./Network.md) — API для взаимодействия клиентской и серверной частей Reflex-модуля.
- [Notification](./Notification.md) — API уведомлений: получение и отправка уведомлений и подсказок игроку.
- [Physics](./Physics.md) — API физики.
- [Scheduler](./Scheduler.md) — API планировщика: подписка на тики симуляции.
- [Shop](./Shop.md) — API для работы с магазином внутри матча.
- [Storage](./Storage.md) — API для локального сохранения данных модулей.
- [Structs](./Structs.md) — API базовых структур: Vector, Quaternion, Color, Rect.
- [Team](./Team.md) — API команд в матче.
- [Texture](./Texture.md)
- [Time](./Time.md) — API для получения и преобразования времени и тиков симуляции.
- [Tutorial](./Tutorial.md) — API режима Tutorial. Пользовательские модули в нем не поддерживаются.
- [UI](./UI.md) — API для создания продвинутого пользовательского интерфейса. Предоставляет доступ к Unity UI Toolkit.
- [WorldVisuals](./WorldVisuals.md) — API для трехмерной визуализации в игровом мире: линии, области поражения.

## Types

### Agent

- [Agent](./Agent.md#agent)
- [AgentDespawnEvent](./Agent.md#agentdespawnevent)
- [AgentInput](./Agent.md#agentinput)
- [AgentInventoryChangedEvent](./Agent.md#agentinventorychangedevent)
- [AgentMetadataChangedEvent](./Agent.md#agentmetadatachangedevent)
- [AgentReceivedDamageEvent](./Agent.md#agentreceiveddamageevent)
- [Agents](./Agent.md#agents)
- [AgentSpawnEvent](./Agent.md#agentspawnevent)
- [AgentStats](./Agent.md#agentstats)
- [AgentStatsChangedEvent](./Agent.md#agentstatschangedevent)
- [Aim](./Agent.md#aim)
- [DamageEvent](./Agent.md#damageevent)
- [DeathEvent](./Agent.md#deathevent)
- [EHitboxBodyPart](./Agent.md#ehitboxbodypart)
- [EHitType](./Agent.md#ehittype)
- [EInputButton](./Agent.md#einputbutton)
- [Health](./Agent.md#health)
- [Hitbox](./Agent.md#hitbox)
- [HitEvent](./Agent.md#hitevent)
- [Interactable](./Agent.md#interactable)
- [Interactor](./Agent.md#interactor)
- [Inventory](./Agent.md#inventory)
- [Movement](./Agent.md#movement)
- [OcclusionCulling](./Agent.md#occlusionculling)

### Audio

- [Sound](./Audio.md#sound)
- [Sounds](./Audio.md#sounds)
- [VoiceChat](./Audio.md#voicechat)
- [VoiceConnectionState](./Audio.md#voiceconnectionstate)

### Camera

- [Camera](./Camera.md#camera)
- [Cameras](./Camera.md#cameras)

### Chat

- [ChatChannel](./Chat.md#chatchannel)
- [ChatChannelKind](./Chat.md#chatchannelkind)
- [ChatManager](./Chat.md#chatmanager)
- [ChatMessage](./Chat.md#chatmessage)

### CombatLog

- [CombatLog](./CombatLog.md#combatlog)
- [CombatLogEntry](./CombatLog.md#combatlogentry)

### DefusalGame

- [DefusalGame](./DefusalGame.md#defusalgame)
- [DefusalRoundState](./DefusalGame.md#defusalroundstate)
- [EDefusalRoundStage](./DefusalGame.md#edefusalroundstage)

### Entity

- [EMPGrenadeExplosion](./Entity.md#empgrenadeexplosion)
- [Entity](./Entity.md#entity)
- [Explosion](./Entity.md#explosion)
- [Explosions](./Entity.md#explosions)
- [FragGrenadeExplosion](./Entity.md#fraggrenadeexplosion)
- [IncendiaryExplosion](./Entity.md#incendiaryexplosion)
- [PlantedBridgeCharge](./Entity.md#plantedbridgecharge)
- [PlantedBridgeCharges](./Entity.md#plantedbridgecharges)
- [PlantedBridgeChargeTutorial](./Entity.md#plantedbridgechargetutorial)
- [PowerShellExplosion](./Entity.md#powershellexplosion)
- [SonarExplosion](./Entity.md#sonarexplosion)
- [ThrownProjectile](./Entity.md#thrownprojectile)
- [ThrownProjectiles](./Entity.md#thrownprojectiles)

### Environment

- [CpuLimit](./Environment.md#cpulimit)
- [MapInfo](./Environment.md#mapinfo)
- [NetworkInfo](./Environment.md#networkinfo)
- [Performance](./Environment.md#performance)
- [Screen](./Environment.md#screen)

### GameConfig

- [ConfigConstant](./GameConfig.md#configconstant)
- [ConfigDefusalShop](./GameConfig.md#configdefusalshop)
- [ConfigFlag](./GameConfig.md#configflag)
- [ConfigItem](./GameConfig.md#configitem)
- [ConfigItemFirearm](./GameConfig.md#configitemfirearm)
- [ConfigItemMelee](./GameConfig.md#configitemmelee)
- [ConfigItemThrowable](./GameConfig.md#configitemthrowable)
- [ItemConfigs](./GameConfig.md#itemconfigs)
- [WeaponPreview](./GameConfig.md#weaponpreview)

### ImGui

- [ImGui](./ImGui.md#imgui)
- [ImGuiWindow](./ImGui.md#imguiwindow)

### InputAction

- [InputAction](./InputAction.md#inputaction)
- [InputActions](./InputAction.md#inputactions)

### Item

- [BridgeChargeItem](./Item.md#bridgechargeitem)
- [Drop](./Item.md#drop)
- [Drops](./Item.md#drops)
- [EItemSlot](./Item.md#eitemslot)
- [EThrowState](./Item.md#ethrowstate)
- [FirearmItem](./Item.md#firearmitem)
- [HitscanHit](./Item.md#hitscanhit)
- [Item](./Item.md#item)
- [Items](./Item.md#items)
- [MeleeItem](./Item.md#meleeitem)
- [ThrowableItem](./Item.md#throwableitem)

### Localization

- [Localization](./Localization.md#localization)

### Network

- [Network](./Network.md#network)

### Notification

- [ENotificationCode](./Notification.md#enotificationcode)
- [HintNotificationEvent](./Notification.md#hintnotificationevent)
- [InGameViolationKind](./Notification.md#ingameviolationkind)
- [InGameViolationSeverity](./Notification.md#ingameviolationseverity)
- [NotificationController](./Notification.md#notificationcontroller)
- [NotificationEvent](./Notification.md#notificationevent)
- [PingController](./Notification.md#pingcontroller)
- [PingEvent](./Notification.md#pingevent)
- [PingMarkerType](./Notification.md#pingmarkertype)
- [ViolationNotificationEvent](./Notification.md#violationnotificationevent)

### Physics

- [Physics](./Physics.md#physics)
- [RaycastHit](./Physics.md#raycasthit)

### Scheduler

- [EventSubscription](./Scheduler.md#eventsubscription)
- [Scheduler](./Scheduler.md#scheduler)

### Shop

- [Shop](./Shop.md#shop)

### Team

- [Team](./Team.md#team)

### Texture

- [Texture](./Texture.md#texture)
- [Textures](./Texture.md#textures)

### Time

- [Time](./Time.md#time)

### Tutorial

- [TutorialManager](./Tutorial.md#tutorialmanager)
- [VoiceLinePlayer](./Tutorial.md#voicelineplayer)

### UI

- [BackgroundPositionKeyword](./UI.md#backgroundpositionkeyword)
- [BackgroundSizeType](./UI.md#backgroundsizetype)
- [DisplayStyle](./UI.md#displaystyle)
- [DotViewElement](./UI.md#dotviewelement)
- [ElementStyle](./UI.md#elementstyle)
- [ImageElement](./UI.md#imageelement)
- [PlayerRankDisplay](./UI.md#playerrankdisplay)
- [ScrollView](./UI.md#scrollview)
- [TextAnchor](./UI.md#textanchor)
- [TextElement](./UI.md#textelement)
- [TextFieldElement](./UI.md#textfieldelement)
- [Tweener](./UI.md#tweener)
- [UI](./UI.md#ui)
- [VisualElement](./UI.md#visualelement)
- [WindowVisibilityType](./UI.md#windowvisibilitytype)

### WorldVisuals

- [LineRenderer](./WorldVisuals.md#linerenderer)
- [SurfaceOverlay](./WorldVisuals.md#surfaceoverlay)
- [WorldObject](./WorldVisuals.md#worldobject)
- [WorldVisuals](./WorldVisuals.md#worldvisuals)

