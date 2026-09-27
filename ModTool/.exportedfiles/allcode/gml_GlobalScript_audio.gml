function g_change_music_volume()
{
    audio_group_set_gain(music, global.musicVolume / 100, 0);
    audio_group_set_gain(secondaryMusic, global.musicVolume / 100, 0);
    ini_open("settings.ini");
    ini_write_real("audio", "musicVolume", global.musicVolume);
    ini_close();
}

function g_change_sfx_volume()
{
    audio_group_set_gain(sfx, global.sfxVolume / 100, 0);
    ini_open("settings.ini");
    ini_write_real("audio", "sfxVolume", global.sfxVolume);
    ini_close();
}
