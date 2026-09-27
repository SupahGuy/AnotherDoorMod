if (isVisible)
{
    upscale_pixelart_start((x + halfWidth) * global.zoom, (y + halfHeight) * global.zoom, 0, 0, 0, wiggle.get_angle());
    draw_sprite_stretched_ext(bgDialogueSprite, 0, -halfWidth, -halfHeight, width, height, c_white, image_alpha);
    
    if (img != -1)
        draw_sprite_ext(img, 0, -halfWidth + textTitleW, -halfHeight + paddingTop + imgOffsetY, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    
    upscale_pixelart_end();
    var wm = matrix_get(2);
    matrix_set(2, matrix_build((x * global.zoom) + halfWidth, (y * global.zoom) + halfHeight, 0, 0, 0, wiggle.get_angle(), 1, 1, 1));
    
    if (title != -1)
        textTitle.blend(16777215, image_alpha).draw(-halfWidth, -halfHeight + (paddingTop * global.zoom));
    
    textBody.blend(16777215, image_alpha).draw(-halfWidth, -halfHeight + (paddingTop * global.zoom) + (textTitleH * global.zoom));
    matrix_set(2, wm);
}
