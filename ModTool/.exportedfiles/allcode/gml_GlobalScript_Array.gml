function array_find_struct_duplicate(arg0, arg1)
{
    if (!struct_exists(arg0[0], arg1))
        return -1;
    
    var _arrayLength = array_length(arg0);
    
    if (_arrayLength > 1)
    {
        for (var _i = 0; _i < (_arrayLength - 1); _i++)
        {
            var _j = _i + 1;
            
            while (_j < _arrayLength)
            {
                if (struct_get(arg0[_i], arg1) == struct_get(arg0[_j], arg1))
                    return true;
                
                _j++;
            }
        }
    }
    
    return false;
}

function array_sort_struct_desc(arg0, arg1)
{
    var _length = array_length(arg0);
    
    for (var _i = 1; _i < _length; _i++)
    {
        var _key = arg0[_i];
        var _j = _i - 1;
        
        while (_j >= 0 && struct_get(arg0[_j], arg1) < struct_get(_key, arg1))
        {
            arg0[_j + 1] = arg0[_j];
            _j = _j - 1;
        }
        
        arg0[_j + 1] = _key;
    }
}

function array_sort_by_struct(arg0, arg1, arg2, arg3 = 1)
{
    if (variable_struct_exists(arg0, arg2) && variable_struct_exists(arg1, arg2))
    {
        if (arg3 == 1)
        {
            if (variable_struct_get(arg0, arg2) < variable_struct_get(arg1, arg2))
                return -1;
            
            if (variable_struct_get(arg0, arg2) > variable_struct_get(arg1, arg2))
                return 1;
            
            return 0;
        }
        else
        {
            if (variable_struct_get(arg0, arg2) < variable_struct_get(arg1, arg2))
                return 1;
            
            if (variable_struct_get(arg0, arg2) > variable_struct_get(arg1, arg2))
                return -1;
            
            return 0;
        }
    }
    else if (variable_struct_exists(arg0, arg2))
    {
        return -1;
    }
    else if (variable_struct_exists(arg1, arg2))
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
