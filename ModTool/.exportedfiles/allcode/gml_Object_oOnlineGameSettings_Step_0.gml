if (instance_exists(btnConfirmLobby))
{
    if (btnConfirmLobby.is_released())
    {
        global.lobbyNameChanged = true;
        global.lobbyNameDefault = lobbyNameInput.get_value();
        global.lobbyTypeDefault = radioFriend.get_group_value();
        global.lobbyNbrPlayersDefault = radio2Players.get_group_value();
        ini_open("settings.ini");
        ini_write_real("lobby", "nameChanged", true);
        ini_write_string("lobby", "name", global.lobbyNameDefault);
        ini_write_real("lobby", "type", global.lobbyTypeDefault);
        ini_write_real("lobby", "nbrPlayers", global.lobbyNbrPlayersDefault);
        ini_close();
        global.networkingManager.create_host();
        
        for (var _i = 0; _i < array_length(buttonList); _i++)
            instance_destroy(buttonList[_i]);
        
        instance_destroy();
    }
}

if (instance_exists(btnCloseMenu))
{
    if (btnCloseMenu.is_released())
    {
        for (var _i = 0; _i < array_length(buttonList); _i++)
            instance_destroy(buttonList[_i]);
        
        instance_destroy();
        
        with (oMenu)
            stateNext = UnknownEnum.Value_1;
    }
}

enum UnknownEnum
{
    Value_1 = 1
}
