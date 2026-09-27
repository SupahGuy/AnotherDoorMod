function __InputPlugInRegisterCallbackInternal(arg0, arg1, arg2)
{
    static _callbackArray = __InputSystemCallbackArray();
    
    var _array = _callbackArray[arg0];
    array_push(_array, 
    {
        __priority: arg1,
        __method: arg2
    });
    array_sort(_array, function(arg0, arg1)
    {
        return sign(arg1.__priority - arg0.__priority);
    });
}
