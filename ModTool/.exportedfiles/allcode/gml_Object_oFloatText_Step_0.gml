var _normTimerAll = timerAll.get_cur_length_normalize();
y = map_value(_normTimerAll, 0, 1, yInit, yTo);
x = map_value(_normTimerAll, 0, 1, xInit, xTo);
var _xMin = 4 + ((theSprite != -1) ? sprW : 0) + (labelDrawW / global.zoom / 2);
var _xMax = room_width - 4 - (labelDrawW / global.zoom / 2);
x = clamp(x, _xMin, _xMax);
yInit = lerp(yInit, yInitTo, 0.1);

if (timerWaitinglist.is_finished())
    global.waitingList.remove(id);

if (state == UnknownEnum.Value_0)
{
    if (statePrev != state)
        timerAppear.run();
    
    if (category == UnknownEnum.Value_1)
    {
        var _length = timerAppear.get_cur_length_normalize();
        scaleCur = map_value(_length, 0, 1, 1, scaleTo);
    }
    else if (category == UnknownEnum.Value_2 || category == UnknownEnum.Value_0)
    {
        var _length = timerAppear.get_cur_length_normalize();
        scaleCur = map_value(_length, 0, 1, scaleInit, scaleTo);
    }
    
    if (timerAppear.is_finished())
        stateNext = UnknownEnum.Value_1;
}
else if (state == UnknownEnum.Value_1)
{
    if (statePrev != state)
        timerWait.run();
    
    if (timerWait.is_finished())
        stateNext = UnknownEnum.Value_2;
}
else if (state == UnknownEnum.Value_2)
{
    if (statePrev != state)
        timerDisappear.run();
    
    if (timerDisappear.is_running() || timerDisappear.is_finished())
    {
        var _norm = timerDisappear.get_cur_length_normalize();
        image_alpha = 1 - _norm;
    }
    
    if (timerDisappear.is_finished())
        stateNext = UnknownEnum.Value_3;
}
else if (state == UnknownEnum.Value_3)
{
    if (statePrev != state)
        instance_destroy();
}

statePrev = state;
state = stateNext;

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3
}
