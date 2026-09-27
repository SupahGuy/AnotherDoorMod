function InputPartySetParams(arg0, arg1, arg2, arg3, arg4 = undefined, arg5 = undefined, arg6)
{
    static _system = __InputPartySystem();
    
    with (_system)
    {
        __minPlayers = clamp(arg1, 0, 4);
        __maxPlayers = clamp(arg2, 0, 4);
        __fillEmpty = arg3;
        __joinVerb = arg0;
        __leaveVerb = arg4;
        __abortCallback = arg5;
        __hotswapOnAbort = arg6;
    }
}
