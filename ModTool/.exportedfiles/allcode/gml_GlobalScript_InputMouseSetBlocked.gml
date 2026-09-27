function InputMouseSetBlocked(arg0)
{
    static _system = __InputSystem();
    
    with (_system)
    {
        __pointerBlockedByUser = arg0;
        __pointerBlockedByUserThisFrame = arg0;
    }
}
