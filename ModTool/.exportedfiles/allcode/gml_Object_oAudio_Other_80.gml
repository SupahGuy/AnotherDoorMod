var _assetId = ds_map_find_value(async_load, "asset_id");
var _wasStopped = ds_map_find_value(async_load, "was_stopped");

if (audio_sound_get_audio_group(_assetId) == cute_growl && !_wasStopped)
{
    timerMainTheme.reset();
    timerMainTheme.run();
}
