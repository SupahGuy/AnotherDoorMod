if (live_call())
    return global.live_result;

if (!is_visible())
    exit;

upscale_pixelart_start(((x + (width / 2)) - sprite_xoffset) * global.zoom, ((y + (height / 2)) - sprite_yoffset) * global.zoom, 0, 0, 0, image_angle + wiggle.get_angle());

if (cardType == UnknownEnum.Value_5 || cardType == UnknownEnum.Value_9)
{
    draw_sprite_ext(sprite_index, 0, (-width / 2) + sprite_xoffset, (-height / 2) + sprite_yoffset, 1, 1, 0, c_white, image_alpha);
}
else if (cardType == UnknownEnum.Value_6 || cardType == UnknownEnum.Value_7 || cardType == UnknownEnum.Value_8)
{
}
else
{
    draw_sprite_ext(sprite_index, image_index, -width / 2, -height / 2, 1, 1, 0, c_white, image_alpha);
    draw_sprite_ext(item.sprite, 0, (-width / 2) + 65, (-height / 2) + 29 + offsetJiggleItemY, 1, 1, 0, c_white, image_alpha);
    
    if (global.displayControllerAsset != UnknownEnum.Value_0)
    {
        if (spriteButtonLinked != undefined)
            draw_sprite_ext(spriteButtonLinked, 0, (-width / 2) + 65, (-height / 2) + 1 + 180, 1, 1, 0, c_white, image_alpha);
        
        if (animBtn != undefined)
            draw_sprite_ext(animBtn.get_sprite(), animBtn.get_current_frame(), (-width / 2) + 65, (-height / 2) + 181, 1, 1, 0, c_white, image_alpha);
    }
}

upscale_pixelart_end();
var wm = matrix_get(2);
matrix_set(2, matrix_build(((x + (width / 2)) - sprite_xoffset) * global.zoom, ((y + (height / 2)) - sprite_yoffset) * global.zoom, 0, 0, 0, image_angle + wiggle.get_angle(), 1, 1, 1));

if (cardType != UnknownEnum.Value_5 && cardType != UnknownEnum.Value_6 && cardType != UnknownEnum.Value_7 && cardType != UnknownEnum.Value_8 && cardType != UnknownEnum.Value_9)
{
    var _offsetDescY;
    
    if (global.displayControllerAsset == UnknownEnum.Value_0)
        _offsetDescY = 6;
    else
        _offsetDescY = 0;
    
    txtName.blend(16777215, image_alpha).draw(((-width / 2) + (spriteWidth / 2)) * global.zoom, ((-height / 2) + global.uiPos.cardItemName.y) * global.zoom);
    txtDesc.blend(16777215, image_alpha).draw(((-width / 2) + (spriteWidth / 2)) * global.zoom, ((-height / 2) + _offsetDescY + global.uiPos.cardItemDesc.y) * global.zoom);
}

matrix_set(2, wm);

enum UnknownEnum
{
    Value_0,
    Value_5 = 5,
    Value_6,
    Value_7,
    Value_8,
    Value_9
}
