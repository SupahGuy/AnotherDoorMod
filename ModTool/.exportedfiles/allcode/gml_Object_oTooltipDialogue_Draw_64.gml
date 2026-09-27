upscale_pixelart_start((x + halfWidth) * global.zoom, (y + halfHeight) * global.zoom, 0, 0, 0, wiggle.get_angle());
draw_sprite_stretched_ext(bgDialogueSprite, 0, -halfWidth, -halfHeight, width, height, c_white, image_alpha);
draw_sprite_ext(sprArrowDialogue, 0, -halfWidth + 7, (-halfHeight + height) - 2, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
upscale_pixelart_end();

if (!surface_exists(clipMaskSurface))
    clipMaskSurface = surface_create(width * global.zoom, height * global.zoom);

surface_set_target(clipMaskSurface);
draw_clear_alpha(c_black, 0);
draw_set_font(global.fontOpenEnded);
draw_set_alpha(image_alpha);
draw_set_color(global.color.grey1);
draw_text_transformed(paddingX * global.zoom, paddingY * global.zoom, body, global.fontScaleOpenEnded, global.fontScaleOpenEnded, 0);
draw_set_alpha(1);
surface_reset_target();
var wm = matrix_get(2);
matrix_set(2, matrix_build((x * global.zoom) + halfWidth, (y * global.zoom) + halfHeight, 0, 0, 0, wiggle.get_angle(), 1, 1, 1));

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
    draw_surface(clipMaskSurface, -halfWidth, -halfHeight);
    shader_reset();
}
else
{
    draw_surface(clipMaskSurface, -halfWidth, -halfHeight);
}

matrix_set(2, wm);
