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
        isClampVisible = false;
        
        if (countClamp == 1 && shouldReplace)
        {
            change_door_type();
            clampTightenTimer.set_direction(-1);
            clampFrame = sprite_get_number(clampTightenTimer.get_sprite()) - 1;
            barCompletionWidth = 0;
            barCompletionWidthTo = 0;
            stateNext = UnknownEnum.Value_1;
        }
        else if (countClamp == 2 || (countClamp == 1 && !shouldReplace))
        {
            countClamp = 0;
            global.waitingList.remove("doorClamp");
        }
    }
}
else if (state == UnknownEnum.Value_1)
{
    if (statePrev != state)
    {
        isClampVisible = true;
        clampDownTimer.reset();
        clampDownTimer.run();
    }
    
    if (clampDownTimer.is_running() || clampDownTimer.is_finished())
    {
        clampOffsetY = map_value(clampDownTimer.get_cur_length_normalize(), 0, 1, clampYOffsetInit, clampYOffsetTo);
        
        if (countClamp == 1)
            doorClampOffsetY = (y - clampYOffsetTo) + clampOffsetY;
        else
            clampAngle = cos(current_time / 200) * 32 * (1 - clampDownTimer.get_cur_length_normalize());
    }
    
    if (clampDownTimer.is_finished())
        stateNext = UnknownEnum.Value_2;
}
else if (state == UnknownEnum.Value_2)
{
    if (statePrev != state)
    {
        clampTightenTimer.reset();
        clampTightenTimer.run();
    }
    
    if (clampTightenTimer.is_running())
        clampFrame = clampTightenTimer.get_current_frame();
    
    if (clampTightenTimer.is_finished())
        stateNext = UnknownEnum.Value_3;
}
else if (state == UnknownEnum.Value_3)
{
    if (statePrev != state)
    {
        clampUpTimer.reset();
        clampUpTimer.run();
    }
    
    if (clampUpTimer.is_running())
    {
        clampOffsetY = map_value(clampUpTimer.get_cur_length_normalize(), 0, 1, clampYOffsetTo, clampYOffsetInit);
        
        if (countClamp == 0)
            doorClampOffsetY = (y - clampYOffsetTo) + clampOffsetY;
    }
    
    if (clampUpTimer.is_finished())
    {
        countClamp++;
        stateNext = UnknownEnum.Value_0;
    }
}

statePrev = state;
state = stateNext;

if (morseRunning)
{
    if (current_time <= morseLightTime)
        morseLightOn = true;
    else
        morseLightOn = false;
    
    if (current_time >= morseCharEndTime)
    {
        morseCharCur++;
        calculate_morse_time(morseCode, morseCharCur);
    }
}

if (doorFrame != doorFrameTo)
{
    doorFrame = lerp(doorFrame, doorFrameTo, 0.125);
    
    if (abs(doorFrame - doorFrameTo) < 1)
        doorFrame = doorFrameTo;
}

if (room != roomIntroduction && !is_disabled())
{
    if (is_hover())
        doorFrameTo = sprite_get_number(animDoor.get_sprite()) - 1;
    else
        doorFrameTo = 0;
}

if (room == roomStage)
{
    if (global.playersManager.someone_has_token_type(UnknownEnum.Value_16) && doorType != UnknownEnum.Value_0)
    {
        var _whoHasMasterKey = global.playersManager.who_has_token_type(UnknownEnum.Value_16);
        
        if (_whoHasMasterKey != -1)
        {
            if (is_hover_enter() && global.__ElementController.element_in_hover_enter[_whoHasMasterKey] == id)
            {
                global.tvState.token_master_key();
            }
            else if (is_hover_leave() && global.__ElementController.element_in_hover_leave[_whoHasMasterKey] == id)
            {
                global.tvState.suspicious([2]);
                global.tvState.monsters_announcement([6]);
            }
        }
    }
    
    with (oCursor)
    {
        var _withDefaultToken = global.loopManager.state == UnknownEnum.Value_5;
        var _withLostInTimeToken = global.playersManager.get_characters(number).token.theType == UnknownEnum.Value_3 && (global.loopManager.state == UnknownEnum.Value_5 || global.loopManager.state == UnknownEnum.Value_6);
        
        if ((_withDefaultToken || _withLostInTimeToken) && !global.playersManager.has_acted(number))
        {
            var _verbPressed = false;
            
            if (InputPlayerUsingKbm(number))
                _verbPressed = other.has_number_clicked(number);
            else if (InputPlayerUsingGamepad(number))
                _verbPressed = is_verb_active(other.gamepadBtnLinked, UnknownEnum.Value_1);
            
            if (_verbPressed)
            {
                if (other.doorType == UnknownEnum.Value_0)
                    global.playersManager.send_action(number, UnknownEnum.Value_1, true);
                else if (global.loopManager.has_more_door())
                    global.playersManager.send_action(number, UnknownEnum.Value_2, true);
            }
        }
    }
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_5 = 5,
    Value_6,
    Value_16 = 16
}
