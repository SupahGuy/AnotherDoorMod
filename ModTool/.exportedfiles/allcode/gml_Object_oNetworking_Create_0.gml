isSteamInit = false;

if (steam_initialised())
{
    if (steam_stats_ready())
    {
        isSteamInit = true;
        steam_net_sockets_init_authentication();
    }
}

is_steam_init = function()
{
    return isSteamInit;
};

is_steam_tracking_on = function()
{
    return isSteamInit;
};

global.networkingManager = self;
isNetworkGame = false;
mySteamId = is_steam_init() ? steam_get_user_steam_id() : -1;
myDeviceType = InputPlayerGetDevice(0);
InputPlugInDefine("Mizalcor.DeviceType", "Mizar & Alcor", "1.0", "10.0", function()
{
    InputPlugInRegisterCallback(UnknownEnum.Value_4, undefined, function()
    {
        if (InputGetHotswap())
        {
            if (InputPlayerGetDevice(0) != -666)
                oNetworking.myDeviceType = InputPlayerGetDevice(0);
        }
    });
});
myPositionInSocketList = -1;
socketList = [];
global.isHost = true;
global.isClient = false;
currentHostId = -1;
timeOutCreateHost = new myTimer(id, 10, 0, 1);
timeOutJoinHost = new myTimer(id, 10, 0, 1);
turnId = 0;
canSendReady = true;
clientTurnReady = [];
pendingStateMachine = 0;
alarm[1] = game_get_speed(gamespeed_fps);
bufferImportant = buffer_create(256, buffer_grow, 1);
add_to_clean_up(bufferImportant, UnknownEnum.Value_8);
bufferNotVital = buffer_create(256, buffer_grow, 1);
add_to_clean_up(bufferNotVital, UnknownEnum.Value_8);
bufferCursor = buffer_create(6, buffer_fixed, 1);
add_to_clean_up(bufferCursor, UnknownEnum.Value_8);

network_init_package = function(arg0 = 256, arg1 = 1, arg2 = 1)
{
    var _buffer = buffer_create(arg0, arg1, arg2);
    buffer_seek(_buffer, buffer_seek_start, 0);
    return _buffer;
};

network_end_package = function(arg0, arg1 = UnknownEnum.Value_0, arg2 = -1, arg3 = -1, arg4 = UnknownEnum.Value_0, arg5 = true)
{
    var _packetType;
    
    if (arg4 == UnknownEnum.Value_0)
        _packetType = 8;
    else
        _packetType = 0;
    
    if (arg1 == UnknownEnum.Value_0)
    {
        steam_net_messages_send(currentHostId, arg4, arg0, buffer_tell(arg0), _packetType);
    }
    else if (arg1 == UnknownEnum.Value_1)
    {
        for (var _i = 1; _i < array_length(socketList); _i++)
        {
            if (arg2 == socketList[_i])
                continue;
            
            steam_net_messages_send(socketList[_i], arg4, arg0, buffer_tell(arg0), _packetType);
        }
    }
    else if (arg1 == UnknownEnum.Value_3 && arg3 != -1)
    {
        steam_net_messages_send(arg3, arg4, arg0, buffer_tell(arg0), _packetType);
    }
    else if (arg1 == UnknownEnum.Value_2)
    {
        for (var _i = 0; _i < array_length(socketList); _i++)
        {
            if (socketList[_i] == mySteamId || socketList[_i] == arg2)
                continue;
            
            steam_net_messages_send(socketList[_i], arg4, arg0, buffer_tell(arg0), _packetType);
        }
    }
    
    if (arg5)
        buffer_delete(arg0);
};

clean_disconnected_players = function(arg0)
{
    var _p = array_length(socketList) - 1;
    
    while (_p >= 0)
    {
        if (socketList[_p] == arg0)
        {
            global.playersManager.remove(_p);
            array_delete(socketList, _p, 1);
            array_delete(clientTurnReady, _p, 1);
        }
        
        _p--;
    }
    
    define_position_in_socket_list();
    recalculate_ghost();
    
    if (global.isHost)
    {
        with (oDialogue)
            check_if_destroyable();
    }
    
    with (oMenu)
        update_screen_players();
};

