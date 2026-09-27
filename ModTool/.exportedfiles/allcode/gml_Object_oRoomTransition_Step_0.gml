if (state == UnknownEnum.Value_0)
{
    if (statePrev != state)
        timerLeave.run();
    
    if (timerLeave.is_running() || timerLeave.is_finished())
    {
        var _norm = timerLeave.get_cur_length_normalize();
        heightR1 = map_value(_norm, 0, 1, 0, global.gameHeight / 2);
        heightR2 = map_value(_norm, 0, 1, global.gameHeight, global.gameHeight / 2);
    }
    
    if (timerLeave.is_finished())
    {
        if (leaveCallback != undefined)
        {
            leaveCallbackActivated = true;
            leaveCallback();
        }
        
        timerLeave.reset();
        global.waitingList.remove(id);
    }
}
else if (state == UnknownEnum.Value_1)
{
    if (statePrev != state)
    {
        if (!leaveCallbackActivated && leaveCallback != undefined)
        {
            leaveCallbackActivated = true;
            leaveCallback();
        }
        
        timerEnter.run();
    }
    
    if (timerEnter.is_running() || timerEnter.is_finished())
    {
        var _norm = timerEnter.get_cur_length_normalize();
        heightR1 = map_value(_norm, 0, 1, global.gameHeight / 2, 0);
        heightR2 = map_value(_norm, 0, 1, global.gameHeight / 2, global.gameHeight);
    }
    
    if (timerEnter.is_finished())
    {
        if (enterCallback != undefined)
            enterCallback();
        
        timerEnter.reset();
        global.waitingList.remove(id);
        instance_destroy();
    }
}

statePrev = state;
state = stateNext;

enum UnknownEnum
{
    Value_0,
    Value_1
}
