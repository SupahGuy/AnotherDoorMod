function InputTriggerEffectVibration(arg0, arg1, arg2, arg3, arg4 = 0)
{
    static _playerArray = __InputTriggerEffectSystem().__playerArray;
    
    _playerArray[arg4].__SetTriggerEffect(arg0, new __InputTriggerEffectClassVibration(arg1, arg2, arg3), true);
}
