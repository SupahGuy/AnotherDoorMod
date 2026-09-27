function generate_chatbox_tooltip(arg0, arg1, arg2, arg3, arg4 = -1, arg5 = false)
{
    if (arg5 && global.networkingManager.isNetworkGame)
    {
        var _receiver = UnknownEnum.Value_2;
        
        if (arg4 != -1)
            _receiver = UnknownEnum.Value_3;
        
        global.networkingManager.networking_generate_chatbox_tooltip(arg0, arg1, arg2, arg3, _receiver, -1, arg4);
    }
    
    var _charLinked = global.playersManager.get_characters(arg0);
    
    if (_charLinked.currentChatbox != undefined)
    {
        if (instance_exists(_charLinked.currentChatbox))
            instance_destroy(_charLinked.currentChatbox);
    }
    
    var _close = UnknownEnum.Value_2;
    var _tooltip = new cTooltip(_charLinked, undefined, arg3);
    var _tooltipInst = instance_create_depth(arg1, arg2, global.depthManager.get_depth("chatbox"), oTooltipDialogue, _tooltip);
    _charLinked.currentChatbox = _tooltipInst;
}

enum UnknownEnum
{
    Value_2 = 2,
    Value_3
}
