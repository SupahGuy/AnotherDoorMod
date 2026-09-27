function InputVibrateSetStrength(arg0, arg1 = 0)
{
    static _playerArray = __InputVibrateSystem().__playerArray;
    
    _playerArray[arg1].__strength = clamp(arg0, 0, 1);
}
