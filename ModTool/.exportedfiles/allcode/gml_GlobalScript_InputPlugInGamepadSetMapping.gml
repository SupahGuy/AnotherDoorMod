function InputPlugInGamepadSetMapping(arg0, arg1, arg2)
{
    var _readArray = __InputGamepadGetReadArray(arg0);
    
    if (_readArray == undefined)
        exit;
    
    _readArray[arg1 - 32769] = arg2;
}
