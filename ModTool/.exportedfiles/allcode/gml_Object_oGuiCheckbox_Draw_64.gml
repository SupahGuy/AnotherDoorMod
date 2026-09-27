if (!is_visible())
    exit;

event_inherited();
upscale_pixelart_start();

if (isCheck)
    draw_sprite(sprButtonCheckboxElementActive, 0, x + padRight + sprite_get_xoffset(sprButtonCheckboxElement), y + (theHeight / 2));
else
    draw_sprite(sprButtonCheckboxElement, 0, x + padRight + sprite_get_xoffset(sprButtonCheckboxElement), y + (theHeight / 2));

upscale_pixelart_end();
labelDraw.draw((x + padLeft) * global.zoom, (y + (theHeight / 2)) * global.zoom);
