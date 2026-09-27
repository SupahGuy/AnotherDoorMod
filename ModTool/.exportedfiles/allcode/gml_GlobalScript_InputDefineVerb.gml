function InputDefineVerb(arg0, arg1, arg2, arg3, arg4 = {})
{
    static _system = __InputSystem();
    
    with (_system)
    {
        var _definition = new __InputClassVerbDefinition(arg0, arg1, arg2, arg3, arg4);
        __verbDefinitionArray[arg0] = _definition;
        variable_struct_set(__verbExportNameDict, arg1, _definition);
        
        if (array_get_index(__verbDefIndexArray, arg0) < 0)
            array_push(__verbDefIndexArray, arg0);
    }
}
