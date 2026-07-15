# Texture

## Contents

- [Texture](#texture)
- [Textures](#textures)

---

## Texture

Texture object for use in the API. Allows retrieving the image size.

### Properties

| Name | Type | Access | Static | Comment |
|---|---|---|:---:|---|
| `height` | int | `get` |  | Texture height in pixels. |
| `width` | int | `get` |  | Texture width in pixels. |

## Textures

[ClientOnly] Global API for working with module textures. Textures are loaded from the images folder and its subfolders. PNG, JPG, and JPEG are supported. Invalid images, files larger than 10 MB, and textures larger than 4096x4096 are skipped. In the API, a texture is addressed by its path inside images with the extension, for example Icon.png or Avatars/Icon.png.

### Methods

#### GetTexture

```lua
Textures:GetTexture(textureName: string): Texture
```

[ClientOnly] Returns a texture by path inside the images folder, or nil if the texture is not loaded. Include the file extension: use Icon.png for images/Icon.png.

| Param | Type | Optional | Comment |
|---|---|:---:|---|
| `textureName` | string |  |  |

**Returns:** [Texture](./Texture.md#texture)

