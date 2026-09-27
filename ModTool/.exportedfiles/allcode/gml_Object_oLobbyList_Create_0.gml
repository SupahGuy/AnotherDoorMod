depth = global.depthManager.get_depth("settings");
arrayToDelete = [];
structElements = {};
n_root = undefined;
layoutWidth = 300;
currentPage = 1;
firstPage = 1;
lastPage = 1;
nbrLobbyPerPage = 8;
listHeight = 222;
numberOfSteamLobby = 0;
nbrFriendLobby = 0;
nbrPublicLobby = 0;
lobbyListData = [];

function cLobbyData(arg0, arg1, arg2, arg3) constructor
{
    name = arg0;
    player = arg1;
    playerMax = arg2;
    idLobby = arg3;
}

btnRefreshLobbyList = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "global._refresh",
    alignH: UnknownEnum.Value_0,
    alignV: UnknownEnum.Value_0,
    heightFixed: 24
});
btnPageLeft = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "global._previous",
    alignH: UnknownEnum.Value_0,
    alignV: UnknownEnum.Value_0,
    heightFixed: 24
});
btnPageLeft.set_disabled(true);
btnPageRight = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "global._next",
    alignH: UnknownEnum.Value_0,
    alignV: UnknownEnum.Value_0,
    heightFixed: 24
});
btnSizeHead = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonTable,
    label: "global._join",
    alignH: UnknownEnum.Value_0,
    alignV: UnknownEnum.Value_0
});
btnSizeHead.set_disabled(true);
btnSizeHead.hide();
btnReturnFromLobby = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._return",
    alignH: UnknownEnum.Value_0,
    alignV: UnknownEnum.Value_0,
    heightFixed: 24
});
lobbyListTitle = scribble($"lobby._found#{0}#{currentPage}#{lastPage}");
tableHeadLobbyName = scribble("lobby._name");
tableHeadNbrPlayers = scribble("global._players");
arrayElements = 
{
    lobbyListTitle: new cFlexStruct("lobbyListTitle", UnknownEnum.Value_1, lobbyListTitle),
    btnRefreshLobbyList: new cFlexStruct("btnRefreshLobbyList", UnknownEnum.Value_3, btnRefreshLobbyList),
    tableHeadLobbyName: new cFlexStruct("tableHeadLobbyName", UnknownEnum.Value_1, tableHeadLobbyName),
    tableHeadNbrPlayers: new cFlexStruct("tableHeadNbrPlayers", UnknownEnum.Value_1, tableHeadNbrPlayers),
    btnSizeHead: new cFlexStruct("btnSizeHead", UnknownEnum.Value_3, btnSizeHead),
    btnPageLeft: new cFlexStruct("btnPageLeft", UnknownEnum.Value_3, btnPageLeft),
    btnPageRight: new cFlexStruct("btnPageRight", UnknownEnum.Value_3, btnPageRight),
    btnReturn: new cFlexStruct("btnReturn", UnknownEnum.Value_3, btnReturnFromLobby)
};

clean_lobby_element = function()
{
    for (var _i = 0; _i < array_length(arrayToDelete); _i++)
        instance_destroy(arrayToDelete[_i]);
    
    instance_destroy(btnRefreshLobbyList);
    instance_destroy(btnPageLeft);
    instance_destroy(btnPageRight);
    instance_destroy(btnSizeHead);
    instance_destroy(btnReturnFromLobby);
    instance_destroy();
};

setup_lobby_list_data = function()
{
    lobbyListData = [];
    var _lobbyFriendId = [];
    var _idOfFriends = [];
    nbrFriendLobby = 0;
    var _info_arr = steam_get_friends_game_info();
    var _info_num = array_length(_info_arr);
    var _steam_app_id = steam_get_app_id();
    
    for (var i = 0; i < _info_num; i++)
    {
        var _info = _info_arr[i];
        
        if (_info.gameId == _steam_app_id)
        {
            var _lobby_id = _info.lobbyId;
            
            if (_lobby_id != 0)
            {
                nbrFriendLobby++;
                var _lobbyData = new cLobbyData(_info.name, "?", "?", _lobby_id);
                array_push(lobbyListData, _lobbyData);
                array_push(_lobbyFriendId, _lobby_id);
            }
        }
    }
    
    nbrPublicLobby = steam_lobby_list_get_count();
    
    for (var _pl = 0; _pl < nbrPublicLobby; _pl++)
    {
        if (array_contains(_lobbyFriendId, steam_lobby_list_get_lobby_id(_pl)))
            continue;
        
        var _lobbyData = new cLobbyData(steam_lobby_list_get_data(_pl, "LobbyName"), steam_lobby_list_get_lobby_member_count(_pl), steam_lobby_list_get_data(_pl, "LobbyPlayerMax"), steam_lobby_list_get_lobby_id(_pl));
        array_push(lobbyListData, _lobbyData);
    }
    
    numberOfSteamLobby = array_length(lobbyListData);
};

