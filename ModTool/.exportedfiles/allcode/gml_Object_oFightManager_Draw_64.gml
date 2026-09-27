if (room != roomStage)
    exit;

if (!isFightActive)
    exit;

upscale_pixelart_start();
draw_sprite(sprUiBottom, 0, 0, global.gameHeight - 87);
draw_rectangle_color(0, global.gameHeight - 86, global.gameWidth, global.gameHeight, global.color.grey8, global.color.grey8, global.color.grey8, global.color.grey8, false);
global.shader.draw_shape(214, 19, global.gameWidth, 272);
draw_sprite(sprFightBg, 0, 0, 20);
draw_sprite(sprFightBgForest, oSyncAnimation.frameSynchEight.get_current_frame(), 22, 40);
draw_sprite_stretched(sprFightWindowList, 0, counterX, counterY, counterWidth, 39);

for (var _i = 0; _i < counterTotal; _i++)
    draw_sprite(counterArray[_i], (global.loopManager.get_monster_active_number() == _i) ? oSyncAnimation.frameSynchEight.get_current_frame() : 0, counterX + ((_i - 1) * counterMidW) + counterStartW, counterY + 16);

draw_sprite(sprFightWindowGem, 0, counterX + ((counterTotal - 1) * counterMidW) + counterStartW, counterY + 16);
draw_sprite_stretched(sprFightWindowListForest, oSyncAnimation.frameSynchEight.get_current_frame(), counterX, counterY, counterWidth, 39);
draw_sprite(sprFightWindowCursor, oSyncAnimation.frameSynchEight.get_current_frame(), counterX + ((global.loopManager.get_monster_active_number() - 1) * counterMidW) + counterStartW + 4, counterY + 31);

if (global.dayNightCycle.get_event() == UnknownEnum.Value_1 && global.fightManager.isFightActive)
{
    with (oDayNightCycle)
    {
        var _x = 215;
        var _y = 207;
        var _norm = global.dayNightCycle.timeToYule.get_cur_length_normalize();
        yuleBarWidthTo = map_value(_norm, 0, 1, sprite_get_width(sprYuleTimerBar), 0);
        yuleBarWidthCur = lerp(yuleBarWidthCur, yuleBarWidthTo, 0.1);
        draw_sprite(sprYuleTimerBg, 0, _x, _y);
        draw_sprite_part_ext(sprYuleTimerBar, 0, 0, 0, yuleBarWidthCur, sprite_get_height(sprYuleTimerBar), _x + 19, _y + 51, 1, 1, c_white, 1);
    }
}

upscale_pixelart_end();

enum UnknownEnum
{
    Value_1 = 1
}
