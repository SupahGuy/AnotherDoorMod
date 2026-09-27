function __InputRegisterFindBindingCollisions()
{
    __InputPlugInRegisterCallbackInternal(UnknownEnum.Value_10, 0, function(arg0, arg1, arg2, arg3, arg4, arg5)
    {
        __InputBindingFindInternal(arg0, arg1, arg2, arg5);
    });
}

enum UnknownEnum
{
    Value_10 = 10
}
