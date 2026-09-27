function InputTriggerEffectSetStrength(arg0, arg1 = 0)
{
    static _playerArray = __InputTriggerEffectSystem().__playerArray;
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    if (arg1 == -3)
    {
        var _i = 0;
        
        repeat (4)
        {
            InputTriggerEffectSetStrength(arg0, _i);
            _i++;
        }
        
        exit;
    }
    
    arg0 = clamp(arg0, 0, 1);
    
    with (_playerArray[arg1])
    {
        if (__strength != arg0)
        {
            __strength = arg0;
            __InputTriggerEffectReapply(arg1);
        }
    }
}
