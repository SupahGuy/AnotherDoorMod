function InputPlugInGamepadNullifyMapping(arg0, arg1)
{
    var _readArray = __InputGamepadGetReadArray(arg0);
    
    if (_readArray == undefined)
        exit;
    
    _readArray[arg1 - 32769] = function()
    {
        return 0;
    };
}
