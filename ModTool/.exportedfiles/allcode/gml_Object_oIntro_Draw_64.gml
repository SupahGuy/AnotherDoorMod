if (state == UnknownEnum.Value_4)
{
    upscale_pixelart_start();
    draw_sprite(sprBookCharacters, 0, room_width / 2, (room_height / 2) + bookOffsetY);
    
    for (var _p = 0; _p < get_size(bookPositionList); _p++)
    {
        var _assetsHead = asset_get_index($"spr{global.mercenaries[_p].spriteName}Head");
        draw_sprite(_assetsHead, 0, bookPositionList[_p][0] + 31, bookPositionList[_p][1] + 16 + bookOffsetY);
    }
    
    upscale_pixelart_end();
    
    for (var _p = 0; _p < get_size(bookPositionList); _p++)
    {
        var _name = LocPreprocessor($"{global.mercenaries[_p].className}");
        var _first = string_char_at(_name, 1);
        var _rest = string_delete(_name, 1, 1);
        scribble(string_concat(_first, string_lower(_rest))).starting_format("ftAlkhemikalSh", global.color.grey1).scale(global.fontScaleTitle).align(1, 0).draw((bookPositionList[_p][0] + 33.5) * global.zoom, (bookPositionList[_p][1] + 49 + bookOffsetY) * global.zoom);
    }
    
    upscale_pixelart_start();
    
    for (var _p = 0; _p < array_length(stampToDraw); _p++)
        draw_sprite(stampToDraw[_p].sprite, sprite_get_number(stampToDraw[_p].sprite) - 1, stampToDraw[_p].x, stampToDraw[_p].y + bookOffsetY);
    
    upscale_pixelart_end();
}

enum UnknownEnum
{
    Value_4 = 4
}
