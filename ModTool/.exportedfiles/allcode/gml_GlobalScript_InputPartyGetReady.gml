function InputPartyGetReady()
{
    static _system = __InputPartySystem();
    
    var _connected = InputPlayerConnectedCount();
    return _connected >= _system.__minPlayers && _connected <= _system.__maxPlayers;
}
