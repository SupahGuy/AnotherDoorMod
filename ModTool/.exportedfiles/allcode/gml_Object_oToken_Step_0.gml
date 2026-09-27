if (live_call())
    return global.live_result;

event_inherited();

if (statePrev != state)
{
}

if (state == UnknownEnum.Value_0)
{
    if (statePrev != state)
    {
        sprite_index = sprIdle;
        cardIdLand = -4;
        image_index = 0;
        image_speed = 0;
        image_alpha = 0;
        image_xscale = 0.8;
        image_yscale = 0.8;
        xDraw = xOrigin;
        yDraw = yOrigin;
        timerBackToNormal.reset();
        timerBackToNormal.run();
        global.waitingList.remove(id);
    }
    
    if ((timerBackToNormal.is_running() || timerBackToNormal.is_finished()) && !timerBackToNormal.is_delay_running())
    {
        var _dur = timerBackToNormal.get_cur_length_normalize();
        var _scale = map_value(_dur, 0, 1, 0.8, 1);
        image_xscale = _scale;
        image_yscale = _scale;
        image_alpha = _dur;
    }
    
    image_index = oSyncAnimation.frameSynchSixty.get_current_frame();
}
else if (state == UnknownEnum.Value_1)
{
    if (statePrev != state)
    {
        sprite_index = sprThrow;
        image_alpha = 1;
        image_xscale = 1;
        image_yscale = 1;
        image_index = 0;
        image_speed = 1;
        timerThrow.reset();
        timerThrow.run();
        
        if (room == roomStart)
        {
            set_disabled(true);
            
            for (var _i = 0; _i < tooltipLength; _i++)
                tooltip[_i].hide();
        }
    }
    
    if (room == roomStart)
    {
        if (timerThrow.is_running() || timerThrow.is_finished())
        {
            var _dur = timerThrow.get_cur_length_normalize();
            x = map_value(_dur, 0, 1, xThrowInit, xToLinkToCard);
            y = map_value(_dur, 0, 1, yThrowInit, yToLinkToCard);
            xDraw = x;
            yDraw = y;
        }
    }
    else if (timerThrow.is_running() || timerThrow.is_finished())
    {
        var _dur = timerThrow.get_cur_length_normalize();
        xDraw = map_value(_dur, 0, 1, xThrowInit, xToLinkToCard);
        yDraw = map_value(_dur, 0, 1, yThrowInit, yToLinkToCard);
    }
    
    if (timerThrow.is_finished())
    {
        audio_play_sound(sndCoinFlip, 10, false, undefined, undefined, random_range(0.9, 1.1));
        timerThrow.stop();
        timerThrow.reset();
    }
}
else if (state == UnknownEnum.Value_2)
{
    if (statePrev != state)
    {
        image_alpha = 1;
        image_xscale = 1;
        image_yscale = 1;
        global.waitingList.remove(id);
        
        if (room == roomStart)
        {
            set_disabled(false);
            var _title = "";
            var _message = "";
            
            if (oMenu.creditTokenCounter == 0)
            {
                _title = "token._credits";
                _body = "token._creditsDesc";
            }
            else
            {
                _title = "credits._personnalTitle";
                _body = $"credits._personalMessage{oMenu.creditTokenCounter}";
            }
            
            tooltip[0].updateTxt(_title, _body);
            tooltip[0].reposition(xToLinkToCard, yToLinkToCard - 20);
        }
    }
}
else if (state == UnknownEnum.Value_4)
{
    if (statePrev != state)
    {
        image_alpha = 1;
        image_xscale = 1;
        image_yscale = 1;
        image_speed = 0;
        image_index = 0;
        tokenBounceTimer.run();
        
        if (room == roomStage)
        {
            instance_create_depth(x, y, depth, oDieAfterAnimate, 
            {
                sprite_index: asset_get_index($"sprTokenActed{number + 1}")
            });
        }
    }
    
    if (tokenBounceTimer.is_running() || tokenBounceTimer.is_finished())
    {
        var _dur = tokenBounceTimer.get_cur_length_normalize();
        var _scaleValue = map_value(_dur, 0, 1, 1, 0.85);
        image_xscale = _scaleValue;
        image_yscale = _scaleValue;
    }
    
    if (tokenBounceTimer.is_finished())
    {
        if (stateNext == UnknownEnum.Value_4)
        {
            if (hostValidate)
                stateNext = UnknownEnum.Value_7;
            else
                stateNext = UnknownEnum.Value_0;
        }
    }
}
else if (state == UnknownEnum.Value_7)
{
    if (statePrev != state)
    {
        image_alpha = 1;
        image_xscale = 1;
        image_yscale = 1;
        image_speed = 0;
        image_index = 0;
    }
}
else if (state == UnknownEnum.Value_5)
{
    if (statePrev != state)
    {
        if (!global.networkingManager.isNetworkGame)
        {
            var _numberAllowed = global.fightManager.encounter.arrayPlayerGem[global.fightManager.encounter.indexPlayerBuy].number;
            set_interaction_allowed_by([_numberAllowed]);
        }
    }
    
    image_index = 0;
    
    if (global.fightManager.encounter.indexPlayerBuy < array_length(global.fightManager.encounter.arrayPlayerGem))
    {
        var _numberPlayer = global.fightManager.encounter.arrayPlayerGem[global.fightManager.encounter.indexPlayerBuy].number;
        
        if (global.fightManager.get_encounter().state == UnknownEnum.Value_2 && has_number_clicked(_numberPlayer) && !global.playersManager.has_acted(_numberPlayer))
        {
            var _action = UnknownEnum.Value_13;
            
            switch (numberBuy)
            {
                case 0:
                default:
                    _action = UnknownEnum.Value_3;
                    break;
                
                case 1:
                    _action = UnknownEnum.Value_4;
                    break;
                
                case 2:
                    _action = UnknownEnum.Value_5;
                    break;
                
                case 3:
                    _action = UnknownEnum.Value_6;
                    break;
                
                case 4:
                    _action = UnknownEnum.Value_7;
                    break;
                
                case 5:
                    _action = UnknownEnum.Value_8;
                    break;
                
                case 6:
                    _action = UnknownEnum.Value_9;
                    break;
            }
            
            global.playersManager.send_action(_numberPlayer, _action);
        }
    }
}
else if (state == UnknownEnum.Value_6)
{
    if (statePrev != state)
    {
        sprite_index = sprIdle;
        cardIdLand = -4;
        image_index = 0;
        image_speed = 0;
        image_alpha = 0;
        image_xscale = 0.8;
        image_yscale = 0.8;
        xDraw = xOrigin;
        yDraw = yOrigin;
        timerBackToNormal.reset();
        timerBackToNormal.run();
        global.waitingList.remove(id);
    }
    
    if ((timerBackToNormal.is_running() || timerBackToNormal.is_finished()) && !timerBackToNormal.is_delay_running())
    {
        var _dur = timerBackToNormal.get_cur_length_normalize();
        var _scale = map_value(_dur, 0, 1, 0.8, 1);
        image_xscale = _scale;
        image_yscale = _scale;
        image_alpha = _dur;
    }
}

statePrev = state;
state = stateNext;

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
    Value_13 = 13
}
