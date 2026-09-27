function room_to_gui_coordinates(arg0, arg1)
{
    var cl = view_xport[0];
    var ct = view_yport[0];
    var off_x = argument0 - cl;
    var off_y = argument1 - ct;
    var off_x_percent = off_x / view_wport[0];
    var off_y_percent = off_y / view_hport[0];
    var gui_x = off_x_percent * global.gameWidth;
    var gui_y = off_y_percent * global.gameHeight;
    gui_x -= camera_get_view_x(view_camera[0]);
    gui_y -= camera_get_view_y(view_camera[0]);
    return [gui_x, gui_y];
}
