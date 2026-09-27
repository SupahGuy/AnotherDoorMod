function InputPlugInDefine(arg0, arg1, arg2, arg3, arg4)
{
    static _system = __InputSystem();
    static _plugInArray = _system.__plugInArray;
    static _plugInDict = _system.__plugInDict;
    
    if (_system.__plugInsInitializeState != 0)
        __InputError("`InputPlugInDefine()` must only be called on boot");
    
    if (variable_struct_exists(_plugInDict, arg0))
        __InputError("Plug-in with alias \"", arg0, "\" already exists");
    
    if (!__InputCompareVersions(arg3, "10.2.2"))
        __InputError("Plug-in \"", arg0, "\" is incompatible with this version of Input (", "10.2.2", ")\nTarget Input version is ", arg3);
    
    var _plugInStruct = new __InputClassPlugIn(arg0, arg1, arg2, arg3, arg4);
    array_push(_plugInArray, _plugInStruct);
    variable_struct_set(_plugInDict, arg0, _plugInStruct);
}
