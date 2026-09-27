function InputVibrateCurve(arg0, arg1, arg2, arg3, arg4 = 0, arg5 = false)
{
    static _playerArray = __InputVibrateSystem().__playerArray;
    
    arg0 = clamp(arg0, 0, 1);
    
    if (!animcurve_exists(arg1))
        __InputError("Animation curve doesn't exist (", arg1, ")");
    
    arg2 = clamp(arg2, -1, 1);
    arg3 = max(arg3, 0);
    
    with (_playerArray[arg4])
    {
        if (!__paused || arg5)
            array_push(__eventArray, new __InputVibrateClassCurve(arg0, animcurve_get(arg1), arg2, arg3, arg5));
    }
}
