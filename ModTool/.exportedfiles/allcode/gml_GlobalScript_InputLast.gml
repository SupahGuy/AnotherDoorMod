function InputLast(arg0 = -1, arg1 = 0)
{
    static _system = __InputSystem();
    static _playerArray = __InputSystemPlayerArray();
    static _verbDefIndexArray = _system.__verbDefIndexArray;
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    if (is_numeric(arg0) && arg0 == -1)
        arg0 = _verbDefIndexArray;
    
    with (_playerArray[arg1])
    {
        var _maxTime = -1;
        var _maxVerb = undefined;
        var _i = 0;
        
        repeat (array_length(arg0))
        {
            var _verbIndex = arg0[_i];
            var _verbState = __verbStateArray[_verbIndex];
            
            if (_verbState.__pressFrame > _maxTime)
            {
                _maxTime = _verbState.__pressFrame;
                _maxVerb = _verbIndex;
            }
            
            _i++;
        }
        
        return _maxVerb;
    }
}
