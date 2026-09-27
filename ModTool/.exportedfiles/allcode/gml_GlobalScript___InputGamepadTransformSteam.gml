function __InputGamepadTransformSteam(arg0)
{
    static _system = __InputSystem();
    static _steamInputTypeIgnoreMap = __InputSystem().__steamInputTypeIgnoreMap;
    
    if (_system.__usingSteamworks)
    {
        with (arg0)
        {
            var _gamepadIsVirtual = true && __xinput;
            var _gamepadIndex = __gamepadIndex;
            
            if ((false && __guid == "030000005e0400008e02000001000000") || (false && __guid == "03000000de280000ff11000001000000" && !(_system.__onSteamDeck && _system.__usingSteam)))
            {
                __InputTrace("Ignoring gamepad ", __gamepadIndex, " as it is a Steam virtual controller");
                __blocked = true;
            }
            else
            {
                __steamHandle = steam_input_get_controller_for_gamepad_index(_gamepadIndex);
                var _check = steam_input_get_gamepad_index_for_controller(__steamHandle);
                __InputTrace("Checking gamepad index: original=", __gamepadIndex, ", remapped=", _gamepadIndex, ", derived from Steam handle=", _check);
                
                if (!(_gamepadIsVirtual && is_numeric(__steamHandle) && __steamHandle > 0))
                {
                    __steamHandle = undefined;
                    __steamHandleIndex = undefined;
                }
                else
                {
                    __steamHandleIndex = steam_input_get_gamepad_index_for_controller(__steamHandle);
                    
                    if (__steamHandleIndex == -1)
                        exit;
                    
                    var _steamType = steam_input_get_input_type_for_handle(__steamHandle);
                    
                    if (!(is_numeric(_steamType) && _steamType >= 0))
                    {
                        __InputTrace("Warning! Steam gamepad type ", _steamType, " invalid");
                        __blocked = true;
                        exit;
                    }
                    
                    __description = ds_map_find_value(_system.__steamTypeToDescriptionMap, _steamType);
                    
                    if (__description == undefined)
                    {
                        __InputTrace("Warning! Steam gamepad type ", _steamType, " has no Steam description");
                        __description = "Missing Description";
                        __blocked = true;
                        exit;
                    }
                    
                    __type = ds_map_find_value(_system.__steamTypeToInputTypeMap, _steamType);
                    
                    if (__type == undefined)
                    {
                        __InputTrace("Warning! Steam-gamepad-type ", _steamType, " has no matching Input-gamepad-type");
                        __type = 1;
                        __blocked = true;
                        exit;
                    }
                }
            }
        }
    }
    
    if (__vendor != "de28" && ds_map_exists(_steamInputTypeIgnoreMap, __type))
    {
        __InputTrace("Warning! Input-gamepad-type ", __type, " is blacklisted by Steam Input");
        __blocked = true;
        exit;
    }
}
