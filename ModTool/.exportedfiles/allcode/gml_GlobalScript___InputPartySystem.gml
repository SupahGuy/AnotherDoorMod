__InputPartySystem();

function __InputPartySystem()
{
    static _system = undefined;
    
    if (_system != undefined)
        return _system;
    
    _system = {};
    
    with (_system)
    {
        __joining = false;
        __minPlayers = 1;
        __maxPlayers = 4;
        __fillEmpty = true;
        __joinVerb = undefined;
        __leaveVerb = undefined;
        __abortCallback = undefined;
        __hotswapOnAbort = true;
        InputPlugInDefine("InputTeam.PartyMultiplayer", "Input Team", "1.0", "10.0", function()
        {
            InputPlugInRegisterCallback(UnknownEnum.Value_1, undefined, function()
            {
                if (!__joining)
                    exit;
                
                if (__joinVerb == undefined)
                    InputPlugInError("Join verb not defined. Please call InputPartySetParams()");
                
                var _p = 0;
                
                repeat (4)
                {
                    if (!InputPlayerIsConnected(_p))
                        InputPlayerSetDevice(-666, _p);
                    
                    _p++;
                }
                
                if (__fillEmpty)
                {
                    var _fail;
                    
                    do
                    {
                        _fail = false;
                        _p = 3;
                        
                        repeat (3)
                        {
                            if (InputPlayerIsConnected(_p) && !InputPlayerIsConnected(_p - 1))
                            {
                                __InputTrace("Moving player ", _p, " (connected) to ", _p - 1, " (disconnected)");
                                InputPlayerSwap(_p, _p - 1);
                                _fail = true;
                            }
                            
                            _p--;
                        }
                    }
                    until (!_fail);
                }
                
                _p = __maxPlayers;
                
                repeat (4 - __maxPlayers)
                {
                    InputPlayerSetDevice(-666, _p);
                    _p++;
                }
                
                _p = 0;
                
                repeat (__maxPlayers)
                {
                    if (!InputPlayerIsConnected(_p))
                    {
                        var _device;
                        
                        if (is_callable(__abortCallback) && InputPlayerConnectedCount() <= 0)
                        {
                            _device = InputDeviceGetNewActivityOnVerb(__leaveVerb, _p);
                            
                            if (_device != -666)
                            {
                                __InputTrace("Player ", _p, " aborted with device ", _device);
                                InputPartySetJoin(false, __hotswapOnAbort);
                                InputPlayerSetDevice(_device, _p);
                                InputVerbConsumeAll(_p);
                                __abortCallback();
                                exit;
                            }
                        }
                        
                        if (__joinVerb == -1)
                            _device = __InputPartyDeviceGetNewActivity(__leaveVerb, _p);
                        else
                            _device = InputDeviceGetNewActivityOnVerb(__joinVerb, _p);
                        
                        if (_device != -666)
                        {
                            __InputTrace("Player ", _p, " joined with device ", _device);
                            InputPlayerSetDevice(_device, _p);
                            InputVerbConsumeAll(_p);
                        }
                    }
                    
                    _p++;
                }
                
                if (__leaveVerb != undefined)
                {
                    _p = 0;
                    
                    repeat (__maxPlayers)
                    {
                        if (InputPressed(__leaveVerb, _p))
                        {
                            __InputTrace("Player ", _p, " left");
                            InputPlayerSetDevice(-666, _p);
                        }
                        
                        _p++;
                    }
                }
            });
        });
    }
    
    return _system;
}

enum UnknownEnum
{
    Value_1 = 1
}
