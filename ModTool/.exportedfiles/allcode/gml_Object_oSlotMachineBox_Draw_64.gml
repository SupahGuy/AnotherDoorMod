if (!surface_exists(clipMaskSurface))
    clipMaskSurface = surface_create(slotWidth * global.zoom, slotHeight * global.zoom);

surface_set_target(clipMaskSurface);
draw_clear_alpha(c_black, 0);
upscale_pixelart_start();

if (spriteBg != undefined)
    draw_sprite(spriteBg, 0, 0, 0);

for (var _i = 0; _i < array_length(itemsList); _i++)
{
    var _y = ((bearingOffset + (heightItem * _i)) % yModuloMax) + yItemDrawMin;
    
    if (_y < yItemDrawMin || _y > yItemDrawMax)
        continue;
    
    draw_sprite(itemsList[_i], 0, slotWidth / 2, _y + (heightItem / 2));
}

upscale_pixelart_end();
upscale_pixelart_start();
draw_sprite(spritePaneTop, 0, 0, paneTopY / global.zoom);
draw_sprite(spritePaneBottom, 0, 0, paneBottomY / global.zoom);
upscale_pixelart_end();
surface_reset_target();
draw_surface(clipMaskSurface, x * global.zoom, y * global.zoom);
