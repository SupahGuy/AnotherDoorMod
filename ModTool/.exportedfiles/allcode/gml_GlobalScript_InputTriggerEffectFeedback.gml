function InputTriggerEffectFeedback(arg0, arg1, arg2, arg3 = 0)
{
    static _playerArray = __InputTriggerEffectSystem().__playerArray;
    
    if (!is_numeric(arg3))
        __InputError("Player index must be a number (typeof = \"", typeof(arg3), "\")");
    
    if (arg3 >= 4)
        __InputError("Player index ", arg3, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg3 < 0)
        __InputError("Player index ", arg3, " less than zero");
    
    _playerArray[arg3].__SetTriggerEffect(arg0, new __InputTrggerEffectClassFeedback(arg1, arg2), true);
}
