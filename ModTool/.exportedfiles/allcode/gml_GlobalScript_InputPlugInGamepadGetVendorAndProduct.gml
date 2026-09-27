function InputPlugInGamepadGetVendorAndProduct(arg0)
{
    static _gamepadArray = __InputSystem().__gamepadArray;
    
    if (arg0 >= 0 && arg0 < array_length(_gamepadArray))
    {
        with (_gamepadArray[arg0])
            return __vendor + __product;
    }
    
    return "";
}
