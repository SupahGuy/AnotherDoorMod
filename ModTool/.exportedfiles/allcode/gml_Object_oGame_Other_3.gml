trace("--- Game End Another Door ---");

with (oNetworking)
{
    if (is_steam_init() && isNetworkGame)
        steam_lobby_leave();
}

camera_destroy(view_camera[0]);

if (part_system_exists(global.particlesSys))
{
    part_emitter_destroy_all(global.particlesSys);
    part_system_destroy(global.particlesSys);
}

if (font_exists(global.fntLatinPixelart))
    font_delete(global.fntLatinPixelart);

if (font_exists(global.fntJPixelart))
    font_delete(global.fntJPixelart);

if (font_exists(global.fntCPixelart))
    font_delete(global.fntCPixelart);

if (font_exists(global.fntLatin))
    font_delete(global.fntLatin);

if (font_exists(global.fntCjk))
    font_delete(global.fntCjk);

steam_shutdown();
