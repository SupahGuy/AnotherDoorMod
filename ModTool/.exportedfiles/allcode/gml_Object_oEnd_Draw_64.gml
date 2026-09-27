with (oEntitie)
{
    upscale_pixelart_start();
    var _spacing = 16;
    var _spriteWidth = sprite_get_width(sprProfileCharacterSmall);
    var _x = ((global.gameWidth / 2) - (((_spriteWidth * global.playersCount) + (_spacing * (global.playersCount - 1))) / 2)) + (number * (_spriteWidth + _spacing));
    var _y = 280;
    _x = round(_x);
    _y = round(_y);
    draw_sprite_ext(sprProfileCharacterSmall, 0, _x, _y, 1, 1, 0, image_blend, image_alpha);
    draw_sprite_ext(asset_get_index($"spr{spriteName}"), oSyncAnimation.frameSynchEight.get_current_frame(), _x + 32, _y + 20, 1, 1, 0, image_blend, image_alpha);
    draw_sprite_ext(sprProfileBoxGem, 0, _x + 32, _y + 40, 1, 1, 0, image_blend, image_alpha);
    draw_sprite(sprUiPlayerGem, 0, _x + 44, _y + 52);
    upscale_pixelart_end();
    gemTxt.draw((_x + 42) * global.zoom, (_y + 56) * global.zoom);
}
