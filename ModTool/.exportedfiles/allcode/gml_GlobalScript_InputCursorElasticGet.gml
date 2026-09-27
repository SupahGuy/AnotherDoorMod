function InputCursorElasticGet(arg0 = 0)
{
    static _playerArray = __InputCursorSystem().__playerArray;
    static _result = 
    {
        enabled: false,
        x: 0,
        y: 0,
        strength: 0
    };
    
    if (!is_numeric(arg0))
        __InputError("Player index must be a number (typeof = \"", typeof(arg0), "\")");
    
    if (arg0 >= 4)
        __InputError("Player index ", arg0, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg0 < 0)
        __InputError("Player index ", arg0, " less than zero");
    
    with (_playerArray[arg0])
    {
        _result.enabled = __elasticX != undefined && __elasticY != undefined;
        _result.x = __elasticX;
        _result.y = __elasticY;
        _result.strength = __elasticStrength;
    }
    
    return _result;
}
