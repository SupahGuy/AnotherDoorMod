function InputPlugInExists(arg0)
{
    static _plugInDict = __InputSystem().__plugInDict;
    
    return variable_struct_exists(_plugInDict, arg0);
}
