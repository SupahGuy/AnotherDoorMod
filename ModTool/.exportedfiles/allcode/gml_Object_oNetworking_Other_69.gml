var _eventType = ds_map_find_value(async_load, "event_type");
var _result = ds_map_find_value(async_load, "result");

switch (_eventType)
{
    case "steam_net_message_on_session_request":
        var _steamId = ds_map_find_value(async_load, "steamid");
        
        for (var _i = 0; _i < steam_lobby_get_member_count(); _i++)
        {
            if (steam_lobby_get_member_id(_i) == _steamId)
            {
                steam_net_messages_accept_session(_steamId);
                send_game_state();
                break;
            }
        }
        
        break;
    
    case "steam_net_message_on_session_failed":
        break;
    
    case "lobby_created":
        if (_result == 1)
            host_create_success();
        else
            host_create_failed();
        
        break;
    
    case "lobby_join_requested":
        var _lobby_id = ds_map_find_value(async_load, "lobby_id");
        
        if (steam_get_user_steam_id() != _lobby_id)
            steam_lobby_join_id(_lobby_id);
        else
            join_host_failed();
        
        break;
    
    case "lobby_joined":
        var _success = ds_map_find_value(async_load, "success");
        
        if (_success && steam_lobby_get_owner_id() != 0 && steam_lobby_get_owner_id() != steam_get_user_steam_id())
        {
            if (global.gameVersion != steam_lobby_get_data("Version"))
                join_host_failed(false, steam_lobby_get_data("Version"));
            else
                join_host_success();
        }
        else
        {
            join_host_failed();
        }
        
        break;
    
    case "lobby_chat_update":
        var _changeFlags = ds_map_find_value(async_load, "change_flags");
        var _idChanged = ds_map_find_value(async_load, "user_id");
        
        if (steam_lobby_get_lobby_id() == 0)
            exit;
        
        switch (_changeFlags)
        {
            case 1:
                break;
            
            case 2:
            case 4:
            case 8:
            case 16:
                if (currentHostId == _idChanged)
                {
                    steam_lobby_leave();
                    global.networkingManager.reset();
                    
                    if (!global.isGameLaunched)
                    {
                        with (oMenu)
                            stateNext = UnknownEnum.Value_5;
                    }
                    else
                    {
                        global.gameEndReason = UnknownEnum.Value_2;
                        room_goto(roomInit);
                    }
                }
                else
                {
                    clean_disconnected_players(_idChanged);
                }
                
                break;
        }
        
        break;
    
    case "lobby_list":
        with (oLobbyList)
        {
            setup_lobby_list_data();
            
            if (array_length(lobbyListData) > 0)
                refreshLobbyList(UnknownEnum.Value_1);
            else
                refreshLobbyList(UnknownEnum.Value_0);
        }
        
        break;
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_5 = 5
}
