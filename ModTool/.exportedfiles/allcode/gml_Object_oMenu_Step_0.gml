if (state == UnknownEnum.Value_0)
{
    if (statePrev != state)
    {
        global.tvState.turn_off();
        
        with (oMainScene)
            switch_light(false);
        
        clickToJoinTxtShow = false;
        hide_btn();
        btnCreateGame.show();
        btnJoinGame.show();
        btnSettings.show();
        btnCredits.show();
        btnQuit.show();
        btnDiscord.show();
        btnWihslist.show();
    }
    
    if (btnCreateGame.is_released())
        stateNext = UnknownEnum.Value_1;
    
    if (btnJoinGame.is_released())
        stateNext = UnknownEnum.Value_5;
    
    if (btnSettings.is_released())
    {
        stateNext = UnknownEnum.Value_7;
        
        with (oSettings)
            switch_state();
    }
    
    if (btnCredits.is_released())
        stateNext = UnknownEnum.Value_9;
    
    if (btnQuit.is_released())
        game_end();
}
else if (state == UnknownEnum.Value_1)
{
    if (statePrev != state)
    {
        with (oMainScene)
            switch_light(false);
        
        clickToJoinTxtShow = false;
        global.networkingManager.isNetworkGame = false;
        hide_btn();
        btnChooseLocal.show();
        btnChooseOnline.show();
        btnReturn.show();
        btnReturn.set_position(global.uiPos.menuBtn[3].x, global.uiPos.menuBtn[4].y);
        global.tvState.turn_off();
    }
    
    if (btnChooseLocal.is_released())
        stateNext = UnknownEnum.Value_2;
    
    if (btnChooseOnline.is_released())
    {
        if (global.networkingManager.is_steam_init())
        {
            stateNext = UnknownEnum.Value_3;
        }
        else
        {
            stateNext = UnknownEnum.Value_8;
            errorMessageLabel = "lobby._steamDisconnected";
            errorCallbackState = UnknownEnum.Value_1;
        }
    }
    
    if (btnReturn.is_released())
        stateNext = UnknownEnum.Value_0;
}
else if (state == UnknownEnum.Value_2)
{
    if (statePrev != state)
    {
        with (oMainScene)
            switch_light(true);
        
        update_screen_players();
        hide_btn();
        btnLaunchGame.set_position(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[3].y);
        btnLaunchGame.show();
        btnReturn.set_position(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[4].y);
        btnReturn.show();
        clickToJoinTxtShow = true;
        InputPartySetJoin(true);
    }
    
    if (btnLaunchGame.is_released())
        launch_game();
    
    if (btnReturn.is_released())
    {
        var _i = global.playersCount - 1;
        
        while (_i >= 1)
        {
            InputPlayerSetDevice(-666, _i);
            global.playersManager.remove(_i);
            _i--;
        }
        
        InputPartySetJoin(false);
        stateNext = UnknownEnum.Value_1;
    }
}
else if (state == UnknownEnum.Value_3)
{
    if (statePrev != state)
        instance_create_depth(0, 0, global.depthManager.get_depth("settings"), oOnlineGameSettings);
}
else if (state == UnknownEnum.Value_4)
{
    if (statePrev != state)
    {
        update_screen_players();
        
        with (oMainScene)
            switch_light(true);
        
        hide_btn();
        
        if (global.isHost)
        {
            btnLaunchGame.set_position(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[2].y);
            btnLaunchGame.show();
            btnInviteFriends.show();
        }
        
        btnReturn.set_position(global.uiPos.menuBtn[0].x, global.uiPos.menuBtn[4].y);
        btnReturn.show();
    }
    
    if (btnLaunchGame.is_released())
        launch_game();
    
    if (btnInviteFriends.is_released())
    {
        if (steam_is_overlay_enabled())
            steam_lobby_activate_invite_overlay();
        else
            steam_activate_overlay(ov_friends);
    }
    
    if (btnReturn.is_released())
    {
        if (global.isHost)
            stateNext = UnknownEnum.Value_1;
        else
            stateNext = UnknownEnum.Value_5;
        
        global.networkingManager.reset();
    }
}
else if (state == UnknownEnum.Value_5)
{
    if (statePrev != state)
    {
        global.tvState.turn_off(true);
        hide_btn();
        instance_create_depth(0, 0, global.depthManager.get_depth("settings"), oLobbyList);
        
        with (oMainScene)
            switch_light(false);
    }
    
    if (instance_exists(oLobbyList))
    {
        if (oLobbyList.btnReturnFromLobby.is_released())
        {
            oLobbyList.clean_lobby_element();
            stateNext = UnknownEnum.Value_0;
        }
    }
}
else if (state == UnknownEnum.Value_6)
{
    if (statePrev != state)
    {
        if (instance_exists(oLobbyList))
            oLobbyList.clean_lobby_element();
        
        global.tvState.noise();
    }
}
else if (state == UnknownEnum.Value_7)
{
}
else if (state == UnknownEnum.Value_8)
{
    if (statePrev != state)
    {
        global.tvState.lobby_error();
        instance_create_depth(0, 0, global.depthManager.get_depth("errorModal"), oErrorModal, 
        {
            errorCallbackState: errorCallbackState,
            errorMessageLabel: errorMessageLabel
        });
    }
}
else if (state == UnknownEnum.Value_9)
{
    if (statePrev != state)
    {
        hide_btn();
        offsetCredit = 0;
        creditTokenCounter = 0;
        creditClickHidden = 0;
        btnDiscord.hide();
        btnWihslist.hide();
        btnReturn.show();
        btnReturn.set_position(room_width - 32 - btnReturn.get_width(), global.uiPos.menuBtn[4].y);
    }
    
    with (oCursor)
    {
        if (is_verb_active(UnknownEnum.Value_6, UnknownEnum.Value_1))
        {
            other.creditClickHidden++;
            
            if (other.creditClickHidden == 3)
            {
                var _x = room_width + 80;
                var _y = room_height / 2;
                instance_create_depth(_x, _y, global.depthManager.get_depth("token"), oToken, 
                {
                    number: -1,
                    theType: UnknownEnum.Value_12
                });
                other.throw_token();
            }
        }
        else if (is_verb_active(UnknownEnum.Value_0, UnknownEnum.Value_1))
        {
            other.offsetCredit += 10;
        }
        else if (is_verb_active(UnknownEnum.Value_1, UnknownEnum.Value_1))
        {
            other.offsetCredit -= 10;
        }
    }
    
    with (oToken)
    {
        if (is_pressed() && state == UnknownEnum.Value_2)
        {
            other.throw_token();
            other.creditTokenCounter++;
        }
    }
    
    offsetCredit -= 0.25;
    offsetCredit = min(0, offsetCredit);
    
    if (btnReturn.is_released() || (offsetCredit + ((creditTxt.get_height() / global.zoom) + room_height + 96 + 100)) < 0)
    {
        stateNext = UnknownEnum.Value_0;
        
        with (oToken)
            instance_destroy();
        
        offsetCredit = 0;
        creditClickHidden = 0;
    }
}

statePrev = state;
state = stateNext;

if (btnDiscord.is_released())
    url_open("https://discord.gg/jcuFKMrrEG");

if (btnWihslist.is_released())
    url_open("https://store.steampowered.com/app/2786760/Another_Door/");

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
    Value_12 = 12
}
