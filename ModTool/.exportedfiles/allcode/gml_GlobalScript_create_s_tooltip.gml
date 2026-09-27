function cTooltip(arg0 = -1, arg1 = -1, arg2 = -1, arg3 = UnknownEnum.Value_1, arg4 = UnknownEnum.Value_1, arg5 = -1, arg6 = -1, arg7 = false, arg8 = false, arg9 = -4) constructor
{
    belongTo = arg0;
    title = arg1;
    body = arg2;
    alignX = arg3;
    alignY = arg4;
    img = arg5;
    effect = arg6;
    effectIsLinked = arg7;
    isDialbox = arg8;
    idParent = arg9;
}

function cDialogue(arg0 = -1, arg1 = UnknownEnum.Value_1, arg2 = UnknownEnum.Value_1, arg3 = UnknownEnum.Value_5, arg4 = UnknownEnum.Value_1, arg5 = -1, arg6 = [], arg7 = [], arg8 = [], arg9 = -1, arg10 = 0, arg11 = 1) constructor
{
    body = arg0;
    alignX = arg1;
    alignY = arg2;
    whoIsSpeaking = arg3;
    closeType = arg4;
    closeTimer = arg5;
    callBackStart = arg6;
    callBackTextEnd = arg7;
    callBackDestroy = arg8;
    tooltipList = arg9;
    numberInList = arg10;
    totalListLength = arg11;
}

function set_list_of_tooltip(arg0)
{
    for (var _i = 0; _i < array_length(arg0); _i++)
    {
        arg0[_i].tooltipList = arg0;
        arg0[_i].numberInList = _i;
        arg0[_i].totalListLength = array_length(arg0);
    }
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_5 = 5
}
