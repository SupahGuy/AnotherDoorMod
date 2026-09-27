function InputMouseGetBlocked()
{
    static _system = __InputSystem();
    
    return _system.__pointerBlockedByUser;
}
