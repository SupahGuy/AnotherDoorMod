function InputTriggerEffectWeapon(arg0, arg1, arg2, arg3, arg4 = 0)
{
    static _playerArray = __InputTriggerEffectSystem().__playerArray;
    
    if (!is_numeric(arg4))
        __InputError("Player index must be a number (typeof = \"", typeof(arg4), "\")");
    
    if (arg4 >= 4)
        __InputError("Player index ", arg4, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg4 < 0)
        __InputError("Player index ", arg4, " less than zero");
    
    _playerArray[arg4].__SetTriggerEffect(arg0, new __InputTriggerEffectClassWeapon(arg0, arg1, arg2, arg3), true);
}
