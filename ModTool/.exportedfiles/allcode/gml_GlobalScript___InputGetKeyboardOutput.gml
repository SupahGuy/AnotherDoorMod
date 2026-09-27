function __InputGetKeyboardOutput()
{
    static _system = __InputSystem();
    
    if (!!(true || (false && !__InputOnOperaGXMobile())) && keyboard_check(vk_anykey) && InputGameHasFocus())
    {
        if (keyboard_key <= vk_anykey)
            return undefined;
        
        return __InputKeyIsIgnored(keyboard_key) ? undefined : keyboard_key;
    }
    
    return undefined;
}
