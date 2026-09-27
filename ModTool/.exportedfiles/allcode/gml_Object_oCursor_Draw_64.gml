upscale_pixelart_start();

if (!InputPlayerGetGhost(number) || isCursorVisible || isCursorVisibilityForced)
{
    if (isCursorVisible)
    {
        textureSpr = sprite_get_texture(sprite_index, 0);
        textureW = texture_get_texel_width(textureSpr);
        textureH = texture_get_texel_height(textureSpr);
        shader_set(shOutline);
        shader_set_uniform_f_array(outlineColor, outlineColorValue);
        shader_set_uniform_f(pixelW, textureW);
        shader_set_uniform_f(pixelH, textureH);
    }
    
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha);
    
    if (isCursorVisible)
        shader_reset();
}

upscale_pixelart_end();

if (!InputPlayerGetGhost(number) || isCursorVisible || isCursorVisibilityForced)
    txtPlayer.blend(16777215, image_alpha).draw((x + 10) * global.zoom, (y + 9) * global.zoom);
