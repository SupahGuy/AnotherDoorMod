function InputCursorLimitGet(arg0 = 0)
{
    static _playerArray = __InputCursorSystem().__playerArray;
    static _result = 
    {
        type: 0,
        x: 0,
        y: 0,
        radius: 0,
        left: 0,
        top: 0,
        right: 0,
        bottom: 0,
        margin: 0
    };
    
    if (!is_numeric(arg0))
        __InputError("Player index must be a number (typeof = \"", typeof(arg0), "\")");
    
    if (arg0 >= 4)
        __InputError("Player index ", arg0, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg0 < 0)
        __InputError("Player index ", arg0, " less than zero");
    
    with (_playerArray[arg0])
    {
        if (__limitType == 3)
        {
            _result.type = 3;
            _result.x = __limitX;
            _result.y = __limitY;
            _result.radius = __limitRadius;
            _result.left = undefined;
            _result.top = undefined;
            _result.right = undefined;
            _result.bottom = undefined;
            _result.margin = undefined;
        }
        else if (__limitType == 1)
        {
            _result.type = 1;
            _result.x = undefined;
            _result.y = undefined;
            _result.radius = undefined;
            _result.left = undefined;
            _result.top = undefined;
            _result.right = undefined;
            _result.bottom = undefined;
            _result.margin = __limitMargin;
        }
        else if (__limitType == 2)
        {
            _result.type = 2;
            _result.x = undefined;
            _result.y = undefined;
            _result.radius = undefined;
            _result.left = __limitLeft;
            _result.top = __limitTop;
            _result.right = __limitRight;
            _result.bottom = __limitBottom;
            _result.margin = undefined;
        }
        else
        {
            _result.type = 0;
            _result.x = undefined;
            _result.y = undefined;
            _result.radius = undefined;
            _result.left = undefined;
            _result.top = undefined;
            _result.right = undefined;
            _result.bottom = undefined;
            _result.margin = undefined;
        }
    }
    
    return _result;
}
