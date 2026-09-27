function InputIconDefineKeyboard(arg0, arg1)
{
    static _keyboardIconMap = __InputIconSystem().__keyboardIconMap;
    
    if (is_string(arg0))
        arg0 = ord(arg0);
    
    ds_map_set(_keyboardIconMap, arg0, arg1);
}
