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

upscale_pixelart_start();
draw_sprite_ext(spriteMainScene, 0, 0, 0, 1, 1, 0, c_white, 1);
upscale_pixelart_end();

if (!global.isLightOn)
    shader_reset();
