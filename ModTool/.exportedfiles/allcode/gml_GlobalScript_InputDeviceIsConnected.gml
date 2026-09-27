function InputDeviceIsConnected(arg0)
{
    static _gamepadArray = __InputSystem().__gamepadArray;
    
    if (arg0 >= 0)
    {
        if (false || arg0 >= array_length(_gamepadArray))
            return false;
        
        var _struct = _gamepadArray[arg0];
        return _struct != undefined && !_struct.__blocked;
    }
    else if (arg0 == -1)
    {
        return !!(true || (false && !__InputOnOperaGXMobile()));
    }
    else if (arg0 == -2)
    {
        return !!(false || (false && __InputOnOperaGXMobile())) || (false && (true || (false && !__InputOnOperaGXMobile())));
    }
    else if (arg0 == -3)
    {
        return true;
    }
    
    return false;
}
