if (state == UnknownEnum.Value_0)
{
    if (statePrev != state)
    {
        paneTopYTo = (-slotHeight / 2) * global.zoom;
        paneTopYInit = paneTopY;
        paneBottomYTo = slotHeight * global.zoom;
        paneBottomYInit = paneBottomY;
        timerOpenPane.reset();
        timerOpenPane.run();
        canVfxSmoke = true;
        openPaneCallbackPlayed = true;
    }
    
    if (canVfxSmoke && !timerOpenPane.is_delay_running())
    {
        canVfxSmoke = false;
        part_emitter_burst(global.particlesSys, pePaneSmoke, global.particles.ptSmokeBottom, irandom_range(0, 3));
        part_emitter_burst(global.particlesSys, pePaneSmoke, global.particles.ptSmokeTop, irandom_range(0, 3));
    }
    
    if (timerOpenPane.is_running())
    {
        var _norm = timerOpenPane.get_cur_length_normalize();
        paneTopY = map_value(_norm, 0, 1, paneTopYInit, paneTopYTo);
        paneBottomY = map_value(_norm, 0, 1, paneBottomYInit, paneBottomYTo);
    }
    else if (timerOpenPane.is_finished())
    {
        paneTopY = paneTopYTo;
        paneBottomY = paneBottomYTo;
        
        if (openPaneCallback != undefined && openPaneCallbackPlayed)
        {
            openPaneCallback();
            openPaneCallbackPlayed = false;
        }
    }
}
else if (state == UnknownEnum.Value_1)
{
    if (statePrev != state)
    {
        paneTopYTo = 0;
        paneTopYInit = paneTopY;
        paneBottomYTo = (slotHeight / 2) * global.zoom;
        paneBottomYInit = paneBottomY;
        timerClosePane.reset();
        timerClosePane.run();
        checkForShock = true;
    }
    
    if (timerClosePane.is_running())
    {
        var _norm = timerClosePane.get_cur_length_normalize();
        var _prevTopY = paneTopY;
        paneTopY = map_value(_norm, 0, 1, paneTopYInit, paneTopYTo);
        paneBottomY = map_value(_norm, 0, 1, paneBottomYInit, paneBottomYTo);
        
        if (sign(_prevTopY - paneTopY) && checkForShock)
        {
            part_emitter_burst(global.particlesSys, pePane, global.particles.ptSparkBig, irandom_range(1, 3));
            part_emitter_burst(global.particlesSys, pePane, global.particles.ptPaneBottom, choose(4, 12));
            part_emitter_burst(global.particlesSys, pePane, global.particles.ptPaneTop, choose(4, 12));
            checkForShock = false;
        }
    }
    else if (timerClosePane.is_finished())
    {
        paneTopY = paneTopYTo;
        paneBottomY = paneBottomYTo;
    }
}

statePrev = state;
state = stateNext;

if (stateBearings == UnknownEnum.Value_0)
{
    if (stateBearingsPrev != stateBearings)
    {
    }
    
    for (var _step = 0; _step < bearingSpeed; _step++)
    {
        bearingOffset += 1;
        
        if (shouldBearingsStop)
        {
            bearingStopTurnCounter += 1;
            
            if (bearingStopTurnCounter >= bearingStopTurnMax)
                canBearingsStop = true;
        }
        
        if (canBearingsStop)
        {
            var _limit = ((bearingOffset + (heightItem * bearingStopNbr)) % yModuloMax) + yItemDrawMin;
            
            if (_limit == bearingStopY)
            {
                if (bearingCallback != undefined)
                    bearingCallback();
                
                stateBearingsNext = UnknownEnum.Value_1;
                break;
            }
        }
    }
}
else if (stateBearings == UnknownEnum.Value_1)
{
    if (stateBearingsPrev != stateBearings)
    {
        canBearingsStop = false;
        shouldBearingsStop = false;
        bearingStopTurnCounter = 0;
    }
}

if (keyboard_check_pressed(ord("S")))
{
    stateBearingsNext = UnknownEnum.Value_0;
    stop_on_item_nbr(random_range(0, array_length(itemsList) - 1));
}

stateBearingsPrev = stateBearings;
stateBearings = stateBearingsNext;

enum UnknownEnum
{
    Value_0,
    Value_1
}