hello = function()
{
    var _buffer = network_init_package(256, 1);
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_0);
    buffer_write(_buffer, buffer_u64, mySteamId);
    network_end_package(_buffer, UnknownEnum.Value_0);
};

hello_back = function(arg0)
{
    var _buffer = network_init_package(256, 1);
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_1);
    network_end_package(_buffer, UnknownEnum.Value_3, undefined, arg0);
};

ask_for_socket_list = function()
{
    var _buffer = network_init_package(256, 1);
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_4);
    network_end_package(_buffer, UnknownEnum.Value_0);
};

define_position_in_socket_list = function()
{
    if (array_length(socketList) > 0)
    {
        for (var _j = 0; _j < array_length(socketList); _j++)
        {
            if (socketList[_j] == mySteamId)
                myPositionInSocketList = _j;
        }
    }
    else
    {
        myPositionInSocketList = -1;
    }
};

initialize_socket_list = function(arg0 = [])
{
    if (array_length(socketList) > 0 && array_equals(arg0, socketList))
        exit;
    
    delete_everyone();
    socketList = [];
    clientTurnReady = [];
    
    if (global.isHost)
    {
        for (var _i = 0; _i < steam_lobby_get_member_count(); _i++)
        {
            socketList[_i] = steam_lobby_get_member_id(_i);
            clientTurnReady[_i] = 0;
            global.playersManager.create_player(_i);
        }
        
        send_socket_list();
    }
    else
    {
        for (var _i = 0; _i < array_length(arg0); _i++)
        {
            socketList[_i] = arg0[_i];
            clientTurnReady[_i] = 0;
            global.playersManager.create_player(_i);
        }
    }
    
    recalculate_ghost();
    define_position_in_socket_list();
    
    with (oMenu)
        update_screen_players();
};

send_socket_list = function()
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_7);
    var _socketLength = array_length(socketList);
    buffer_write(_buffer, buffer_u8, _socketLength);
    
    for (var _s = 0; _s < _socketLength; _s++)
        buffer_write(_buffer, buffer_u64, socketList[_s]);
    
    network_end_package(_buffer, UnknownEnum.Value_1);
};

create_host = function()
{
    if (is_steam_init())
    {
        timeOutCreateHost.run();
        var _steamLobbyType = 0;
        
        if (global.lobbyTypeDefault == UnknownEnum.Value_1)
            _steamLobbyType = 1;
        else if (global.lobbyTypeDefault == UnknownEnum.Value_2)
            _steamLobbyType = 2;
        
        var _user_name = steam_get_user_persona_name_sync(mySteamId);
        steam_lobby_create(_steamLobbyType, global.lobbyNbrPlayersDefault);
        InputPartySetJoin(false);
        InputSetHotswap(false);
    }
    else
    {
        host_create_failed();
    }
};

host_create_success = function()
{
    isNetworkGame = true;
    global.isHost = true;
    global.isClient = false;
    currentHostId = steam_lobby_get_owner_id();
    socketList[0] = currentHostId;
    define_position_in_socket_list();
    steam_lobby_set_data("LobbyName", global.lobbyNameDefault);
    steam_lobby_set_data("LobbyPlayerMax", global.lobbyNbrPlayersDefault);
    steam_lobby_set_data("Version", global.gameVersion);
    timeOutCreateHost.stop();
    timeOutCreateHost.reset();
    steam_net_messages_register_callbacks();
    
    with (oMenu)
        stateNext = UnknownEnum.Value_4;
};

host_create_failed = function()
{
    reset();
    
    with (oMenu)
    {
        stateNext = UnknownEnum.Value_8;
        errorMessageLabel = "lobby._steamDisconnected";
        errorCallbackState = UnknownEnum.Value_1;
    }
    
    if (is_steam_init())
        steam_lobby_leave();
};

join_host_success = function()
{
    InputPartySetJoin(false);
    InputSetHotswap(false);
    isNetworkGame = true;
    global.isHost = false;
    global.isClient = true;
    currentHostId = steam_lobby_get_owner_id();
    alarm[0] = 10;
    timeOutJoinHost.reset();
    timeOutJoinHost.run();
    steam_net_messages_register_callbacks();
};