get_content = function(arg0 = UnknownEnum.Value_0)
{
    var _blockContent = [];
    
    if (arg0 == UnknownEnum.Value_0 || arg0 == UnknownEnum.Value_3 || arg0 == UnknownEnum.Value_4)
    {
        currentPage = 1;
        firstPage = 1;
        lastPage = 1;
        lobbyListTitle = scribble($"lobby._found#{0}#{1}#{1}");
        arrayElements.lobbyListTitle = new cFlexStruct("lobbyListTitle", UnknownEnum.Value_1, lobbyListTitle);
        var _noLobbyFoundLabel;
        
        if (arg0 == UnknownEnum.Value_3)
            _noLobbyFoundLabel = "lobby._steamDisconnected";
        else if (arg0 == UnknownEnum.Value_4)
            _noLobbyFoundLabel = "lobby._errorLobbyJoin";
        else
            _noLobbyFoundLabel = "lobby._notFound";
        
        var _noLobbyFound = scribble(_noLobbyFoundLabel).align(1, 0).wrap((layoutWidth - 64) * global.zoom);
        var _structNoLobbyFound = new cFlexStruct("noLobbyFound", UnknownEnum.Value_1, _noLobbyFound);
        var _structLobby = 
        {
            flexDirection: "column",
            alignItems: "center",
            data: 
            {
                type: "node"
            },
            height: "100%",
            gap: 0,
            paddingTop: 32,
            paddingRight: 32,
            paddingBottom: 32,
            paddingLeft: 32,
            nodes: [_structNoLobbyFound]
        };
        array_push(_blockContent, _structLobby);
    }
    else if (arg0 == UnknownEnum.Value_2)
    {
        currentPage = 1;
        firstPage = 1;
        lastPage = 1;
        var _randomLoadingToken = choose(sprTokenAutocracy, sprTokenBlessed, sprTokenCalculatedRisk, sprTokenCan, sprTokenCursedLoverLeft, sprTokenCursedLoverRight, sprTokenDead, sprTokenDonkeyCap, sprTokenFourLeaf, sprTokenLoniless, sprTokenLostInTime, sprTokenPhilosopher, sprTokenValor, sprTokenVulture, sprTokenWerewolf);
        var _structLoading = new cFlexStruct("loadingSprite", UnknownEnum.Value_6, _randomLoadingToken);
        var _loadingText = scribble("lobby._search");
        var _structLoadingText = new cFlexStruct("loadingText", UnknownEnum.Value_1, _loadingText);
        var _structLobby = 
        {
            flexDirection: "column",
            justifyContent: "start",
            alignItems: "center",
            data: 
            {
                type: "node"
            },
            gap: 0,
            paddingTop: 32,
            paddingRight: 32,
            paddingBottom: 32,
            paddingLeft: 32,
            nodes: [_structLoadingText, _structLoading]
        };
        array_push(_blockContent, _structLobby);
    }
    else if (arg0 == UnknownEnum.Value_1)
    {
        lastPage = max(1, ceil(numberOfSteamLobby / nbrLobbyPerPage));
        lobbyListTitle = scribble($"lobby._found#{numberOfSteamLobby}#{currentPage}#{lastPage}");
        arrayElements.lobbyListTitle = new cFlexStruct("lobbyListTitle", UnknownEnum.Value_1, lobbyListTitle);
        var _i = (currentPage - 1) * nbrLobbyPerPage;
        
        while (_i < (((currentPage - 1) * nbrLobbyPerPage) + nbrLobbyPerPage))
        {
            if (_i >= numberOfSteamLobby)
                break;
            
            var _nameData = lobbyListData[_i].name;
            var _nameLobbyLabel = (_nameData == "") ? $"Lobby {_i}" : _nameData;
            var _structNameLobby = new cFlexStruct($"nameLobby{_i}", UnknownEnum.Value_2, _nameLobbyLabel);
            var _steamNbrPlayers = lobbyListData[_i].player;
            var _steamNbrPlayersMax = lobbyListData[_i].playerMax;
            var _nbrPlayers = scribble($"{_steamNbrPlayers}/{_steamNbrPlayersMax}");
            var _structNbrPlayers = new cFlexStruct($"nbrPlayers{_i}", UnknownEnum.Value_1, _nbrPlayers);
            var _lobbyId = lobbyListData[_i].idLobby;
            var _eventLinked = method(
            {
                _lobbyId: _lobbyId
            }, function()
            {
                with (oMenu)
                    stateNext = UnknownEnum.Value_6;
                
                steam_lobby_join_id(_lobbyId);
            });
            var _btnJoinLobby = instance_create_depth(0, 0, depth - 1, oGuiButton, 
            {
                sprite_index: sprButtonTable,
                label: "global._join",
                alignH: UnknownEnum.Value_0,
                alignV: UnknownEnum.Value_0,
                eventLinked: _eventLinked
            });
            array_push(arrayToDelete, _btnJoinLobby);
            var _structBtnJoinLobby = new cFlexStruct($"btnJoinLobby{_i}", UnknownEnum.Value_3, _btnJoinLobby);
            var _structLobby = 
            {
                flexDirection: "row",
                justifyContent: "space-between",
                alignItems: "center",
                data: 
                {
                    type: UnknownEnum.Value_4
                },
                gap: 16,
                paddingRight: 2,
                paddingLeft: 8,
                height: "22",
                nodes: [_structNameLobby, 
                {
                    data: 
                    {
                        type: "node"
                    },
                    flexDirection: "row",
                    alignItems: "center",
                    justifyContent: "flex-end",
                    gap: 8,
                    nodes: [_structNbrPlayers, _structBtnJoinLobby]
                }]
            };
            array_push(_blockContent, _structLobby);
            _i++;
        }
    }
    
    return _blockContent;
};

