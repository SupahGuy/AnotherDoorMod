function InputSetHotswapCallback(arg0)
{
    static _system = __InputSystem();
    
    _system.__hotswapCallback = arg0;
}
