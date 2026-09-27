draw_set_alpha(0.5);
draw_rectangle_color(0, 0, room_width * global.zoom, room_height * global.zoom, global.color.grey8, global.color.grey8, global.color.grey8, global.color.grey8, false);
draw_set_alpha(1);

if (n_root != undefined)
    ik_flex_panel_draw_layout(n_root);
