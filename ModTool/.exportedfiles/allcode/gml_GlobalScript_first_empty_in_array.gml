function first_empty_in_array(arg0)
{
    for (var _i = 0; _i < array_length(arg0); _i++)
    {
        if (arg0[_i] == 0)
            return _i;
    }
    
    return -1;
}
