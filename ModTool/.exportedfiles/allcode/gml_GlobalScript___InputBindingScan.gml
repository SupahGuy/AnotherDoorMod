function __InputBindingScan(arg0, arg1, arg2)
{
    static _system = __InputSystem();
    
    static _funcFilter = function(arg0, arg1, arg2)
    {
        if (variable_struct_exists(arg1, string(arg0)))
            return false;
        
        if (is_struct(arg2) && !variable_struct_exists(arg2, string(arg0)))
            return false;
        
        return true;
    };
    
    if (arg0 == -1)
    {
        if (!!(true || (false && !__InputOnOperaGXMobile())))
        {
            _binding = __InputGetKeyboardOutput();
            
            if (_binding != undefined && _funcFilter(_binding, arg1, arg2))
                return _binding;
        }
        
        var _binding = __InputGetMouseOutput();
        
        if (_binding != undefined && _funcFilter(_binding, arg1, arg2))
            return _binding;
    }
    else if (InputDeviceIsGamepad(arg0))
    {
        var _binding = __InputGetGamepadOutput(arg0);
        
        if (_binding != undefined && _funcFilter(_binding, arg1, arg2))
            return sign(InputDeviceGetGamepadValue(arg0, _binding)) * _binding;
    }
    
    return undefined;
}