join_host_failed = function(arg0 = true, arg1 = "-1")
{
    timeOutJoinHost.stop();
    timeOutJoinHost.reset();
    steam_lobby_leave();
    alarm[0] = -1;
    
    if (arg0)
    {
        with (oMenu)
            stateNext = UnknownEnum.Value_5;
    }
    else
    {
        with (oMenu)
        {
            stateNext = UnknownEnum.Value_8;
            errorMessageLabel = $"lobby._differentVersion#{global.gameVersion}#{arg1}";
            errorCallbackState = UnknownEnum.Value_5;
        }
    }
};

recalculate_ghost = function()
{
    if (global.playersCount == 1)
    {
        InputPlayerSetGhost(false, 0);
        
        if (myDeviceType == -1)
            InputPlayerSetDevice(-1, 0);
        else
            InputPlayerSetDevice(0, 0);
    }
    else
    {
        for (var _i = 0; _i < array_length(socketList); _i++)
        {
            InputPlayerSetGhost(true, _i);
            
            if (socketList[_i] == mySteamId)
            {
                InputPlayerSetGhost(false, _i);
                
                if (myDeviceType == -1)
                    InputPlayerSetDevice(-1, _i);
                else
                    InputPlayerSetDevice(0, _i);
            }
        }
    }
};

delete_everyone = function()
{
    var _p = global.playersCount - 1;
    
    while (_p >= 0)
    {
        global.playersManager.remove(_p);
        _p--;
    }
};

check_client_turn = function()
{
    for (var _i = 0; _i < array_length(clientTurnReady); _i++)
    {
        if (_i == 0)
            continue;
        
        if (clientTurnReady[_i] != turnId)
            return false;
    }
    
    return true;
};

reset = function()
{
    if (is_steam_init())
    {
        if (global.isHost)
            steam_lobby_set_joinable(false);
        
        steam_lobby_leave();
    }
    
    isNetworkGame = false;
    steam_net_messages_unregister_callbacks();
    delete_everyone();
    socketList = [];
    global.isHost = true;
    global.isClient = false;
    global.playersManager.create_player(0);
    recalculate_ghost();
    define_position_in_socket_list();
    InputSetHotswap(true);
    InputPartySetJoin(false);
    global.tvState.turn_off();
    alarm[0] = -1;
};

reset_turn = function()
{
    turnId = 0;
    
    for (var _i = 0; _i < array_length(clientTurnReady); _i++)
        clientTurnReady[_i] = 0;
};

send_game_state = function()
{
};

launch_game = function(arg0, arg1)
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_6);
    buffer_write(_buffer, buffer_bool, arg0);
    buffer_write(_buffer, buffer_u32, arg1);
    network_end_package(_buffer, UnknownEnum.Value_2);
};

mouse_coordinate = function(arg0, arg1, arg2, arg3, arg4 = UnknownEnum.Value_1)
{
    buffer_seek(bufferCursor, buffer_seek_start, 0);
    buffer_write(bufferCursor, buffer_u8, UnknownEnum.Value_9);
    buffer_write(bufferCursor, buffer_u8, arg0);
    buffer_write(bufferCursor, buffer_f16, arg1);
    buffer_write(bufferCursor, buffer_f16, arg2);
    network_end_package(bufferCursor, arg3, undefined, undefined, arg4, false);
};

networking_generate_chatbox_tooltip = function(arg0, arg1, arg2, arg3, arg4, arg5 = -1, arg6 = -1)
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_10);
    buffer_write(_buffer, buffer_u8, arg0);
    buffer_write(_buffer, buffer_f16, arg1);
    buffer_write(_buffer, buffer_f16, arg2);
    buffer_write(_buffer, buffer_string, arg3);
    buffer_write(_buffer, buffer_u64, arg6);
    var _customIdSocket = -1;
    
    if (arg6 != -1)
        _customIdSocket = socketList[arg6];
    
    network_end_package(_buffer, arg4, arg5, _customIdSocket);
};

