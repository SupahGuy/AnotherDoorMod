function InputPlugInGamepadNullifyAllMappings(arg0)
{
    var _readArray = __InputGamepadGetReadArray(arg0);
    
    if (_readArray == undefined)
        exit;
    
    var _i = 0;
    
    repeat (array_length(_readArray))
    {
        _readArray[_i] = function()
        {
            return 0;
        };
        
        _i++;
    }
}
