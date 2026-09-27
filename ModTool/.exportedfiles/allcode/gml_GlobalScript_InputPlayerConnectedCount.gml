function InputPlayerConnectedCount()
{
    static _playerArray = __InputSystemPlayerArray();
    
    var _count = 0;
    var _i = 0;
    
    repeat (4)
    {
        var _status = _playerArray[_i].__status;
        
        if (_status == UnknownEnum.Value_2 || _status == UnknownEnum.Value_3)
            _count++;
        
        _i++;
    }
    
    return _count;
}

enum UnknownEnum
{
    Value_2 = 2,
    Value_3
}
