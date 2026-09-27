function InputPressedMany(arg0, arg1 = 0)
{
    static _verbDefIndexArray = __InputSystem().__verbDefIndexArray;
    static _playerArray = __InputSystemPlayerArray();
    
    if (is_numeric(arg0) && arg0 == -1)
        arg0 = _verbDefIndexArray;
    
    if (is_array(arg0))
    {
        var _v = 0;
        
        repeat (array_length(arg0))
        {
            if (InputPressedMany(arg0[_v], arg1))
                return true;
            
            _v++;
        }
    }
    else if (is_array(arg1))
    {
        var _p = 0;
        
        repeat (array_length(arg1))
        {
            if (InputPressed(arg0, arg1[_p]))
                return true;
            
            _p++;
        }
    }
    else if (arg1 == -1)
    {
        var _playerIndex = 0;
        
        repeat (4)
        {
            if (InputPressed(arg0, _playerIndex))
                return true;
            
            _playerIndex++;
        }
    }
    else
    {
        return InputPressed(arg0, arg1);
    }
    
    return false;
}
