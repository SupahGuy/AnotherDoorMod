function InputPlugInRegisterCallback(arg0, arg1 = -1, arg2)
{
    static _system = __InputSystem();
    
    if (_system.__plugInsInitializeState != 1)
        __InputError("`InputPlugInRegisterCallback()` can only be called in a plug-in's initialization callback");
    
    if (arg1 == 0)
        __InputError("Cannot use priority 0 for plug-ins (reserved for internal code)");
    
    __InputPlugInRegisterCallbackInternal(arg0, arg1, arg2);
}
