function InputMouseRoomY()
{
    static _system = __InputSystem();
    
    return _system.__pointerBlocked ? _system.__pointerRoomY : device_mouse_y(0);
}
