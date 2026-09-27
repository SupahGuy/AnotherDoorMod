if (state == UnknownEnum.Value_0)
{
    if (steam_initialised())
    {
        var _ind = array_get_index(global.parameters, "+connect_lobby");
        
        if (_ind != -1)
        {
            if (steam_lobby_get_member_count() == 0)
            {
                var _lobby = int64(global.parameters[_ind + 1]);
                steam_lobby_join_id(_lobby);
                stateNext = UnknownEnum.Value_6;
            }
        }
    }
    else if (counterLobbyJoinParam < 3)
    {
        counterLobbyJoinParam++;
        alarm[0] = 60;
    }
}

enum UnknownEnum
{
    Value_0,
    Value_6 = 6
}
