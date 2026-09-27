function __InputGetKeyboardActive()
{
    if (!(true || (false && !__InputOnOperaGXMobile())))
        return false;
    
    return __InputGetKeyboardOutput() != undefined;
}
