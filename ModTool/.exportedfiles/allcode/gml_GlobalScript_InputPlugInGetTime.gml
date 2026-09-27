function InputPlugInGetTime()
{
    static _system = __InputSystem();
    
    return _system.__time;
}
