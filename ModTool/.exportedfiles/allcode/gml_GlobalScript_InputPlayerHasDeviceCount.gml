function InputPlayerHasDeviceCount()
{
    static _playerArray = __InputSystemPlayerArray();
    
    var _count = 0;
    var _i = 0;
    
    repeat (4)
    {
        _count += (_playerArray[_i].__device != -666);
        _i++;
    }
    
    return _count;
}
