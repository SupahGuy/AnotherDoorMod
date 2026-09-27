function InputGetHotswap()
{
    static _system = __InputSystem();
    
    return 1 && _system.__hotswap;
}
