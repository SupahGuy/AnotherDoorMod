if (global.isGameLaunched)
{
    for (var _i = 0; _i < 4; _i++)
    {
        var _state = InputPlayerGetStatus(_i);
        
        if (_state == UnknownEnum.Value_1)
        {
            pause_controller(true);
            InputPartySetParams(-1, global.playersCount, global.playersCount, false, UnknownEnum.Value_12, undefined, true);
            InputPartySetJoin(true);
            animSuccess.reset();
            animSuccess.stop();
        }
    }
}

if (is_paused_controller())
{
    if (InputPartyGetReady() && !animSuccess.is_running() && !animSuccess.is_finished())
        animSuccess.run();
    
    if (animSuccess.is_finished())
    {
        animSuccess.reset();
        pause_controller(false);
        InputPartySetJoin(false);
    }
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_12 = 12
}
