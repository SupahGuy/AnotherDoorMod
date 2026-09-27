function __InputRestart()
{
    static _system = __InputSystem();
    
    with (_system)
        __restartTime = __time;
    
    var _i = 0;
    
    repeat (4)
    {
        InputVerbConsumeAll(_i);
        _i++;
    }
    
    __InputPlugInExecuteCallbacks(UnknownEnum.Value_9);
}

enum UnknownEnum
{
    Value_9 = 9
}
