if (live_call())
    return global.live_result;

if (isTalkFinished)
{
    if (global.networkingManager.isNetworkGame)
        global.gameEndReason = UnknownEnum.Value_0;
    else
        global.gameEndReason = UnknownEnum.Value_1;
    
    g_go_to_room("roomInit");
}

enum UnknownEnum
{
    Value_0,
    Value_1
}
