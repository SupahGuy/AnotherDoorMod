function InputDeviceGetPlayerUsingGamepad(arg0 = true)
{
    static _playerArray = __InputSystemPlayerArray();
    
    var _playerIndex = 0;
    
    repeat (4)
    {
        if ((!arg0 || InputPlayerIsConnected(_playerIndex)) && InputDeviceIsGamepad(_playerArray[_playerIndex].__device))
            return _playerIndex;
        
        _playerIndex++;
    }
    
    return undefined;
}
