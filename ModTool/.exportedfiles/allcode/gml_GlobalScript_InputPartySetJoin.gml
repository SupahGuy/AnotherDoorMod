function InputPartySetJoin(arg0, arg1)
{
    static _system = __InputPartySystem();
    
    if (arg0)
        InputSetHotswap(false);
    else if (arg1 ?? (InputPlayerConnectedCount() <= 1))
        InputSetHotswap(true);
    
    _system.__joining = arg0;
}
