function __InputCompareVersions(arg0, arg1)
{
    static _funcSplit = function(arg0)
    {
        static _array = [];
        
        static _funcSafeReal = function(arg0)
        {
            if (arg0 == "")
                return 0;
            
            var _value;
            
            try
            {
                _value = real(arg0);
            }
            catch (_error)
            {
                _value = 0;
            }
            
            return _value;
        };
        
        array_resize(_array, 0);
        var _struct = 
        {
            __major: 0,
            __minor: 0
        };
        string_foreach(arg0, method(
        {
            __array: _array
        }, function(arg0)
        {
            var _ord = ord(arg0);
            
            if ((_ord >= 48 && _ord <= 57) || _ord == 46)
                array_push(__array, arg0);
        }));
        var _firstDotIndex = array_get_index(_array, ".");
        
        if (_firstDotIndex < 0)
        {
            _struct.__major = _funcSafeReal(string_concat_ext(_array));
        }
        else
        {
            _struct.__major = _funcSafeReal(string_concat_ext(_array, 0, _firstDotIndex));
            var _secondDotIndex = array_get_index(_array, ".", _firstDotIndex + 1);
            
            if (_secondDotIndex < _firstDotIndex)
                _struct.__minor = _funcSafeReal(string_concat_ext(_array, _firstDotIndex + 1));
            else
                _struct.__minor = _funcSafeReal(string_concat_ext(_array, _firstDotIndex + 1, _secondDotIndex - _firstDotIndex - 1));
        }
        
        array_resize(_array, 0);
        return _struct;
    };
    
    arg0 = string(arg0);
    arg1 = string(arg1);
    var _targetStruct = _funcSplit(arg0);
    var _actualStruct = _funcSplit(arg1);
    
    if (_targetStruct.__major != _actualStruct.__major)
        return false;
    
    if (_targetStruct.__minor > _actualStruct.__minor)
        return false;
    
    return true;
}
