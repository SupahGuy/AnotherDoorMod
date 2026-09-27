function __InputGetGamepadActive(arg0)
{
    static _gamepadArray = __InputSystem().__gamepadArray;
    
    if (arg0 < 0)
        return false;
    
    if (!InputGameHasFocus())
        return false;
    
    if (!InputDeviceIsConnected(arg0))
        return false;
    
    if (!gamepad_is_connected(arg0))
        return false;
    
    with (_gamepadArray[arg0])
    {
        var _readArray = __readArray;
        var _prevValueArray = __prevValueArray;
        var _valueArray = __valueArray;
        var _binding = 32769;
        
        repeat (42)
        {
            if (_binding == 32785 || _binding == 32786 || _binding == 32787 || _binding == 32788)
            {
                if (abs(_prevValueArray[_binding - 32785]) <= 0.25 && abs(_valueArray[_binding - 32785]) > 0.25)
                    return true;
            }
            else if (_binding == 32775 || _binding == 32776)
            {
                if (abs(_readArray[_binding - 32769](arg0, _binding)) > 0.05)
                    return true;
            }
            else if (_readArray[_binding - 32769](arg0, _binding))
            {
                return true;
            }
            
            _binding++;
        }
    }
    
    return false;
}
