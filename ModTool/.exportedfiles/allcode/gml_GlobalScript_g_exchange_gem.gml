function g_exchange_gem(arg0 = undefined, arg1 = undefined, arg2 = 0, arg3 = 0, arg4, arg5 = UnknownEnum.Value_2, arg6 = -1, arg7 = UnknownEnum.Value_2, arg8 = -1)
{
    var _xTo = arg2;
    var _yTo = arg3;
    var _amount = arg4;
    var _xOrigin, _yOrigin, _idSender;
    
    if (arg5 == UnknownEnum.Value_0)
    {
        _idSender = global.playersManager.get_characters(arg6);
        
        if (arg0 == undefined)
            _xOrigin = _idSender.xUi + global.uiPos.gemInUi.x;
        else
            _xOrigin = arg0;
        
        if (arg1 == undefined)
            _yOrigin = _idSender.yUi + global.uiPos.gemInUi.y;
        else
            _yOrigin = arg1;
    }
    else
    {
        _idSender = -1;
        _xOrigin = arg0;
        _yOrigin = arg1;
    }
    
    var _idReceiver;
    
    if (arg7 == UnknownEnum.Value_0)
    {
        _idReceiver = global.playersManager.get_characters(arg8);
        _xTo = _idReceiver.xUi + global.uiPos.gemInUi.x;
        _yTo = _idReceiver.yUi + global.uiPos.gemInUi.y;
        _idReceiver.gemIncoming = arg4;
        execute_effect(_idReceiver, UnknownEnum.Value_31);
        _amount = _idReceiver.gemIncoming;
        
        if (global.playersManager.someone_has_token_type(UnknownEnum.Value_5))
        {
            var _whoHasForeverKing = global.playersManager.who_has_token_type(UnknownEnum.Value_5);
            
            if (_whoHasForeverKing != arg8)
            {
                var _foreverKing = global.playersManager.get_characters(_whoHasForeverKing);
                var _xToKing = _foreverKing.xUi + global.uiPos.gemInUi.x;
                var _yToKing = _foreverKing.yUi + global.uiPos.gemInUi.y;
                var _foreverKingAmount = round((_amount * global.effect.foreverKing.amount[0]) / 100);
                
                if (_foreverKingAmount >= 1)
                    g_exchange_gem(arg0, arg1, _xToKing, _yToKing, _foreverKingAmount, UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, _whoHasForeverKing);
            }
        }
        
        _idReceiver.reset_gem_fight_var();
    }
    else if (arg7 == UnknownEnum.Value_1)
    {
        _idReceiver = global.playersManager.get_characters(arg8);
        _xTo = global.uiPos.gemSecured[arg8].x;
        _yTo = global.uiPos.gemSecured[arg8].y;
        _idReceiver.gemSecureIncoming = arg4;
        execute_effect(_idReceiver, UnknownEnum.Value_32);
        _amount = _idReceiver.gemSecureIncoming;
    }
    else
    {
        _idReceiver = -1;
    }
    
    var _newExchange = 
    {
        xOrigin: _xOrigin,
        yOrigin: _yOrigin,
        xTo: _xTo,
        yTo: _yTo,
        idReceiver: _idReceiver,
        idSender: _idSender,
        theAmount: round(_amount),
        typeReceiver: arg7
    };
    
    if (_newExchange.theAmount > 0)
    {
        if (_idReceiver == -1)
            global.gemManager.new_lose(_newExchange);
        else
            global.gemManager.new_exchange(_newExchange);
    }
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_5 = 5,
    Value_31 = 31,
    Value_32
}
