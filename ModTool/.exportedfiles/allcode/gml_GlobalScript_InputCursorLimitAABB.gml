function InputCursorLimitAABB(arg0, arg1, arg2, arg3, arg4 = 0)
{
    static _playerArray = __InputCursorSystem().__playerArray;
    
    if (!is_numeric(arg4))
        __InputError("Player index must be a number (typeof = \"", typeof(arg4), "\")");
    
    if (arg4 >= 4)
        __InputError("Player index ", arg4, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg4 < 0)
        __InputError("Player index ", arg4, " less than zero");
    
    with (_playerArray[arg4])
    {
        __limitType = 2;
        __limitLeft = arg0;
        __limitTop = arg1;
        __limitRight = arg2;
        __limitBottom = arg3;
        __Limit();
    }
}
