function __InputPlugInExecuteCallbacks(arg0, arg1 = undefined, arg2 = undefined, arg3 = undefined, arg4 = undefined, arg5 = undefined, arg6 = undefined)
{
    static _system = __InputSystem();
    static _callbackArray = __InputSystemCallbackArray();
    
    var _prevCallback = _system.__plugInCurrentCallback;
    _system.__plugInCurrentCallback = arg0;
    var _array = _callbackArray[arg0];
    var _i = 0;
    
    repeat (array_length(_array))
    {
        _array[_i].__method(arg1, arg2, arg3, arg4, arg5, arg6);
        _i++;
    }
    
    _system.__plugInCurrentCallback = _prevCallback;
}
