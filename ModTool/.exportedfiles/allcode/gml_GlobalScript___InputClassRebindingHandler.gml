function __InputClassRebindingHandler(arg0, arg1, arg2) constructor
{
    static __Update = function()
    {
        if ((__createTime - current_time) > 5000)
        {
            InputDeviceSetRebinding(__device, false);
            exit;
        }
        
        var _binding = __InputBindingScan(__device, __rebindingIgnoreStruct, __rebindingAllowStruct);
        
        if (__rebindingWait)
        {
            if (_binding == undefined)
                __rebindingWait = false;
        }
        else if (_binding != undefined)
        {
            __rebindingResult = _binding;
            __rebindingWait = true;
        }
    };
    
    __device = arg0;
    __createTime = current_time;
    var _ignoreStruct;
    
    if (is_struct(arg1))
    {
        _ignoreStruct = arg1;
    }
    else if (is_undefined(arg1))
    {
        _ignoreStruct = {};
    }
    else if (!is_array(arg1))
    {
        __InputError("Rebinding ignore data must be an array or `undefined` (was \"", typeof(arg1), "\")");
    }
    else
    {
        _ignoreStruct = {};
        var _i = 0;
        
        repeat (array_length(arg1))
        {
            var _binding = arg1[_i];
            
            if (is_string(_binding))
                _binding = ord(_binding);
            
            variable_struct_set(_ignoreStruct, string(_binding), true);
            _i++;
        }
    }
    
    var _allowStruct;
    
    if (is_struct(arg2))
    {
        _allowStruct = arg2;
    }
    else if (is_undefined(arg2))
    {
        _allowStruct = undefined;
    }
    else if (!is_array(arg2))
    {
        __InputError("Rebinding allow data must be an array or `undefined` (was \"", typeof(arg2), "\")");
    }
    else
    {
        _allowStruct = {};
        var _i = 0;
        
        repeat (array_length(arg2))
        {
            var _binding = arg2[_i];
            
            if (is_string(_binding))
                _binding = ord(_binding);
            
            variable_struct_set(_allowStruct, string(_binding), true);
            _i++;
        }
    }
    
    __rebindingWait = true;
    __rebindingResult = undefined;
    __rebindingIgnoreStruct = _ignoreStruct;
    __rebindingAllowStruct = _allowStruct;
}
