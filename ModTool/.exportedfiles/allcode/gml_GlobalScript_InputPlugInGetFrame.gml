function InputPlugInGetFrame()
{
    static _system = __InputSystem();
    
    return _system.__frame;
}
