function __InputRegisterCollectPlayer()
{
    __InputPlugInRegisterCallbackInternal(UnknownEnum.Value_5, 0, function(arg0)
    {
        static _system = __InputSystem();
        static _playerArray = __InputSystemPlayerArray();
        static _verbCount = _system.__verbCount;
        static _virtualButtonArray = _system.__virtualButtonArray;
        
        with (_playerArray[arg0])
        {
            var _device = __device;
            var _connected = __UpdateStatus();
            var _valueRawArray = __valueRawArray;
            var _valueClampArray = __valueClampArray;
            
            if (!_connected || __blocked || __ghost || InputDeviceGetRebinding(_device) || !InputGameHasFocus() || __InputRestartTimeout())
            {
                array_map_ext(_valueRawArray, function()
                {
                    return 0;
                });
                array_map_ext(_valueClampArray, function()
                {
                    return 0;
                });
            }
            else
            {
                if (_device == -2 || (false && _device == -1))
                {
                    var _i = 0;
                    
                    repeat (4)
                    {
                        if (device_mouse_check_button_pressed(_i, mb_left))
                        {
                            var _j = 0;
                            
                            repeat (array_length(_virtualButtonArray))
                            {
                                if (_virtualButtonArray[_j].__CaptureTouchpoint(_i))
                                    break;
                                
                                _j++;
                            }
                        }
                        
                        _i++;
                    }
                }
                
                if (_device >= 0)
                {
                    var _minLeft = __thresholdMinArray[UnknownEnum.Value_0];
                    var _maxLeft = __thresholdMaxArray[UnknownEnum.Value_0];
                    var _minRight = __thresholdMinArray[UnknownEnum.Value_1];
                    var _maxRight = __thresholdMaxArray[UnknownEnum.Value_1];
                    __lastConnectedGamepadType = InputDeviceGetGamepadType(_device);
                    var _readArray = __InputGamepadGetReadArray(_device);
                    var _bindingArray = __gamepadBindingArray;
                    var _i = 0;
                    
                    repeat (_verbCount)
                    {
                        var _valueRaw = 0;
                        var _valueClamp = 0;
                        var _alternateArray = _bindingArray[_i];
                        var _j = 0;
                        
                        repeat (array_length(_alternateArray))
                        {
                            var _rawBinding = _alternateArray[_j];
                            
                            if (_rawBinding != undefined)
                            {
                                var _absBinding = abs(_rawBinding);
                                var _raw = max(0, sign(_rawBinding) * _readArray[_absBinding - 32769](_device, _absBinding));
                                
                                if (_raw > _valueRaw)
                                {
                                    _valueRaw = _raw;
                                    
                                    if (_absBinding == 32775 || _absBinding == 32776)
                                        _valueClamp = clamp((_raw - 0.05) / 0.85, 0, 1);
                                    else if (_absBinding == 32785 || _absBinding == 32786)
                                        _valueClamp = clamp((_raw - _minLeft) / (_maxLeft - _minLeft), 0, 1);
                                    else if (_absBinding == 32787 || _absBinding == 32788)
                                        _valueClamp = clamp((_raw - _minRight) / (_maxRight - _minRight), 0, 1);
                                    else
                                        _valueClamp = _raw > 0;
                                }
                            }
                            
                            _j++;
                        }
                        
                        _valueRawArray[_i] = _valueRaw;
                        _valueClampArray[_i] = _valueClamp;
                        _i++;
                    }
                }
                else if (_device == -1)
                {
                    var _bindingArray = __kbmBindingArray;
                    var _i = 0;
                    
                    repeat (_verbCount)
                    {
                        var _newHeld = false;
                        var _alternateArray = _bindingArray[_i];
                        var _j = 0;
                        
                        repeat (array_length(_alternateArray))
                        {
                            var _binding = _alternateArray[_j];
                            
                            if (_binding != undefined)
                            {
                                if (_binding == 1 || _binding == 3 || _binding == 2 || _binding == 4 || _binding == 5)
                                {
                                    if (mouse_check_button(_binding))
                                        _newHeld = true;
                                }
                                else if (_binding == 40964)
                                {
                                    if (mouse_wheel_up())
                                        _newHeld = true;
                                }
                                else if (_binding == 40965)
                                {
                                    if (mouse_wheel_down())
                                        _newHeld = true;
                                }
                                else if (keyboard_check(_binding))
                                {
                                    _newHeld = true;
                                }
                            }
                            
                            _j++;
                        }
                        
                        if (_newHeld)
                        {
                            _valueRawArray[_i] = 1;
                            _valueClampArray[_i] = 1;
                        }
                        else
                        {
                            _valueRawArray[_i] = 0;
                            _valueClampArray[_i] = 0;
                        }
                        
                        _i++;
                    }
                }
                else if (_device == -2)
                {
                    array_map_ext(_valueClampArray, function()
                    {
                        return 0;
                    });
                    array_map_ext(_valueRawArray, function()
                    {
                        return 0;
                    });
                    var _i = 0;
                    
                    repeat (array_length(_virtualButtonArray))
                    {
                        _virtualButtonArray[_i].__Collect(_valueRawArray, _valueClampArray);
                        _i++;
                    }
                }
            }
        }
    });
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_5 = 5
}
