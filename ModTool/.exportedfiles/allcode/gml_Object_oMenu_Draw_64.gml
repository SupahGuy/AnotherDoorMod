if (live_call())
    return global.live_result;

if (state != UnknownEnum.Value_5)
{
    gpu_set_texfilter(true);
    draw_sprite_ext(another_door_logo, 0, 28 * global.zoom, 32 * global.zoom, global.zoom / 3 / 1.3, global.zoom / 3 / 1.3, 0, c_white, 1);
    gpu_set_texfilter(false);
    
    with (oGame)
        txtVersion.draw(106 * global.zoom, 105 * global.zoom);
    
    demoWishlistTxt.align(2, 1).draw(532 * global.zoom, 315 * global.zoom);
}

if (clickToJoinTxtShow)
{
    var _alpha = (cos(current_time / 400) + 1) / 2;
    clickToJoinTxt.blend(16777215, _alpha).sdf_outline(global.color.grey8, global.fontBorderThickness).sdf_shadow(global.color.grey8, (global.fontShadowAlpha == 1) ? _alpha : global.fontShadowAlpha, 1, 2).draw((global.gameWidth / 2) * global.zoom, (global.gameHeight - 100) * global.zoom);
}

if (state == UnknownEnum.Value_9)
{
    draw_rectangle_colour(0, 0, room_width * global.zoom, room_height * global.zoom, global.color.grey8, global.color.grey8, global.color.grey8, global.color.grey8, false);
    gpu_set_texfilter(true);
    draw_sprite_ext(another_door_logo, 0, 72 * global.zoom, (room_height + offsetCredit) * global.zoom, global.zoom / 3 / 1.3, global.zoom / 3 / 1.3, 0, c_white, 1);
    draw_sprite_ext(mizar_alcor_interactive_logo, 0, 80 * global.zoom, ((room_height + 96 + 24 + offsetCredit) * global.zoom) + creditTxt.get_height(), global.zoom / 3 / 2, global.zoom / 3 / 2, 0, c_white, 1);
    draw_sprite_ext(no_more_robots_logo, 0, 180 * global.zoom, ((room_height + 96 + 13 + offsetCredit) * global.zoom) + creditTxt.get_height(), global.zoom / 3 / 2.1, global.zoom / 3 / 2.1, 0, c_white, 1);
    gpu_set_texfilter(false);
    creditTxt.draw(80 * global.zoom, (room_height + 96 + offsetCredit) * global.zoom);
}

enum UnknownEnum
{
    Value_5 = 5,
    Value_9 = 9
}
