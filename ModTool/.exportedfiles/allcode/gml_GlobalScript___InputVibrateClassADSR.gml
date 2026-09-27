function __InputVibrateClassADSR(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7) constructor
{
    static __Update = function()
    {
        var _timeStep = delta_time / 1000;
        __timeInPhase += _timeStep;
        var _min = 0;
        var _max = 0;
        var _phase_time = infinity;
        
        switch (__phase)
        {
            case 0:
                _min = 0;
                _max = 1;
                _phase_time = __attack;
                break;
            
            case 1:
                _min = 1;
                _max = __sustainLevel;
                _phase_time = __decay;
                break;
            
            case 2:
                _min = __sustainLevel;
                _max = __sustainLevel;
                _phase_time = __sustain;
                break;
            
            case 3:
                _min = __sustainLevel;
                _max = 0;
                _phase_time = __release;
                break;
        }
        
        var _output = lerp(_min, _max, clamp(__timeInPhase / _phase_time, 0, 1));
        __outputLeft = _output * __strengthLeft;
        __outputRight = _output * __strengthRight;
        __timeInPhase += _timeStep;
        
        if (__timeInPhase > _phase_time)
        {
            __timeInPhase -= _phase_time;
            __phase++;
        }
        
        return __phase <= 3;
    };
    
    __force = arg7;
    __outputLeft = 0;
    __outputRight = 0;
    __strengthLeft = arg0 * clamp(1 - arg2, 0, 1);
    __strengthRight = arg0 * clamp(1 + arg2, 0, 1);
    __sustainLevel = arg1;
    __pan = arg2;
    __attack = arg3;
    __decay = arg4;
    __sustain = arg5;
    __release = arg6;
    __phase = 0;
    __timeInPhase = 0;
}
