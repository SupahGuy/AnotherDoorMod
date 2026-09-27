function InputGetSteamInfo(arg0)
{
    static _system = __InputSystem();
    
    if (arg0 == UnknownEnum.Value_0)
        return _system.__usingSteamworks;
    else if (arg0 == UnknownEnum.Value_1)
        return _system.__onSteamDeck;
    else if (arg0 == UnknownEnum.Value_2)
        return _system.__onWINE;
    else
        __InputError("Field ", arg0, " unhandled");
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
