hasMovedThisStep = false;

if (global.networkingManager.isNetworkGame && InputPlayerGetGhost(number))
{
    var _verbsLength = array_length(verbsToSet);
    
    if (_verbsLength != 0)
    {
        for (var _i = 0; _i < _verbsLength; _i++)
        {
            var _verb = verbsToSet[_i];
            add_verb_active(_verb.verb, _verb.value, _verb.type);
        }
        
        verbsToSet = [];
    }
}

if (!InputPlayerGetGhost(number))
{
    theSpeedDec = lerp(theSpeedDec, theSpeedDecOrigin, 0.05);
    xVel = lerp(xVel, 0, theSpeedDec);
    yVel = lerp(yVel, 0, theSpeedDec);
    
    if (InputPlayerUsingGamepad(number))
    {
        yVel = InputY(UnknownEnum.Value_0, number);
        xVel = InputX(UnknownEnum.Value_0, number);
        
        if (xVel != 0 || yVel != 0)
        {
            var _newX = x + (xVel * theSpeed);
            var _newY = y + (yVel * theSpeed);
            x = clamp(_newX, 0, global.gameWidth - 4);
            y = clamp(_newY, 0, global.gameHeight - 4);
        }
    }
    else if (InputPlayerUsingKbm(number))
    {
        x = device_mouse_x_to_gui(0) / global.zoom;
        y = device_mouse_y_to_gui(0) / global.zoom;
    }
    
    if (prevX != x || prevY != y)
    {
        hasMovedThisStep = true;
        
        if (global.networkingManager.isNetworkGame && (isCursorVisible || isCursorVisibilityForced) && (current_time - lastNetworkSend) >= networkSendInterval)
        {
            lastNetworkSend = current_time;
            global.networkingManager.mouse_coordinate(number, x, y, UnknownEnum.Value_2);
        }
    }
}
else if (point_distance(x, y, networkTargetX, networkTargetY) < 0.5)
{
    x = networkTargetX;
    y = networkTargetY;
}
else
{
    x = lerp(x, networkTargetX, 0.25);
    y = lerp(y, networkTargetY, 0.25);
}

if (hasMovedThisStep)
    check_hover();

if (global.networkingManager.isNetworkGame && !InputPlayerGetGhost(number) && room == roomStage && !oSettings.isVisible && instance_number(oChatbox) == 0)
{
    if (is_verb_active(UnknownEnum.Value_13, UnknownEnum.Value_1))
        show_cursor(!isCursorVisible, number, true);
}

if (is_verb_active(UnknownEnum.Value_12, UnknownEnum.Value_1))
{
    if (instance_exists(oChatbox))
    {
        pause_chatbox(false);
        instance_destroy(oChatbox);
    }
    else if (!is_paused_controller() && !InputPlayerGetGhost(number) && (room == roomIntroduction || room == roomStage || room == roomEnd || room == roomScore))
    {
        with (oSettings)
            switch_state();
    }
}

if (state == UnknownEnum.Value_0)
{
    if (statePrev != state)
        sprite_index = spriteDefault;
    
    if (!InputPlayerGetGhost(number) && is_verb_active(UnknownEnum.Value_6, UnknownEnum.Value_1))
    {
        if (global.__ElementController.can_click[number])
        {
            sprite_index = spriteActive;
            stateNext = UnknownEnum.Value_1;
        }
    }
}
else if (state == UnknownEnum.Value_1)
{
    if (statePrev != state)
    {
        check_hover();
        var _instHover = global.__ElementController.element_in_hover[number];
        var _instFocus = global.__ElementController.element_in_focus[number];
        
        if (_instHover != undefined && instance_exists(_instHover))
            _instHover.click(number);
        else if (_instFocus != undefined && instance_exists(_instFocus))
            _instFocus.remove_focus(number);
    }
    
    if (is_verb_active(UnknownEnum.Value_6, UnknownEnum.Value_0))
    {
        stateNext = UnknownEnum.Value_2;
        var _elem = global.__ElementController.element_in_active[number];
        
        if (instance_exists(_elem))
            _elem.released(number);
    }
}
else if (state == UnknownEnum.Value_2)
{
    if (statePrev != state)
    {
    }
    
    stateNext = UnknownEnum.Value_0;
}

statePrev = state;
state = stateNext;
prevX = x;
prevY = y;

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_6 = 6,
    Value_12 = 12,
    Value_13
}
