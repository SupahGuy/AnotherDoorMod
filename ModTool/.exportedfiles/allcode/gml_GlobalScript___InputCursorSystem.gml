__InputCursorSystem();

function __InputCursorSystem()
{
    static _system = undefined;
    
    if (_system != undefined)
        return _system;
    
    _system = {};
    
    with (_system)
    {
        __playerArray = array_create_ext(4, function(arg0)
        {
            return new __InputCursorClassPlayer(arg0);
        });
        InputPlugInDefine("InputTeam.Cursor", "Input Team", "1.0", "10.0", function()
        {
            InputPlugInRegisterCallback(UnknownEnum.Value_1, -1, function(arg0)
            {
                var _i = 0;
                
                repeat (4)
                {
                    __playerArray[_i].__Update();
                    _i++;
                }
            });
        });
    }
    
    return _system;
}

enum UnknownEnum
{
    Value_1 = 1
}
