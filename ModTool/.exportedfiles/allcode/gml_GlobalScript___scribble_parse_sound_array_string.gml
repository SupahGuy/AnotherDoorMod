function __scribble_parse_sound_array_string(arg0)
{
    static _system = __scribble_system();
    static _external_sound_map = _system.__external_sound_map;
    
    var _sound_array_string = string_trim_start(arg0);
    
    if (string_char_at(_sound_array_string, 1) == "[")
    {
        var _sound_array;
        
        try
        {
            _sound_array = json_parse(_sound_array_string);
        }
        catch (_error)
        {
            __scribble_trace(arg0);
            __scribble_error("Could not parse sound array string (please check the debug log)");
        }
        
        var _i = array_length(_sound_array) - 1;
        
        repeat (array_length(_sound_array))
        {
            var _sound_name = _sound_array[_i];
            var _sound = ds_map_find_value(_external_sound_map, _sound_name) ?? asset_get_index(_sound_name);
            
            if (audio_exists(_sound))
                _sound_array[_i] = _sound;
            else
                array_delete(_sound_array, _i, 1);
            
            _i--;
        }
        
        return _sound_array;
    }
    else
    {
        return asset_get_index(arg0);
    }
}
