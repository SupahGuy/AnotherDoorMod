function __InputTriggerEffectGamepad(arg0) constructor
{
    static _system = __InputSystem();
    static _triggerModeMap = (function()
    {
        var _map = ds_map_create();
        
        if (InputGetSteamInfo(UnknownEnum.Value_0))
        {
            ds_map_set(_map, UnknownEnum.Value_0, 0);
            ds_map_set(_map, UnknownEnum.Value_1, 1);
            ds_map_set(_map, UnknownEnum.Value_2, 2);
            ds_map_set(_map, UnknownEnum.Value_3, 3);
        }
        
        return _map;
    })();
    
    static __Apply = function(arg0, arg1, arg2)
    {
        static _steam_trigger_params = {};
        static _command_array = [{}, {}];
        
        var _triggerIndex = 1;
        
        if (arg0 == 32775)
        {
            _triggerIndex = 0;
        }
        else if (arg0 != 32776)
        {
            InputPlugInError("Value ", arg0, " not a gamepad trigger");
            return false;
        }
        
        if (InputGetSteamInfo(UnknownEnum.Value_0))
        {
            var _steamHandle = InputDeviceGetSteamHandle(__device);
            
            if (0 || InputGetSteamInfo(UnknownEnum.Value_2) || _steamHandle == undefined)
                return false;
            
            if (!is_struct(arg1))
                return false;
            
            if (!is_struct(struct_get_from_hash(arg1, variable_get_hash("__params"))))
                return false;
            
            var _left = 0;
            var _right = 1;
            var _key_data = "command_data";
            variable_struct_set(@@array_get@@(_command_array, _left), _key_data, {});
            variable_struct_set(@@array_get@@(_command_array, _right), _key_data, {});
            variable_struct_set(variable_struct_get(@@array_get@@(_command_array, _triggerIndex), _key_data), string(arg1.__modeName) + "_param", arg1.__params);
            var _key_mode = "mode";
            variable_struct_set(@@array_get@@(_command_array, _left), _key_mode, 0);
            variable_struct_set(@@array_get@@(_command_array, _right), _key_mode, 0);
            variable_struct_set(@@array_get@@(_command_array, _triggerIndex), _key_mode, ds_map_find_value(_triggerModeMap, arg1.__mode));
            
            if (struct_get_from_hash(arg1.__params, variable_get_hash("amplitude")) != undefined)
                variable_struct_set(arg1.__params, "amplitude", struct_get_from_hash(arg1.__params, variable_get_hash("amplitude")) * arg2);
            
            if (struct_get_from_hash(arg1.__params, variable_get_hash("strength")) != undefined)
                variable_struct_set(arg1.__params, "strength", struct_get_from_hash(arg1.__params, variable_get_hash("strength")) * arg2);
            
            _steam_trigger_params.command = _command_array;
            var _key_trigger_mask = "trigger_mask";
            
            if (_triggerIndex == _left)
                variable_struct_set(_steam_trigger_params, _key_trigger_mask, 1);
            
            if (_triggerIndex == _right)
                variable_struct_set(_steam_trigger_params, _key_trigger_mask, 2);
            
            return steam_input_set_dualsense_trigger_effect(_steamHandle, _steam_trigger_params);
        }
        
        return false;
    };
    
    __device = arg0;
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3
}
