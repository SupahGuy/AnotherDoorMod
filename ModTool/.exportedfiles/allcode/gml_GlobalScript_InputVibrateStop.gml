function InputVibrateStop(arg0 = 0)
{
    static _playerArray = __InputVibrateSystem().__playerArray;
    
    array_resize(_playerArray[arg0].__eventArray, 0);
}