step_finished = function()
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_16);
    buffer_write(_buffer, buffer_u8, myPositionInSocketList);
    buffer_write(_buffer, buffer_u32, turnId);
    network_end_package(_buffer, UnknownEnum.Value_0);
};

state_switched = function()
{
    pendingStateMachine = max(pendingStateMachine - 1, 0);
    
    if (pendingStateMachine == 0)
    {
        turnId++;
        canSendReady = true;
        alarm[2] = -1;
    }
};

send_ready = function()
{
    canSendReady = false;
    alarm[2] = game_get_speed(gamespeed_fps);
};

go_to_room = function(arg0)
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_11);
    buffer_write(_buffer, buffer_string, arg0);
    network_end_package(_buffer, UnknownEnum.Value_1);
};

go_to_step = function(arg0, arg1, arg2, arg3)
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_12);
    buffer_write(_buffer, buffer_u8, arg0);
    buffer_write(_buffer, buffer_u8, arg1);
    buffer_write(_buffer, buffer_s8, arg2);
    buffer_write(_buffer, buffer_s8, arg3);
    network_end_package(_buffer, UnknownEnum.Value_1);
};

send_action = function(arg0, arg1, arg2)
{
    if (global.isHost)
    {
        apply_action(arg0, arg1, arg2);
    }
    else
    {
        var _buffer = network_init_package();
        buffer_write(_buffer, buffer_u8, UnknownEnum.Value_13);
        buffer_write(_buffer, buffer_u8, arg0);
        buffer_write(_buffer, buffer_u8, arg1);
        buffer_write(_buffer, buffer_bool, arg2);
        network_end_package(_buffer, UnknownEnum.Value_0);
    }
};

apply_action = function(arg0, arg1, arg2)
{
    var _newTime = current_time;
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_14);
    buffer_write(_buffer, buffer_u8, arg0);
    buffer_write(_buffer, buffer_u8, arg1);
    buffer_write(_buffer, buffer_bool, arg2);
    buffer_write(_buffer, buffer_u64, _newTime);
    network_end_package(_buffer, UnknownEnum.Value_1);
    global.playersManager.apply_action(arg0, arg1, arg2, _newTime);
};

update_position_book = function(arg0)
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_15);
    buffer_write(_buffer, buffer_f16, arg0);
    network_end_package(_buffer, UnknownEnum.Value_1);
};

show_cursor = function(arg0, arg1 = -1)
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_5);
    buffer_write(_buffer, buffer_bool, arg0);
    buffer_write(_buffer, buffer_u8, arg1);
    network_end_package(_buffer, UnknownEnum.Value_2);
};

set_angle_pendulum = function(arg0)
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_2);
    buffer_write(_buffer, buffer_f16, arg0);
    network_end_package(_buffer, UnknownEnum.Value_1);
};

send_stamp = function(arg0, arg1, arg2, arg3)
{
    if (global.isHost)
    {
        add_stamp(arg0, arg1, arg2, arg3);
    }
    else
    {
        var _buffer = network_init_package();
        buffer_write(_buffer, buffer_u8, UnknownEnum.Value_17);
        buffer_write(_buffer, buffer_f16, arg0);
        buffer_write(_buffer, buffer_f16, arg1);
        buffer_write(_buffer, buffer_u8, arg2);
        buffer_write(_buffer, buffer_u8, arg3);
        network_end_package(_buffer, UnknownEnum.Value_0);
    }
};

add_stamp = function(arg0, arg1, arg2, arg3)
{
    with (oIntro)
        add_stamp(arg0, arg1, arg2, arg3);
    
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_18);
    buffer_write(_buffer, buffer_f16, arg0);
    buffer_write(_buffer, buffer_f16, arg1);
    buffer_write(_buffer, buffer_u8, arg2);
    buffer_write(_buffer, buffer_u8, arg3);
    network_end_package(_buffer, UnknownEnum.Value_1);
};

destroy_dialogue = function()
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_19);
    network_end_package(_buffer, UnknownEnum.Value_2);
};

