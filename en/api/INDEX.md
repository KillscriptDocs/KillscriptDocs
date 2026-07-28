# API Reference

## Files

- [Agent](./Agent.md) — API for working with agents (specialists).
- [Array](./Array.md) — Array API.
- [Audio](./Audio.md) — API for playing sounds and accessing voice chat.
- [Camera](./Camera.md) — Camera API. Allows creating additional custom cameras.
- [Chat](./Chat.md) — In-game chat API.
- [CombatLog](./CombatLog.md) — Combat log API: history of damage received and dealt.
- [Config](./Config.md) — Module user settings API.
- [DefusalGame](./DefusalGame.md) — Defusal mode API: match and round state.
- [Entity](./Entity.md) — Game world entity API.
- [Environment](./Environment.md) — Environment API: performance, network statistics, device, and current map.
- [GameConfig](./GameConfig.md) — Game configuration API: item parameters, global constants, flags, and more.
- [ImGui](./ImGui.md) — Simple immediate-mode GUI API.
- [InputAction](./InputAction.md) — Input API: handling button presses.
- [Item](./Item.md) — Item API.
- [Localization](./Localization.md) — Localization API.
- [Network](./Network.md) — API for interaction between the client and server parts of a Reflex module.
- [Notification](./Notification.md) — Notification API: receiving and sending notifications and hints to the player.
- [Physics](./Physics.md) — Physics API.
- [Scheduler](./Scheduler.md) — Scheduler API: subscribing to simulation ticks.
- [Shop](./Shop.md) — API for interacting with the in-match shop.
- [Storage](./Storage.md) — API for storing module data locally.
- [Structs](./Structs.md) — Basic structure API: Vector, Quaternion, Color, and Rect.
- [Team](./Team.md) — Match team API.
- [Texture](./Texture.md)
- [Time](./Time.md) — API for retrieving and converting time and simulation ticks.
- [Tutorial](./Tutorial.md) — Tutorial mode API. User modules are not supported in this mode.
- [UI](./UI.md) — API for creating advanced user interfaces. Provides access to Unity UI Toolkit.
- [WorldVisuals](./WorldVisuals.md) — API for 3D visualization in the game world: lines and areas of effect.

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

