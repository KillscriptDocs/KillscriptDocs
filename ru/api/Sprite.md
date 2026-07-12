# Sprite

API для получения изображений.

## Contents

- [Sprite](#sprite)
- [Sprites](#sprites)

---

## Sprite

Объект Sprite для использования в API. Позволяет получить размеры изображения.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `rect` | Rect | `get` |  | Область спрайта на исходной текстуре в пикселях. |

## Sprites

[ClientOnly] Глобальный API для работы со спрайтами модуля. Спрайты загружаются из папки images и ее подпапок. Поддерживаются PNG, JPG и JPEG, невалидные изображения, файлы больше 10 МБ и текстуры крупнее 4096x4096 пропускаются. В API спрайт доступен по пути внутри images с расширением, например Icon.png или Avatars/Icon.png.

### Methods

#### GetSprite

```lua
Sprites:GetSprite(spriteName: string): Sprite
```

[ClientOnly] Возвращает спрайт по пути внутри папки images или nil, если спрайт не загружен. Указывайте расширение файла: для images/Icon.png используйте Icon.png.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `spriteName` | string |  |  |

**Returns:** [Sprite](./Sprite.md#sprite)

