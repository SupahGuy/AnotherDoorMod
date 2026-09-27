if (live_call())
    return global.live_result;

draw_rectangle_colour(0, 0, room_width * global.zoom, room_height * global.zoom, global.color.grey8, global.color.grey8, global.color.grey8, global.color.grey8, false);

if (window_has_focus() && !timerLaunched)
{
    timerLaunched = true;
    timerLogoAD.run();
}

gpu_set_texfilter(true);
draw_sprite_ext(another_door_logo, 0, (global.gameDrawWidth / 2) - (sprite_get_width(another_door_logo) / 2 / global.zoom), (global.gameDrawHeight / 2) - (sprite_get_height(another_door_logo) / 2 / global.zoom), global.zoom / 3 / 1.3, global.zoom / 3 / 1.3, 0, c_white, timerLogoAD.get_cur_length_normalize());
gpu_set_texfilter(false);
