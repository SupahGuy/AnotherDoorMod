__InputVerbGroupSystem();

function __InputVerbGroupSystem()
{
    static _system = undefined;
    
    if (_system != undefined)
        return _system;
    
    _system = {};
    
    with (_system)
    {
        var _allVerbArray = InputPlugInGetAllVerbs();
        array_sort(_allVerbArray, false);
        __verbGroupLookupArray = array_create(_allVerbArray[0] + 1, 0);
        __verbGroupInactiveArray = array_create(4, 0);
        __InputVerbGroupsConfig();
        InputPlugInDefine("InputTeam.VerbGroups", "Input Team", "1.0", "10.0", function()
        {
            InputPlugInRegisterCallback(UnknownEnum.Value_5, undefined, function(arg0)
            {
                static _verbGroupLookupArray = __InputVerbGroupSystem().__verbGroupLookupArray;
                static _verbGroupInactiveArray = __InputVerbGroupSystem().__verbGroupInactiveArray;
                
                var _inactiveBitmask = _verbGroupInactiveArray[arg0];
                var _verbIndex = 0;
                
                repeat (array_length(_verbGroupLookupArray))
                {
                    var _verbBitmask = _verbGroupLookupArray[_verbIndex];
                    
                    if (_verbBitmask != 0 && (_verbBitmask & _inactiveBitmask) == _verbBitmask)
                        InputPlugInVerbSet(_verbIndex, 0, 0, arg0);
                    
                    _verbIndex++;
                }
            });
            InputPlugInRegisterCallback(UnknownEnum.Value_10, undefined, function(arg0, arg1, arg2, arg3, arg4, arg5)
            {
                static _verbGroupLookupArray = __InputVerbGroupSystem().__verbGroupLookupArray;
                
                var _sourceBitmask = _verbGroupLookupArray[arg3];
                
                if (_sourceBitmask == 0)
                    exit;
                
                var _i = array_length(arg0) - 1;
                
                repeat (array_length(arg0))
                {
                    var _foundBitmask = _verbGroupLookupArray[arg0[_i].verbIndex];
                    
                    if (_foundBitmask != 0)
                    {
                        if (!(_sourceBitmask & _foundBitmask))
                            array_delete(arg0, _i, 1);
                    }
                    
                    _i--;
                }
            });
        });
    }
    
    return _system;
}

enum UnknownEnum
{
    Value_5 = 5,
    Value_10 = 10
}
