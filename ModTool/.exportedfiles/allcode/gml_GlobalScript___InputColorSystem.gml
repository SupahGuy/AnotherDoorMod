__InputColorSystem();

function __InputColorSystem()
{
    static _system = undefined;
    
    if (_system != undefined)
        return _system;
    
    _system = {};
    
    with (_system)
    {
        __playerArray = array_create_ext(4, function(arg0)
        {
            return new __InputColorClassPlayer(arg0);
        });
        InputPlugInDefine("InputTeam.GamepadColor", "Input Team", "1.0", "10.0", function()
        {
            InputPlugInRegisterCallback(UnknownEnum.Value_4, undefined, function(arg0, arg1, arg2)
            {
                with (__playerArray[arg0])
                    __SetColor(__color);
            });
            InputPlugInRegisterCallback(UnknownEnum.Value_9, undefined, function()
            {
                var _i = 0;
                
                repeat (array_length(4))
                {
                    InputColorReset(_i);
                    _i++;
                }
            });
        });
    }
    
    return _system;
}

enum UnknownEnum
{
    Value_4 = 4,
    Value_9 = 9
}