ask_dialogue_status = function(arg0)
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_20);
    buffer_write(_buffer, buffer_u32, arg0);
    network_end_package(_buffer, UnknownEnum.Value_2);
};

update_counter_dialogue = function(arg0, arg1, arg2 = -1, arg3 = UnknownEnum.Value_1)
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_21);
    buffer_write(_buffer, buffer_u8, arg0);
    buffer_write(_buffer, buffer_bool, arg1);
    
    if (arg2 == -1)
        network_end_package(_buffer, UnknownEnum.Value_2, undefined, undefined, arg3);
    else
        network_end_package(_buffer, UnknownEnum.Value_3, undefined, arg2, arg3);
};

yule = function()
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_22);
    network_end_package(_buffer, UnknownEnum.Value_1);
};

babayaga = function()
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_23);
    network_end_package(_buffer, UnknownEnum.Value_1);
};

ping = function()
{
    if (isNetworkGame)
    {
        var _buffer = network_init_package();
        buffer_write(_buffer, buffer_u8, UnknownEnum.Value_24);
        buffer_write(_buffer, buffer_u64, current_time);
        network_end_package(_buffer, UnknownEnum.Value_1);
    }
};

pong = function(arg0)
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_25);
    buffer_write(_buffer, buffer_u64, arg0);
    network_end_package(_buffer, UnknownEnum.Value_0);
};

funfair_send_angle = function(arg0, arg1)
{
    var _buffer = network_init_package();
    buffer_write(_buffer, buffer_u8, UnknownEnum.Value_26);
    buffer_write(_buffer, buffer_u8, arg0);
    buffer_write(_buffer, buffer_s32, arg1);
    network_end_package(_buffer, UnknownEnum.Value_2);
};

