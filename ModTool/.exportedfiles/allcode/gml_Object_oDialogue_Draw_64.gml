upscale_pixelart_start();
part_system_drawit(partSysDial);
draw_sprite_stretched_ext(bgDialogueSprite, 0, x, y, textBgWidth, height, c_white, image_alpha);

if (closeType == UnknownEnum.Value_1)
{
    for (var _p = 0; _p < global.playersCount; _p++)
    {
        draw_sprite_ext(sprCheckEmpty, 0, x + xCheck + (_p * 8), y + yCheck, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
        
        if (global.dialogueValidated[_p])
            draw_sprite_ext(animCheckArray[_p].get_sprite(), animCheckArray[_p].get_current_frame(), x + xCheck + (_p * 8) + 1, y + yCheck + 1, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
    
    draw_sprite_ext(animBtn.get_sprite(), animBtn.get_current_frame(), ((x + width) - caretW - paddingRight) + 2, (y + height) - paddingBottom - sprite_get_height(animBtn.get_sprite()), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

upscale_pixelart_end();
textBody.blend(16777215, image_alpha).draw(x * global.zoom, y * global.zoom, typist);

enum UnknownEnum
{
    Value_1 = 1
}
