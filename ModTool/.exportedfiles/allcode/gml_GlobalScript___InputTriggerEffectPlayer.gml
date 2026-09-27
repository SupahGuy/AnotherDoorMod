function __InputTriggerEffectPlayer(arg0) constructor
{
    static _deviceMap = __InputTriggerEffectSystem().__deviceMap;
    
    static __SetTriggerEffect = function(arg0, arg1, arg2)
    {
        var _device = InputPlayerGetDevice(__playerIndex);
        
        if (_device < 0)
            exit;
        
        if (__paused)
        {
            __InputTrace("Warning! New trigger effect ignored, player ", __playerIndex, " trigger effect is paused");
            exit;
        }
        
        var _struct = ds_map_find_value(_deviceMap, _device);
        
        if (!is_struct(_struct))
        {
            __InputTrace("Warning! Device ", _device, " is not registered with the trigger effect handler");
            exit;
        }
        
        var _intercepted = _struct.__Apply(arg0, arg1, __strength) == false;
        
        if (!arg2)
            exit;
        
        if (arg0 == 32775)
        {
            __interceptedLeft = _intercepted;
            __effectLeft = arg1;
        }
        else if (arg0 == 32776)
        {
            __interceptedRight = _intercepted;
            __effectRight = arg1;
        }
        else
        {
            InputPlugInError("Value ", arg0, " not a gamepad trigger");
            return false;
        }
    };
    
    static __SetPause = function(arg0)
    {
        __paused = arg0;
        
        if (arg0)
            __InputTriggerEffectStop(InputPlayerGetDevice(__playerIndex));
        else
            __InputTriggerEffectReapply(__playerIndex);
    };
    
    __playerIndex = arg0;
    __paused = false;
    __strength = 1;
    __interceptedLeft = false;
    __interceptedRight = false;
    __effectLeft = new __InputTriggerEffectClassOff();
    __effectRight = new __InputTriggerEffectClassOff();
}
