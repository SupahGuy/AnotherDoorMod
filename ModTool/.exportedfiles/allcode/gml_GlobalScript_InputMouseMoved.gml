function InputMouseMoved()
{
    static _system = __InputSystem();
    
    return _system.__pointerMoved;
}
