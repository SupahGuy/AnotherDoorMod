function __InputRegisterUpdatePlayer()
{
    __InputPlugInRegisterCallbackInternal(UnknownEnum.Value_6, 0, function(arg0)
    {
        static _system = __InputSystem();
        static _playerArray = __InputSystemPlayerArray();
        static _verbCount = _system.__verbCount;
        
        with (_playerArray[arg0])
        {
            var _systemFrame = _system.__frame;
            var _verbStateArray = __verbStateArray;
            var _valueRawArray = __valueRawArray;
            var _valueClampArray = __valueClampArray;
            var _anyVerbHeld = false;
            var _i = 0;
            
            repeat (_verbCount)
            {
                with (_verbStateArray[_i])
                {
                    __prevHeld = __held;
                    __valueRaw = _valueRawArray[_i];
                    __valueClamp = _valueClampArray[_i];
                    
                    if (__valueClamp > 0)
                    {
                        _anyVerbHeld = true;
                        __held = true;
                        
                        if (!__prevHeld)
                            __pressFrame = _systemFrame;
                    }
                    else
                    {
                        __held = false;
                    }
                }
                
                _i++;
            }
            
            __anyInput = _anyVerbHeld;
        }
    });
}

enum UnknownEnum
{
    Value_6 = 6
}
