function InputPlayerSetMinThreshold(arg0, arg1, arg2 = 0)
{
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg2))
        __InputError("Player index must be a number (typeof = \"", typeof(arg2), "\")");
    
    if (arg2 >= 4)
        __InputError("Player index ", arg2, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg2 < 0)
        __InputError("Player index ", arg2, " less than zero");
    
    with (_playerArray[arg2])
    {
        if (arg0 == UnknownEnum.Value_2)
        {
            __thresholdMinArray[UnknownEnum.Value_0] = arg1;
            __thresholdMinArray[UnknownEnum.Value_1] = arg1;
            __thresholdMinArray[UnknownEnum.Value_2] = arg1;
        }
        else
        {
            __thresholdMinArray[arg0] = arg1;
            __thresholdMinArray[UnknownEnum.Value_2] = 0.5 * (__thresholdMinArray[UnknownEnum.Value_0] + __thresholdMinArray[UnknownEnum.Value_1]);
        }
    }
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
