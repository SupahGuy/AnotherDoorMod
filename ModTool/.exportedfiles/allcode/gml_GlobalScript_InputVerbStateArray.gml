function InputVerbStateArray(arg0 = true, arg1 = 0)
{
    static _system = __InputSystem();
    static _playerArray = __InputSystemPlayerArray();
    
    static _funcGenerate = function()
    {
        return 
        {
            prevHeld: false,
            held: false,
            valueRaw: 0,
            valueClamp: 0,
            duration: infinity
        };
    };
    
    static _staticArray = array_create_ext(InputVerbCount(), _funcGenerate);
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    var _targetArray;
    
    if (arg0)
        _targetArray = array_create_ext(InputVerbCount(), _funcGenerate);
    else
        _targetArray = _staticArray;
    
    var _frame = _system.__frame;
    var _verbStateArray = _playerArray[arg1].__verbStateArray;
    var _i = 0;
    
    repeat (array_length(_targetArray))
    {
        var _targetStruct = _targetArray[_i];
        
        with (_verbStateArray[_i])
        {
            _targetStruct.prevHeld = __prevHeld;
            _targetStruct.held = __held;
            _targetStruct.valueRaw = __valueRaw;
            _targetStruct.valueClamp = __valueClamp;
            _targetStruct.duration = _frame - __pressFrame;
        }
        
        _i++;
    }
}
