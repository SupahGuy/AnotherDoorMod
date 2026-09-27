function __InputVibrateClassPulse(arg0, arg1, arg2, arg3, arg4) constructor
{
    static __Update = function()
    {
        __time += (delta_time / 1000);
        var _t = __time / __duration;
        var _output = 0.5 + (0.5 * dsin(_t * ((360 * __repeats) - 180)));
        __outputLeft = _output * __strengthLeft;
        __outputRight = _output * __strengthRight;
        return __time < __duration;
    };
    
    __force = arg4;
    __outputLeft = 0;
    __outputRight = 0;
    __strengthLeft = arg0 * clamp(1 - arg1, 0, 1);
    __strengthRight = arg0 * clamp(1 + arg1, 0, 1);
    __repeats = arg2;
    __time = 0;
    __duration = arg3;
}
