state = undefined;
stateNext = UnknownEnum.Value_0;
statePrev = undefined;
errorMessageLabel = "";
errorCallbackState = UnknownEnum.Value_0;
everyBtn = [];
btnCreateGame = instance_create_depth(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[0].y, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._createGame",
    alignV: UnknownEnum.Value_1,
    heightFixed: 24
});
array_push(everyBtn, btnCreateGame);
btnJoinGame = instance_create_depth(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[1].y, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._joinGame",
    heightFixed: 24,
    alignV: UnknownEnum.Value_1
});
array_push(everyBtn, btnJoinGame);
btnSettings = instance_create_depth(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[2].y, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._settings",
    heightFixed: 24,
    alignV: UnknownEnum.Value_1
});
array_push(everyBtn, btnSettings);
btnCredits = instance_create_depth(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[3].y, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._credits",
    heightFixed: 24,
    alignV: UnknownEnum.Value_1
});
array_push(everyBtn, btnCredits);
btnQuit = instance_create_depth(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[4].y, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._quit",
    heightFixed: 24,
    alignV: UnknownEnum.Value_1
});
array_push(everyBtn, btnQuit);
btnJoin = instance_create_depth(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[2].y, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._join",
    heightFixed: 24,
    alignV: UnknownEnum.Value_1
});
array_push(everyBtn, btnJoin);
btnHost = instance_create_depth(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[3].y, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._host",
    heightFixed: 24,
    alignV: UnknownEnum.Value_1
});
array_push(everyBtn, btnHost);
btnReturn = instance_create_depth(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[4].y, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._return",
    heightFixed: 24,
    alignV: UnknownEnum.Value_1
});
array_push(everyBtn, btnReturn);
btnInviteFriends = instance_create_depth(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[3].y, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._inviteFriends",
    heightFixed: 24,
    alignV: UnknownEnum.Value_1
});
array_push(everyBtn, btnInviteFriends);
btnChooseOnline = instance_create_depth(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[2].y, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._onlineGame",
    heightFixed: 24,
    alignV: UnknownEnum.Value_1
});
array_push(everyBtn, btnChooseOnline);
btnChooseLocal = instance_create_depth(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[3].y, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._localGame",
    heightFixed: 24,
    alignV: UnknownEnum.Value_1
});
array_push(everyBtn, btnChooseLocal);
btnLaunchGame = instance_create_depth(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[2].y, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._launchGame",
    heightFixed: 24,
    alignV: UnknownEnum.Value_1
});
array_push(everyBtn, btnLaunchGame);

if (global.playersCount <= 1)
    btnLaunchGame.set_disabled(true);

btnRefreshLobby = instance_create_depth(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[2].y, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "Refresh",
    heightFixed: 24,
    alignV: UnknownEnum.Value_1
});
array_push(everyBtn, btnRefreshLobby);

hide_btn = function()
{
    for (var i = 0; i < array_length(everyBtn); i++)
        everyBtn[i].hide();
    
    btnReturn.set_align_h(UnknownEnum.Value_0);
};

hide_btn();
btnDiscord = instance_create_depth(room_width - 32, room_height - 32, depth - 1, oGuiButton, 
{
    sprite_index: sprDiscord,
    alignH: UnknownEnum.Value_1,
    alignV: UnknownEnum.Value_1
});
btnWihslist = instance_create_depth(room_width - (32 + btnDiscord.get_width() + 8), room_height - 32, depth - 1, oGuiButton, 
{
    sprite_index: sprSteam,
    alignH: UnknownEnum.Value_1,
    alignV: UnknownEnum.Value_1
});

launch_game = function(arg0 = global.isTutorialDone, arg1 = global.seed_number)
{
    if (global.networkingManager.isNetworkGame && global.isHost)
        global.networkingManager.launch_game(arg0, arg1);
    
    global.isTutorialDone = arg0;
    minstd_set_seed(global.rng, arg1);
    global.isGameLaunched = true;
    
    if (!global.networkingManager.isNetworkGame)
    {
        InputPartySetJoin(false);
    }
    else
    {
        steam_lobby_set_joinable(false);
        
        with (oNetworking)
        {
            for (var _s = 0; _s < array_length(socketList); _s++)
            {
                if (mySteamId != socketList[_s])
                    steam_user_set_played_with(socketList[_s]);
            }
        }
    }
    
    global.networkingManager.reset_turn();
    global.monsterList.generate_data();
    set_display_controller_asset();
    g_apply_go_to_room("roomIntroduction");
};

clickToJoinTxtShow = false;
clickToJoinTxt = scribble("menu._clickToJoin").align(1, 0);

