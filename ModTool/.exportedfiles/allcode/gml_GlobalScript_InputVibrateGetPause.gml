function InputVibrateGetPause(arg0 = 0)
{
    static _playerArray = __InputVibrateSystem().__playerArray;
    
    return _playerArray[arg0].__paused;
}
