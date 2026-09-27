if (live_call())
    return global.live_result;

event_inherited();

if (value != "")
{
    if (!surface_exists(clipMaskSurface))
        clipMaskSurface = surface_create((theWidth - padX) * global.zoom, theHeight * global.zoom);
    
    surface_set_target(clipMaskSurface);
    draw_clear_alpha(c_black, 0);
    draw_set_font(global.fontOpenEnded);
    draw_set_alpha(image_alpha);
    draw_set_valign(fa_middle);
    draw_set_color(global.color.grey1);
    var _offsetTextBorder;
    
    if (global.currentLanguage == 7 && global.fontStyle == 0)
        _offsetTextBorder = global.zoom + 3;
    else if (global.currentLanguage != 7 && global.fontStyle == 0)
        _offsetTextBorder = global.zoom;
    else
        _offsetTextBorder = 0;
    
    draw_text_transformed(_offsetTextBorder + textOffsetX, (theHeight * global.zoom) / 2, value, global.fontScaleOpenEnded, global.fontScaleOpenEnded, 0);
    draw_set_valign(fa_top);
    draw_set_alpha(1);
    surface_reset_target();
    
    if (global.fontOpenEnded != global.fntCjk && global.fontOpenEnded != global.fntLatin)
    {
        shader_set(shOutline);
        textureSpr = surface_get_texture(clipMaskSurface);
        textureW = texture_get_texel_width(textureSpr);
        textureH = texture_get_texel_height(textureSpr);
        pixelW = shader_get_uniform(shOutline, "u_pixel_w");
        pixelH = shader_get_uniform(shOutline, "u_pixel_h");
        outlineColor = shader_get_uniform(shOutline, "u_outline_color");
        outlineColorValue = hex_to_vec3(global.color.grey8);
        shader_set_uniform_f_array(outlineColor, outlineColorValue);
        shader_set_uniform_f(pixelW, textureW * global.zoom);
        shader_set_uniform_f(pixelH, textureH * global.zoom);
        draw_surface(clipMaskSurface, (x + padLeft) * global.zoom, y * global.zoom);
        shader_reset();
    }
    else
    {
        draw_surface(clipMaskSurface, (x + padLeft) * global.zoom, y * global.zoom);
    }
}

if (is_focus())
{
    upscale_pixelart_start();
    draw_sprite_ext(sprInputCursor, 0, x + padLeft + min(textWidth / global.zoom, theWidth - padX), y + ((theHeight - sprite_get_height(sprInputCursor)) / 2), 1, 1, 0, c_white, round((cos(current_time / 100) + 1) / 2));
    upscale_pixelart_end();
}
