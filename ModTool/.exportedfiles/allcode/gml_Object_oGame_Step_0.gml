global.shake.step();

if (instance_exists(oMenu))
{
    if (oMenu.state == UnknownEnum.Value_2)
    {
        for (var _i = 0; _i < 4; _i++)
        {
            var _state = InputPlayerGetStatus(_i);
            
            if (_state == UnknownEnum.Value_2)
            {
                global.playersManager.create_player(_i);
                
                with (oMenu)
                    update_screen_players();
            }
            else if (_state == UnknownEnum.Value_1)
            {
                global.playersManager.remove(global.playersCount - 1);
                
                with (oMenu)
                    update_screen_players();
            }
        }
    }
}

if (global.networkingManager.isSteamInit && steam_is_screenshot_requested())
{
    var _file = $"Screens\\Another_Door_{current_year}-{current_month}-{current_day}_{current_hour}-{current_minute}-{current_second}.png";
    screen_save(_file);
    steam_send_screenshot(_file, window_get_width(), window_get_height());
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_2
}
