function __InputClassVerbDefinition(arg0, arg1, arg2, arg3, arg4) constructor
{
    if (is_array(arg2))
    {
        var _i = 0;
        
        repeat (array_length(arg2))
        {
            if (is_string(arg2[_i]))
                arg2[_i] = ord(arg2[_i]);
            
            _i++;
        }
    }
    else if (is_string(arg2))
    {
        arg2 = ord(arg2);
    }
    
    __verbIndex = arg0;
    __exportName = arg1;
    __kbmBinding = is_array(arg2) ? arg2 : [arg2];
    __gamepadBinding = is_array(arg3) ? arg3 : [arg3];
    __metadata = variable_clone(arg4);
}
