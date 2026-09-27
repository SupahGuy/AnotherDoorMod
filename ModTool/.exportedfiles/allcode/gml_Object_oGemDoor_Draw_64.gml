if (!global.isLightOn)
{
    shader_set(shPaletteSwap);
    var _1 = shader_get_sampler_index(shPaletteSwap, "palette_texture");
    var _tex = sprite_get_texture(sprPaletteSwapTv, 0);
    texture_set_stage(_1, _tex);
    var _2 = shader_get_uniform(shPaletteSwap, "texel_size");
    shader_set_uniform_f(_2, texture_get_texel_width(_tex), texture_get_texel_height(_tex));
    var _3 = shader_get_uniform(shPaletteSwap, "palette_UVs");
    var _uv = sprite_get_uvs(sprPaletteSwapTv, 0);
    shader_set_uniform_f(_3, _uv[0], _uv[1], _uv[2], _uv[3]);
    var _4 = shader_get_uniform(shPaletteSwap, "palette_index");
    shader_set_uniform_f(_4, 1);
}

if (is_visible())
{
    upscale_pixelart_start();
    
    if (isClampVisible)
        draw_sprite_ext(sprTvClampBack, clampFrame, x - 4, clampYInit + clampOffsetY, 1, 1, clampAngle, c_white, 1);
    
    draw_sprite_ext(sprite_index, image_index, x, doorClampOffsetY, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    draw_sprite(animDoor.get_sprite(), doorFrame, x + doorOffsetX, doorOffsetY + doorClampOffsetY);
    
    if (doorType == UnknownEnum.Value_1)
        draw_sprite(sprMainSceneContinueBorderForestTop, 0, x, doorClampOffsetY);
    else if (doorType == UnknownEnum.Value_0)
        draw_sprite_ext(sprMainSceneExitNeon, 0, x - 15, y - 90, 1, 1, 0, c_white, (morseRunning == true) ? morseLightOn : lightExit);
    
    if (doorType != UnknownEnum.Value_0)
    {
        if (barCompletionWidth != barCompletionWidthTo)
            barCompletionWidth = lerp(barCompletionWidth, barCompletionWidthTo, 0.05);
        
        draw_sprite(sprDoorProgressEmpty, 0, x - 20, doorClampOffsetY - 87);
        draw_sprite_part_ext(sprCompletionDoor, 0, 0, 0, barCompletionWidth, sprite_get_height(sprCompletionDoor), x - 17, doorClampOffsetY - 85, 1, 1, c_white, (morseRunning == true) ? morseLightOn : 1);
    }
    
    if (isClampVisible)
        draw_sprite_ext(clampTightenTimer.get_sprite(), clampFrame, x - 4, clampYInit + clampOffsetY, 1, 1, clampAngle, c_white, 1);
    
    upscale_pixelart_end();
}

if (!global.isLightOn)
    shader_reset();

enum UnknownEnum
{
    Value_0,
    Value_1
}
