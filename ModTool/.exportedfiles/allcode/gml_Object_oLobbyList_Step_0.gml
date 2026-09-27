if (instance_exists(btnPageLeft))
{
    if (btnPageLeft.is_released())
    {
        currentPage = max(currentPage - 1, firstPage);
        refreshLobbyList(UnknownEnum.Value_1);
    }
}

if (instance_exists(btnPageRight))
{
    if (btnPageRight.is_released())
    {
        currentPage = min(currentPage + 1, lastPage);
        refreshLobbyList(UnknownEnum.Value_1);
    }
}

if (instance_exists(btnRefreshLobbyList))
{
    if (btnRefreshLobbyList.is_released())
    {
        if (global.networkingManager.mySteamId == -1)
        {
            refreshLobbyList(UnknownEnum.Value_3);
        }
        else
        {
            currentPage = 1;
            steam_lobby_list_add_string_filter("Version", global.gameVersion, 0);
            steam_lobby_list_add_distance_filter(3);
            steam_lobby_list_request();
            refreshLobbyList(UnknownEnum.Value_2);
        }
    }
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_2,
    Value_3
}
