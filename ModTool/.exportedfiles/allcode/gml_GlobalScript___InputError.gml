function __InputError()
{
    var _string = "";
    var _i = 0;
    
    repeat (argument_count)
    {
        _string += string(argument[_i]);
        _i++;
    }
    
    show_error(" \nInput 10.2.2:\n" + _string + "\n ", false);
}
