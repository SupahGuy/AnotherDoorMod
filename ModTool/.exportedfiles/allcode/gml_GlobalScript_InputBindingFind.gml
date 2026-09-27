function InputBindingFind(arg0, arg1, arg2 = 0)
{
    static _array = [];
    
    array_resize(_array, 0);
    
    if (!is_numeric(arg2))
        __InputError("Player index must be a number (typeof = \"", typeof(arg2), "\")");
    
    if (arg2 >= 4)
        __InputError("Player index ", arg2, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg2 < 0)
        __InputError("Player index ", arg2, " less than zero");
    
    __InputBindingFindInternal(_array, arg0, arg1, arg2);
    return _array;
}

function __InputBindingFindInternal(arg0, arg1, arg2, arg3)
{
    static _playerArray = __InputSystemPlayerArray();
    static _verbCount = __InputSystem().__verbCount;
    
    with (_playerArray[arg3])
    {
        var _bindingArray = arg1 ? __gamepadBindingArray : __kbmBindingArray;
        var _verbIndex = 0;
        
        repeat (_verbCount)
        {
            var _alternateArray = _bindingArray[_verbIndex];
            var _alternate = 0;
            
            repeat (array_length(_alternateArray))
            {
                if (_alternateArray[_alternate] == arg2)
                {
                    array_push(arg0, 
                    {
                        verbIndex: _verbIndex,
                        alternate: _alternate
                    });
                }
                
                _alternate++;
            }
            
            _verbIndex++;
        }
    }
}
