upscale_pixelart_start();

if (state == UnknownEnum.Value_0)
    draw_sprite(sprite_index, 0, x, y);
else if (state == UnknownEnum.Value_1)
    draw_sprite_ext(sprite_index, 0, x, y, executeScale, executeScale, image_angle, image_blend, executeAlpha);
else if (state == UnknownEnum.Value_2)
    draw_sprite_ext(sprite_index, 0, x, y, 1, 1, image_angle, image_blend, decreaseAlpha);

upscale_pixelart_end();

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