refreshLobbyList = function(arg0 = UnknownEnum.Value_0)
{
    for (var _i = 0; _i < array_length(arrayToDelete); _i++)
        instance_destroy(arrayToDelete[_i]);
    
    var _content = get_content(arg0);
    n_root = flexpanel_create_node(
    {
        data: 
        {
            type: "node"
        },
        flexDirection: "column",
        justifyContent: "start",
        alignItems: "start",
        width: "100%",
        height: "100%",
        paddingTop: 32,
        paddingLeft: 32,
        nodes: [
        {
            flexDirection: "column",
            width: layoutWidth,
            data: 
            {
                type: "node"
            },
            gap: 0,
            nodes: [
            {
                data: 
                {
                    type: "node"
                },
                paddingBottom: 8,
                nodes: [arrayElements.lobbyListTitle]
            }, 
            {
                data: 
                {
                    type: "node"
                },
                paddingBottom: 8,
                flexDirection: "row",
                justifyContent: "space-between",
                alignItems: "center",
                nodes: [arrayElements.btnRefreshLobbyList]
            }, 
            {
                data: 
                {
                    type: UnknownEnum.Value_7,
                    element: sprBgDialogue3
                },
                paddingTop: 4,
                paddingLeft: 4,
                paddingRight: 4,
                paddingBottom: 4,
                height: listHeight,
                nodes: [
                {
                    flexDirection: "row",
                    justifyContent: "space-between",
                    alignItems: "center",
                    width: layoutWidth - 8,
                    data: 
                    {
                        type: UnknownEnum.Value_5
                    },
                    gap: 16,
                    paddingLeft: 8,
                    paddingRight: 2,
                    marginBottom: 2,
                    height: "22",
                    nodes: [arrayElements.tableHeadLobbyName, 
                    {
                        data: 
                        {
                            type: "node"
                        },
                        flexDirection: "row",
                        alignItems: "center",
                        justifyContent: "flex-end",
                        gap: 8,
                        nodes: [arrayElements.tableHeadNbrPlayers, arrayElements.btnSizeHead]
                    }]
                }, 
                {
                    name: "listLobbyBlock",
                    flexDirection: "column",
                    data: 
                    {
                        type: "node"
                    },
                    gap: 2,
                    nodes: _content
                }]
            }, 
            {
                flexDirection: "row",
                justifyContent: "space-between",
                data: 
                {
                    type: "node"
                },
                paddingTop: 8,
                paddingRight: 1,
                paddingLeft: 1,
                gap: 8,
                nodes: [
                {
                    data: 
                    {
                        type: "node"
                    },
                    flexDirection: "row",
                    gap: 8,
                    nodes: [arrayElements.btnPageLeft, arrayElements.btnPageRight]
                }, arrayElements.btnReturn]
            }]
        }]
    });
    flexpanel_calculate_layout(n_root, room_width, room_height, 0);
    ik_flex_panel_generate_instance(n_root, 0, 0);
    
    if (currentPage == firstPage)
        btnPageLeft.set_disabled(true);
    else
        btnPageLeft.set_disabled(false);
    
    if (lastPage > 1 && currentPage < lastPage)
        btnPageRight.set_disabled(false);
    else
        btnPageRight.set_disabled(true);
};

if (global.networkingManager.mySteamId == -1)
{
    refreshLobbyList(UnknownEnum.Value_3);
}
else
{
    steam_lobby_list_add_string_filter("Version", global.gameVersion, 0);
    steam_lobby_list_add_distance_filter(3);
    steam_lobby_list_request();
    refreshLobbyList(UnknownEnum.Value_2);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_7
}
