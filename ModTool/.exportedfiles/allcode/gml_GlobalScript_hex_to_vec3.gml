function hex_to_vec3(arg0)
{
    var _r = colour_get_red(arg0) / 255;
    var _g = colour_get_green(arg0) / 255;
    var _b = colour_get_blue(arg0) / 255;
    return [_r, _g, _b];
}
