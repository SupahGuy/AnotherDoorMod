function __InputSystemCallbackArray()
{
    static _array = array_create_ext(UnknownEnum.Value_11, function()
    {
        return [];
    });
    
    return _array;
}

enum UnknownEnum
{
    Value_11 = 11
}
