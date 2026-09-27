function InputVerbConsumeAll(arg0 = 0)
{
    static _playerArray = __InputSystemPlayerArray();
    static _verbCount = __InputSystem().__verbCount;
    
    if (!is_numeric(arg0))
        __InputError("Player index must be a number (typeof = \"", typeof(arg0), "\")");
    
    if (arg0 >= 4)
        __InputError("Player index ", arg0, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg0 < 0)
        __InputError("Player index ", arg0, " less than zero");
    
    with (_playerArray[arg0])
    {
        var _i = 0;
        
        repeat (_verbCount)
        {
            InputVerbConsume(_i, arg0);
            _i++;
        }
    }
}
