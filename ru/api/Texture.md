# Texture

## Contents

- [Texture](#texture)
- [Textures](#textures)

---

## Texture

Объект Texture для использования в API. Позволяет получить размеры изображения.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `height` | int | `get` |  | Высота текстуры в пикселях. |
| `width` | int | `get` |  | Ширина текстуры в пикселях. |

## Textures

[ClientOnly] Глобальный API для работы с текстурами модуля. Текстуры загружаются из папки images и ее подпапок. Поддерживаются PNG, JPG и JPEG, невалидные изображения, файлы больше 10 МБ и текстуры крупнее 4096x4096 пропускаются. В API текстура доступна по пути внутри images с расширением, например Icon.png или Avatars/Icon.png.

### Methods

#### GetTexture

```lua
Textures:GetTexture(textureName: string): Texture
```

[ClientOnly] Возвращает текстуру по пути внутри папки images или nil, если текстура не загружена. Указывайте расширение файла: для images/Icon.png используйте Icon.png.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `textureName` | string |  |  |

**Returns:** [Texture](./Texture.md#texture)

