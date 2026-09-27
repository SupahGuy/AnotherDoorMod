function InputDefineCluster(arg0, arg1, arg2, arg3, arg4, arg5 = 0, arg6 = false, arg7 = {})
{
    static _system = __InputSystem();
    
    with (_system)
    {
        var _definition = new __InputClassClusterDefinition(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
        __clusterDefinitionArray[arg0] = _definition;
    }
}
