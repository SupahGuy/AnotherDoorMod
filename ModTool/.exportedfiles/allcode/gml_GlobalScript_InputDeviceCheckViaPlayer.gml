function InputDeviceCheckViaPlayer(arg0, arg1, arg2 = 0)
{
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg2))
        __InputError("Player index must be a number (typeof = \"", typeof(arg2), "\")");
    
    if (arg2 >= 4)
        __InputError("Player index ", arg2, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg2 < 0)
        __InputError("Player index ", arg2, " less than zero");
    
    if (!InputGameHasFocus())
        return false;
    
    with (_playerArray[arg2])
    {
        if (arg0 >= 0)
        {
            var _minLeft = __thresholdMinArray[UnknownEnum.Value_0];
            var _minRight = __thresholdMinArray[UnknownEnum.Value_1];
            var _readArray = __InputGamepadGetReadArray(arg0);
            var _alternateArray = __gamepadBindingArray[arg1];
            var _i = 0;
            
            repeat (array_length(_alternateArray))
            {
                var _rawBinding = _alternateArray[_i];
                
                if (_rawBinding != undefined)
                {
                    var _absBinding = abs(_rawBinding);
                    
                    if (_absBinding == 32775 || _absBinding == 32776)
                        return _readArray[_absBinding - 32769](arg0, _absBinding) > 0.05;
                    else if (_absBinding == 32785 || _absBinding == 32786)
                        return _readArray[_absBinding - 32769](arg0, _absBinding) > _minLeft;
                    else if (_absBinding == 32787 || _absBinding == 32788)
                        return _readArray[_absBinding - 32769](arg0, _absBinding) > _minRight;
                    else
                        return _readArray[_absBinding - 32769](arg0, _absBinding) > 0;
                }
                
                _i++;
            }
        }
        else if (arg0 == -1)
        {
            var _alternateArray = __kbmBindingArray[arg1];
            var _i = 0;
            
            repeat (array_length(_alternateArray))
            {
                var _binding = _alternateArray[_i];
                
                if (_binding == 1 || _binding == 3 || _binding == 2 || _binding == 4 || _binding == 5)
                {
                    if (mouse_check_button(_binding))
                        return true;
                }
                else if (_binding == 40964)
                {
                    if (mouse_wheel_up())
                        return true;
                }
                else if (_binding == 40965)
                {
                    if (mouse_wheel_down())
                        return true;
                }
                else if (_binding != undefined)
                {
                    if (keyboard_check(_binding))
                        return true;
                }
                
                _i++;
            }
        }
        else
        {
            return false;
        }
    }
}

enum UnknownEnum
{
    Value_0,
    Value_1
}