update_screen_players = function()
{
    if (state == UnknownEnum.Value_4 || state == UnknownEnum.Value_2)
    {
        var _TvToActivate = 0;
        
        if (global.networkingManager.isNetworkGame && global.networkingManager.is_steam_init())
            _TvToActivate = steam_lobby_get_member_count();
        else
            _TvToActivate = global.playersCount;
        
        global.tvState.turn_off();
        
        switch (_TvToActivate)
        {
            case 1:
                global.tvState.lobbyP1();
                break;
            
            case 2:
                global.tvState.lobbyP1();
                global.tvState.lobbyP2();
                break;
            
            case 3:
                global.tvState.lobbyP1();
                global.tvState.lobbyP2();
                global.tvState.lobbyP3();
                break;
            
            case 4:
                global.tvState.lobbyP1();
                global.tvState.lobbyP2();
                global.tvState.lobbyP3();
                global.tvState.lobbyP4();
                break;
        }
    }
    else
    {
        stateNext = UnknownEnum.Value_4;
    }
};

if (global.firstInit == true)
{
    btnCreateGame.show();
    btnJoinGame.show();
    btnSettings.show();
    btnCredits.show();
    btnQuit.show();
}
else
{
    switch (global.gameEndReason)
    {
        case UnknownEnum.Value_0:
            with (oCursor)
                set_cursor_visibility_forced(true);
            
            stateNext = UnknownEnum.Value_4;
            break;
        
        case UnknownEnum.Value_1:
        case UnknownEnum.Value_4:
            stateNext = UnknownEnum.Value_2;
            break;
        
        case UnknownEnum.Value_2:
            stateNext = UnknownEnum.Value_8;
            errorMessageLabel = "lobby._hostLeftGame";
            errorCallbackState = UnknownEnum.Value_0;
            break;
        
        case UnknownEnum.Value_3:
        case UnknownEnum.Value_5:
            stateNext = UnknownEnum.Value_0;
            break;
    }
    
    global.gameEndReason = UnknownEnum.Value_5;
}

creditClickHidden = 0;
creditTokenCounter = 0;
offsetCredit = 0;
creditTxt = scribble("credits._text");

throw_token = function()
{
    with (oToken)
    {
        if (other.creditTokenCounter > 13)
            exit;
        
        xThrowInit = x;
        yThrowInit = y;
        
        if (other.creditTokenCounter == 13)
        {
            xToLinkToCard = room_width + 80;
            yToLinkToCard = room_height / 2;
        }
        else
        {
            xToLinkToCard = irandom_range(room_width / 2, room_width - 64);
            yToLinkToCard = irandom_range(64, room_height - 64);
            
            if (other.creditTokenCounter != 0)
            {
                var _tokens = [
                {
                    type: UnknownEnum.Value_3,
                    sprite: sprTokenLostInTime
                }, 
                {
                    type: UnknownEnum.Value_4,
                    sprite: sprTokenFourLeaf
                }, 
                {
                    type: UnknownEnum.Value_10,
                    sprite: sprTokenCalculatedRisk
                }, 
                {
                    type: UnknownEnum.Value_9,
                    sprite: sprTokenAutocracy
                }, 
                {
                    type: UnknownEnum.Value_18,
                    sprite: sprTokenVulture
                }, 
                {
                    type: UnknownEnum.Value_20,
                    sprite: sprTokenCan
                }, 
                {
                    type: UnknownEnum.Value_11,
                    sprite: sprTokenValor
                }, 
                {
                    type: UnknownEnum.Value_12,
                    sprite: sprTokenBlessed
                }, 
                {
                    type: UnknownEnum.Value_13,
                    sprite: sprTokenLoniless
                }, 
                {
                    type: UnknownEnum.Value_15,
                    sprite: sprTokenPhilosopher
                }, 
                {
                    type: UnknownEnum.Value_19,
                    sprite: sprTokenDonkeyCap
                }, 
                {
                    type: UnknownEnum.Value_21,
                    sprite: sprTokenWerewolf
                }];
                var _newToken = _tokens[irandom(array_length(_tokens) - 1)];
                sprite_index = _newToken.sprite;
                sprIdle = _newToken.sprite;
                sprThrow = asset_get_index($"{sprite_get_name(_newToken.sprite)}Throw");
            }
        }
        
        stateNext = UnknownEnum.Value_1;
    }
};

demoWishlistTxt = scribble(choose("demo._wishlist2", "demo._wishlist2"));

if (global.firstInit)
{
    counterLobbyJoinParam = 0;
    alarm[0] = 60;
    global.parameters = [];
    var _p_num = parameter_count();
    
    if (_p_num > 0)
    {
        for (var i = 0; i < _p_num; i++)
            global.parameters[i] = parameter_string(i + 1);
    }
}

global.firstInit = false;

with (oRoomTransition)
    open();

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_8 = 8,
    Value_9,
    Value_10,
    Value_11,
    Value_12,
    Value_13,
    Value_15 = 15,
    Value_18 = 18,
    Value_19,
    Value_20,
    Value_21
}
