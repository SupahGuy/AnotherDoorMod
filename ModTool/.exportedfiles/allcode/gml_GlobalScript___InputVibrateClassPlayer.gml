function __InputVibrateClassPlayer(arg0) constructor
{
    static __Update = function()
    {
        static _deviceMap = __InputVibrateSystem().__deviceMap;
        
        if (InputPlayerIsConnected(__playerIndex) && InputPlayerUsingGamepad(__playerIndex))
        {
            var _array = __eventArray;
            
            if (array_length(_array) > 0)
            {
                var _device = InputPlayerGetDevice(__playerIndex);
                var _notPaused = !__paused;
                var _left = 0;
                var _right = 0;
                var _i = 0;
                
                repeat (array_length(_array))
                {
                    var _result;
                    
                    with (_array[_i])
                    {
                        if (_notPaused || __force)
                        {
                            _result = __Update();
                            _left += __outputLeft;
                            _right += __outputRight;
                        }
                        else
                        {
                            _result = true;
                        }
                    }
                    
                    if (_result)
                        _i++;
                    else
                        array_delete(_array, _i, 1);
                }
                
                _left *= __strength;
                _right *= __strength;
                
                with (ds_map_find_value(_deviceMap, _device))
                {
                    __vibrating = true;
                    __left = _left;
                    __right = _right;
                }
            }
        }
        else
        {
            array_resize(__eventArray, 0);
        }
    };
    
    __playerIndex = arg0;
    __strength = 1;
    __paused = false;
    __eventArray = [];
}
