function __InputTriggerEffectReapply(arg0 = 0)
{
    static _playerArray = __InputTriggerEffectSystem().__playerArray;
    
    if (arg0 == -3)
    {
        var _i = 0;
        
        repeat (4)
        {
            __InputTriggerEffectReapply(_i);
            _i++;
        }
        
        exit;
    }
    
    with (_playerArray[arg0])
    {
        if (__paused)
            exit;
        
        __SetTriggerEffect(32775, __effectLeft, false);
        __SetTriggerEffect(32776, __effectRight, false);
    }
}
