if (room == roomIntroduction)
    exit;

if (theSprite != -1)
{
    upscale_pixelart_start();
    draw_sprite_ext(theSprite, 0, x - round(labelDrawW / 2 / global.zoom) - (sprW / 2), y, scaleCur, scaleCur, 0, c_white, image_alpha);
    upscale_pixelart_end();
}

labelDraw.scale(scaleCur * global.fontScaleTitle).blend(16777215, image_alpha).draw(round(x * global.zoom), round(y * global.zoom));
