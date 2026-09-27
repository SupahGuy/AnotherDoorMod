function __InputCollect()
{
    static _once = (function()
    {
        static _system = __InputSystem();
        
        with (_system)
        {
            __InputTrace("Initializing ", array_length(__plugInArray), " plug-in(s)");
            __plugInsInitializeState = 1;
            var _i = 0;
            
            repeat (array_length(__plugInArray))
            {
                __plugInArray[_i].__Initialize();
                _i++;
            }
            
            __InputTrace("Plug-in initialization complete");
            __plugInsInitializeState = 2;
        }
    })();
    
    __InputPlugInExecuteCallbacks(UnknownEnum.Value_0);
    __InputPlugInExecuteCallbacks(UnknownEnum.Value_1);
}

enum UnknownEnum
{
    Value_0,
    Value_1
}
