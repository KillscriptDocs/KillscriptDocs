# Sprite

API for retrieving images.

## Contents

- [Sprite](#sprite)
- [Sprites](#sprites)

---

## Sprite

Sprite object for use in the API. Allows retrieving the image size.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `rect` | Rect | `get` |  | Sprite area on the source texture in pixels. |

## Sprites

[ClientOnly] Global API for working with module sprites. Sprites are loaded from the images folder and its subfolders. PNG, JPG, and JPEG are supported. Invalid images, files larger than 10 MB, and textures larger than 4096x4096 are skipped. In the API, a sprite is addressed by its path inside images with the extension, for example Icon.png or Avatars/Icon.png.

### Methods

#### GetSprite

```lua
Sprites:GetSprite(spriteName: string): Sprite
```

[ClientOnly] Returns a sprite by path inside the images folder, or nil if the sprite is not loaded. Include the file extension: use Icon.png for images/Icon.png.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `spriteName` | string |  |  |

**Returns:** [Sprite](./Sprite.md#sprite)

