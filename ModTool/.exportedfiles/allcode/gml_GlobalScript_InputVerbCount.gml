function InputVerbCount()
{
    static _system = (function()
    {
        __InputSystemPlayerArray();
        return __InputSystem();
    })();
    
    return _system.__verbCount;
}
