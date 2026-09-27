function InputPlugInGamepadResetMapping(arg0, arg1)
{
    static _genericReadArray = __InputSystem().__genericReadArray;
    
    var _readArray = __InputGamepadGetReadArray(arg0);
    
    if (_readArray == undefined)
        exit;
    
    _readArray[arg1 - 32769] = variable_clone(_genericReadArray[arg1 - 32769]);
}
