function __InputRegisterCollect()
{
    __InputPlugInRegisterCallbackInternal(UnknownEnum.Value_0, 0, function()
    {
        static _playerArray = __InputSystemPlayerArray();
        static _gamepadArray = __gamepadArray;
        static _rebindingArray = __rebindingArray;
        static _once = (function()
        {
            if (false || (false && __InputOnOperaGXMobile()))
            {
                InputPlayerSetDevice(-2);
            }
            else if ((true || (false && !__InputOnOperaGXMobile())) && !InputGetSteamInfo(UnknownEnum.Value_1))
            {
                InputPlayerSetDevice(-1);
            }
            else if (false || ((true || (false && !__InputOnOperaGXMobile())) && InputGetSteamInfo(UnknownEnum.Value_1)))
            {
                __InputUpdateGamepadPresence();
                var _i = 0;
                
                repeat (gamepad_get_device_count())
                {
                    if (InputDeviceIsConnected(_i))
                    {
                        InputPlayerSetDevice(_i);
                        break;
                    }
                    
                    _i++;
                }
            }
        })();
        
        if (!!(true || (false && !__InputOnOperaGXMobile())) && keyboard_check(vk_anykey))
        {
            if (keyboard_check(vk_alt) && keyboard_check_pressed(vk_space))
            {
                keyboard_key_release(vk_alt);
                keyboard_key_release(vk_space);
                keyboard_key_release(vk_lalt);
                keyboard_key_release(vk_ralt);
            }
            
            if (keyboard_check(230) && !keyboard_check_pressed(230))
                keyboard_key_release(230);
        }
        
        if (__usingSteamworks)
        {
            steam_input_run_frame();
            
            if (true && __windowFocus)
            {
                var _overlayEnabled = steam_is_overlay_activated();
                var _imeEnabled = keyboard_virtual_status();
                
                if (_imeEnabled != _overlayEnabled)
                {
                    if (_overlayEnabled)
                        keyboard_virtual_show(undefined, undefined, undefined, undefined);
                    else
                        keyboard_virtual_hide();
                }
            }
            
            if (__InputSteamHandlesChanged())
            {
                __InputTrace("Steam handles changed, disconnecting all gamepads for reconnection");
                var _device = 0;
                
                repeat (array_length(_gamepadArray))
                {
                    if (_gamepadArray[_device] != undefined)
                        __InputPlugInExecuteCallbacks(UnknownEnum.Value_2, _device, true);
                    
                    _device++;
                }
            }
        }
        
        if (1 && current_time > 1000)
        {
            __InputUpdateGamepadPresence();
            _i = 0;
            
            repeat (array_length(__gamepadArray))
            {
                var _gamepad = __gamepadArray[_i];
                
                if (is_struct(_gamepad))
                    _gamepad.__UpdatePrevValues();
                
                _i++;
            }
        }
        
        var _i = 0;
        
        repeat (array_length(_rebindingArray))
        {
            _rebindingArray[_i].__Update();
            _i++;
        }
        
        if (__hotswap)
        {
            if (InputPlayerGetInactive())
            {
                if (!InputDeviceIsActive(InputPlayerGetDevice()))
                {
                    var _device = InputDeviceGetNewActivity();
                    
                    if (_device != -666)
                    {
                        InputPlayerSetDevice(_device);
                        
                        if (is_callable(__hotswapCallback))
                            __hotswapCallback();
                    }
                }
            }
        }
        
        _i = 0;
        
        repeat (4)
        {
            __InputPlugInExecuteCallbacks(UnknownEnum.Value_5, _i);
            _i++;
        }
    });
}

function __InputUpdateGamepadPresence()
{
    static _gamepadArray = __gamepadArray;
    
    if (false && (__time - __androidEnumerationTime) > 1000)
    {
        __androidEnumerationTime = __time;
        gamepad_enumerate();
    }
    
    var _deviceCountChange = max(0, gamepad_get_device_count() - array_length(_gamepadArray));
    
    repeat (_deviceCountChange)
        array_push(_gamepadArray, undefined);
    
    var _device = 0;
    
    repeat (array_length(_gamepadArray))
    {
        var _gamepad = _gamepadArray[_device];
        var _connected = gamepad_is_connected(_device);
        
        if (_gamepad != undefined)
        {
            if (_connected)
            {
                if (false && _gamepad.__type != __InputGamepadIdentifySwitchType(_device))
                {
                    __InputPlugInExecuteCallbacks(UnknownEnum.Value_2, _device, true);
                    __InputPlugInExecuteCallbacks(UnknownEnum.Value_3, _device);
                }
                
                _gamepad.__lastConnectedTime = current_time;
            }
            else if ((current_time - _gamepad.__lastConnectedTime) >= 300)
            {
                __InputPlugInExecuteCallbacks(UnknownEnum.Value_2, _device, true);
            }
        }
        else if (_connected)
        {
            __InputPlugInExecuteCallbacks(UnknownEnum.Value_3, _device);
        }
        
        _device++;
    }
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_5 = 5
}
