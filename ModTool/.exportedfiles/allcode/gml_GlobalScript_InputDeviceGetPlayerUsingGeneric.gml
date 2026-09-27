function InputDeviceGetPlayerUsingGeneric()
{
    static _playerArray = __InputSystemPlayerArray();
    
    var _playerIndex = 0;
    
    repeat (4)
    {
        if (_playerArray[_playerIndex].__device == -3)
            return _playerIndex;
        
        _playerIndex++;
    }
    
    return undefined;
}
