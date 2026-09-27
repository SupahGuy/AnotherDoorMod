new_exchange = function(arg0)
{
    var _delayCumul = 0;
    
    for (var _j = 0; _j < arg0.theAmount; _j++)
    {
        var _callback = function(arg0, arg1)
        {
            instance_create_depth(arg0.xOrigin, arg0.yOrigin, global.depthManager.get_depth("gemAdd"), oGemAdd, 
            {
                xTo: arg0.xTo,
                yTo: arg0.yTo,
                number: arg1,
                numberMax: arg0.theAmount,
                idReceiver: arg0.idReceiver,
                idSender: arg0.idSender,
                typeReceiver: arg0.typeReceiver
            });
        };
        
        var _t = _j / (arg0.theAmount - 1);
        var _delay = round(4 - (3 * power(_t, 3)));
        call_later(_delayCumul, time_source_units_frames, method(
        {
            callback: _callback,
            args: [arg0, _j]
        }, function()
        {
            method_call(callback, args);
        }));
        _delayCumul += _delay;
    }
    
    global.waitingList.set("oGemAdd");
};

new_lose = function(arg0)
{
    var _delayCumul = 0;
    
    for (var _j = 0; _j < arg0.theAmount; _j++)
    {
        var _callback = function(arg0, arg1)
        {
            instance_create_depth(arg0.xOrigin, arg0.yOrigin, global.depthManager.get_depth("gemAdd"), oGemDelete, 
            {
                xTo: arg0.xTo,
                yTo: arg0.yTo,
                number: arg1,
                numberMax: arg0.theAmount,
                idReceiver: arg0.idReceiver,
                idSender: arg0.idSender,
                typeReceiver: arg0.typeReceiver
            });
        };
        
        var _t = _j / (arg0.theAmount - 1);
        var _delay = round(4 - (3 * power(_t, 3)));
        call_later(_delayCumul, time_source_units_frames, method(
        {
            callback: _callback,
            args: [arg0, _j]
        }, function()
        {
            method_call(callback, args);
        }));
        _delayCumul += _delay;
    }
    
    global.waitingList.set("oGemDelete");
};
