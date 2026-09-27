function InputVerbConsume(arg0, arg1 = 0)
{
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    with (_playerArray[arg1])
    {
        if (array_get_index(__consumedArray, __verbStateArray[arg0]) < 0)
            array_push(__consumedArray, __verbStateArray[arg0]);
        
        with (__verbStateArray[arg0])
        {
            __prevHeld = false;
            __held = false;
            __valueRaw = 0;
            __valueClamp = 0;
            __pressFrame = -infinity;
        }
    }
}
