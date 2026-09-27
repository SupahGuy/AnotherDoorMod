function __InputGetMouseActive()
{
    static _system = __InputSystem();
    
    if (!(true || (false && !__InputOnOperaGXMobile())))
        return false;
    
    if (!InputGameHasFocus())
        return false;
    
    return false;
}
