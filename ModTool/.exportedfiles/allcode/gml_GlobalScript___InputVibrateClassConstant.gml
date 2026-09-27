function __InputVibrateClassConstant(arg0, arg1, arg2, arg3) constructor
{
    static __Update = function()
    {
        __time += (delta_time / 1000);
        return __time < __duration;
    };
    
    __force = arg3;
    __outputLeft = arg0 * clamp(1 - arg1, 0, 1);
    __outputRight = arg0 * clamp(1 + arg1, 0, 1);
    __time = 0;
    __duration = arg2;
}