event_handler = function(arg0)
{
    var _theEventType = buffer_read(arg0, buffer_u8);
    
    switch (_theEventType)
    {
        case UnknownEnum.Value_0:
            var _id = buffer_read(arg0, buffer_u64);
            hello_back(_id);
            break;
        
        case UnknownEnum.Value_1:
            ask_for_socket_list();
            timeOutJoinHost.stop();
            timeOutJoinHost.reset();
            alarm[0] = -1;
            break;
        
        case UnknownEnum.Value_4:
            initialize_socket_list();
            break;
        
        case UnknownEnum.Value_7:
            var _socketLength = buffer_read(arg0, buffer_u8);
            var _socketList = [];
            
            for (var _s = 0; _s < _socketLength; _s++)
                array_push(_socketList, buffer_read(arg0, buffer_u64));
            
            if (!isNetworkGame || _socketList[0] != steam_lobby_get_owner_id())
                exit;
            
            initialize_socket_list(_socketList);
            break;
        
        case UnknownEnum.Value_5:
            var _bool = buffer_read(arg0, buffer_bool);
            var _number = buffer_read(arg0, buffer_u8);
            global.playersManager.get_cursor(_number).show_cursor(_bool, false);
            break;
        
        case UnknownEnum.Value_6:
            var _tutorial = buffer_read(arg0, buffer_bool);
            var _seed = buffer_read(arg0, buffer_u32);
            
            with (oMenu)
                launch_game(_tutorial, _seed);
            
            break;
        
        case UnknownEnum.Value_9:
            var _number = buffer_read(arg0, buffer_u8);
            var _x = buffer_read(arg0, buffer_f16);
            var _y = buffer_read(arg0, buffer_f16);
            var _cursor = global.playersManager.get_cursor(_number);
            
            if (_cursor != -4)
            {
                _cursor.networkTargetX = _x;
                _cursor.networkTargetY = _y;
            }
            
            break;
        
        case UnknownEnum.Value_13:
            var _nbr = buffer_read(arg0, buffer_u8);
            var _type = buffer_read(arg0, buffer_u8);
            var _triggerVfx = buffer_read(arg0, buffer_bool);
            apply_action(_nbr, _type, _triggerVfx);
            break;
        
        case UnknownEnum.Value_14:
            var _number = buffer_read(arg0, buffer_u8);
            var _type = buffer_read(arg0, buffer_u8);
            var _triggerVfx = buffer_read(arg0, buffer_bool);
            var _newTime = buffer_read(arg0, buffer_u64);
            global.playersManager.apply_action(_number, _type, _triggerVfx, _newTime);
            break;
        
        case UnknownEnum.Value_16:
            var _positionSocket = buffer_read(arg0, buffer_u8);
            var _turnId = buffer_read(arg0, buffer_u32);
            
            if (clientTurnReady[_positionSocket] < _turnId)
                clientTurnReady[_positionSocket] = _turnId;
            
            break;
        
        case UnknownEnum.Value_17:
            var _x = buffer_read(arg0, buffer_f16);
            var _y = buffer_read(arg0, buffer_f16);
            var _nbr = buffer_read(arg0, buffer_u8);
            var _box = buffer_read(arg0, buffer_u8);
            add_stamp(_x, _y, _nbr, _box);
            break;
        
        case UnknownEnum.Value_18:
            with (oIntro)
            {
                var _x = buffer_read(arg0, buffer_f16);
                var _y = buffer_read(arg0, buffer_f16);
                var _nbr = buffer_read(arg0, buffer_u8);
                var _box = buffer_read(arg0, buffer_u8);
                add_stamp(_x, _y, _nbr, _box);
            }
            
            break;
        
        case UnknownEnum.Value_20:
            if (global.dialogueCounter == buffer_read(arg0, buffer_u32))
            {
                for (var _i = 0; _i < array_length(socketList); _i++)
                {
                    if (socketList[_i] == mySteamId)
                    {
                        update_counter_dialogue(_i, global.dialogueValidated[_i]);
                        break;
                    }
                }
            }
            
            break;
        
        case UnknownEnum.Value_19:
            with (oDialogue)
            {
                global.dialogueValidated = array_create(global.playersCount, false);
                instance_destroy();
            }
            
            break;
        
        case UnknownEnum.Value_21:
            with (oDialogue)
            {
                var _number = buffer_read(arg0, buffer_u8);
                var _bool = buffer_read(arg0, buffer_bool);
                update_counter_dialogue(_number, _bool);
            }
            
            break;
        
        case UnknownEnum.Value_2:
            break;
        
        case UnknownEnum.Value_15:
            if (instance_exists(oIntro))
                oIntro.bookOffsetY = buffer_read(arg0, buffer_f16);
            
            break;
        
        case UnknownEnum.Value_11:
            g_apply_go_to_room(buffer_read(arg0, buffer_string));
            break;
        
        case UnknownEnum.Value_12:
            var _enumStep = buffer_read(arg0, buffer_u8);
            var _enumType = buffer_read(arg0, buffer_u8);
            var _enumStepForce = buffer_read(arg0, buffer_s8);
            var _enumTypeForce = buffer_read(arg0, buffer_s8);
            g_apply_go_to_step(_enumStep, _enumType, _enumStepForce, _enumTypeForce);
            break;
        
        case UnknownEnum.Value_22:
            with (oDayNightCycle)
                apply_yule();
            
            break;
        
        case UnknownEnum.Value_23:
            with (oMonster)
                apply_babayaga();
            
            break;
        
        case UnknownEnum.Value_24:
            var _timePing = buffer_read(arg0, buffer_u64);
            pong(_timePing);
            break;
        
        case UnknownEnum.Value_25:
            var _timePing = buffer_read(arg0, buffer_u64);
            break;
        
        case UnknownEnum.Value_26:
            var _cursor = global.playersManager.get_cursor(buffer_read(arg0, buffer_u8));
            
            if (_cursor != -4 && instance_exists(_cursor))
                _cursor.funfair_apply_angle(buffer_read(arg0, buffer_s32));
            
            break;
    }
};

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_7,
    Value_8,
    Value_9,
    Value_10,
    Value_11,
    Value_12,
    Value_13,
    Value_14,
    Value_15,
    Value_16,
    Value_17,
    Value_18,
    Value_19,
    Value_20,
    Value_21,
    Value_22,
    Value_23,
    Value_24,
    Value_25,
    Value_26
}
