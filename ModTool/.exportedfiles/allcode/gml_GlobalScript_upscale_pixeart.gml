function upscale_pixelart_start(arg0 = 0, arg1 = 0, arg2 = 0, arg3 = 0, arg4 = 0, arg5 = 0, arg6 = global.zoom, arg7 = global.zoom, arg8 = 0)
{
    global.upscaleMatrix = matrix_get(2);
    var _new_m = matrix_build(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
    matrix_set(2, _new_m);
}

function upscale_pixelart_end()
{
    matrix_set(2, global.upscaleMatrix);
}
