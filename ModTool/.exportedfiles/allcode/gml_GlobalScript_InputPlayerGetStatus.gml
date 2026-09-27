function InputPlayerGetStatus(arg0)
{
    static _playerArray = __InputSystemPlayerArray();
    
    return _playerArray[arg0].__status;
}
