var _type = ds_map_find_value(async_load, "type");

if (_type == "audiogroup_load")
{
    var _groupId = ds_map_find_value(async_load, "group_id");
    
    if (_groupId == cute_growl && room == roomStart && !audio_is_playing(global.nextMusic))
        fade_in(-1);
}
