function InputVibrateSetPause(arg0, arg1 = 0)
{
    static _playerArray = __InputVibrateSystem().__playerArray;
    
    if (arg1 == -3)
    {
        var _i = 0;
        
        repeat (4)
        {
            InputVibrateSetPause(arg0, _i);
            _i++;
        }
        
        exit;
    }
    
    _playerArray[arg1].__paused = arg0;
}
