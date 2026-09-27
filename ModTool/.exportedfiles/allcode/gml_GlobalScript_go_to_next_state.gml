function g_go_to_room(arg0)
{
    if (global.networkingManager.pendingStateMachine != 0 || !global.networkingManager.canSendReady)
        exit;
    
    if (global.isClient)
    {
        global.networkingManager.send_ready();
        global.networkingManager.step_finished();
    }
    else if (global.networkingManager.check_client_turn() || !global.networkingManager.isNetworkGame)
    {
        global.networkingManager.send_ready();
        global.networkingManager.go_to_room(arg0);
        g_apply_go_to_room(arg0);
    }
}

function g_apply_go_to_room(arg0)
{
    global.networkingManager.turnId++;
    room_goto(asset_get_index(arg0));
    global.networkingManager.pendingStateMachine++;
}

function g_go_to_step(arg0, arg1, arg2 = -1, arg3 = -1)
{
    if (global.networkingManager.pendingStateMachine != 0 || !global.networkingManager.canSendReady)
        exit;
    
    if (global.isClient)
    {
        global.networkingManager.send_ready();
        global.networkingManager.step_finished();
    }
    else if (global.networkingManager.check_client_turn() || !global.networkingManager.isNetworkGame)
    {
        global.networkingManager.send_ready();
        global.networkingManager.go_to_step(arg0, arg1, arg2, arg3);
        g_apply_go_to_step(arg0, arg1, arg2, arg3);
    }
}

function g_apply_go_to_step(arg0, arg1, arg2, arg3)
{
    global.networkingManager.turnId++;
    var _theId;
    
    switch (arg1)
    {
        case UnknownEnum.Value_0:
        default:
            _theId = global.loopManager;
            break;
        
        case UnknownEnum.Value_1:
            _theId = global.fightManager;
            break;
        
        case UnknownEnum.Value_3:
            _theId = global.fightManager.encounter;
            break;
        
        case UnknownEnum.Value_2:
            _theId = instance_find(oIntro, 0);
            break;
    }
    
    if (arg0 != _theId.state)
    {
        _theId.stateNext = arg0;
        global.networkingManager.pendingStateMachine++;
    }
    
    if (arg3 != -1)
    {
        switch (arg3)
        {
            case UnknownEnum.Value_0:
            default:
                _theId = global.loopManager;
                break;
            
            case UnknownEnum.Value_1:
                _theId = global.fightManager;
                break;
            
            case UnknownEnum.Value_3:
                _theId = global.fightManager.encounter;
                break;
            
            case UnknownEnum.Value_2:
                _theId = instance_find(oIntro, 0);
                break;
        }
        
        _theId.state = arg2;
        _theId.statePrev = arg2;
        _theId.stateNext = arg2;
    }
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3
}
