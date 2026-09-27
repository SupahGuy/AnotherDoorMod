if (room != roomStage)
    exit;

upscale_pixelart_start();
draw_sprite(sprUiTop, 0, 0, 0);

with (oEntitie)
{
    draw_sprite_ext(spriteProfile, 0, xUi, yUi, 1, 1, 0, image_blend, image_alpha);
    
    if (!is_alive())
        draw_sprite(spriteProfileDeadTop, 0, xUi + 32, yUi + 32);
    
    draw_sprite_ext(sprite_index, (state == UnknownEnum.Value_0) ? image_index : oSyncAnimation.frameSynchEight.get_current_frame(), xUi + 32, yUi + 20, 1, 1, 0, image_blend, image_alpha);
    draw_sprite_ext(spriteProfileBoxGem, 0, xUi + 32, yUi + 40, 1, 1, 0, image_blend, image_alpha);
    draw_sprite_ext(sprUiPlayerGem, 0, xUi + 44, yUi + 52, 1, 1, 0, image_blend, image_alpha);
    
    if (state != UnknownEnum.Value_2 && state != UnknownEnum.Value_3)
    {
        if (global.dayNightCycle.currentEvent == UnknownEnum.Value_4)
        {
            draw_sprite(spriteProfileHpHidden, 0, xUi + 53, (yUi + 38) - 1);
        }
        else
        {
            draw_sprite_part(spriteProfileHp, 0, 0, 0, hpProfileW, hpProfileH, xUi + 53, yUi + 38);
            
            if (hpProfileWTo != hpProfileW)
                draw_sprite_part(sprProfileHpHit, 0, hpProfileWTo, 0, hpProfileW - hpProfileWTo, hpProfileH, xUi + 53 + hpProfileWTo, yUi + 38);
        }
    }
    
    draw_sprite(spriteHeadSmall, 0, 274 + (64 * number), 1);
    draw_sprite(sprUiTopEncart, 0, 296 + (64 * number), 0);
}

upscale_pixelart_end();
global.loopManager.levelName.draw(126 * global.zoom, 11 * global.zoom);

with (oEntitie)
{
    scribble($"[p{number}]player._p[/c]#{number + 1}").align(2, 0).draw((284 + (64 * number)) * global.zoom, 9 * global.zoom);
    gemSecuredTxt.draw(global.uiPos.gemSecured[number].x * global.zoom, global.uiPos.gemSecured[number].y * global.zoom);
    global.playersManager.get_name(number, true).draw((xUi + 60) * global.zoom, (yUi + 48) * global.zoom);
    gemTxt.draw((xUi + 42) * global.zoom, (yUi + 57) * global.zoom);
    
    if (state != UnknownEnum.Value_2 && state != UnknownEnum.Value_3)
    {
        txtHp.draw(((xUi + 108) - (txtHpLabel.get_width() / global.zoom)) * global.zoom, (yUi + 41) * global.zoom);
        txtHpLabel.draw((xUi + 108) * global.zoom, (yUi + 41) * global.zoom);
    }
}

enum UnknownEnum
{
    Value_0,
    Value_2 = 2,
    Value_3,
    Value_4
}
