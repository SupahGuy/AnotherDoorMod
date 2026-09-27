with (oDialogue)
    check_if_destroyable();

instance_destroy(btnWannaLeave);

if (global.isHost)
{
    var _p = global.playersCount - 1;
    
    while (_p >= 0)
    {
        if (!global.playersManager.is_connected(_p))
            global.playersManager.remove(_p);
        
        _p--;
    }
}
