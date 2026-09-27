function InputTriggerEffectOff(arg0, arg1 = 0)
{
    static _playerArray = __InputTriggerEffectSystem().__playerArray;
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    _playerArray[arg1].__SetTriggerEffect(arg0, new __InputTriggerEffectClassOff(), true);
}
