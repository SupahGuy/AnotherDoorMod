function InputVerbGroupsGet(arg0)
{
    static _verbGroupLookupArray = __InputVerbGroupSystem().__verbGroupLookupArray;
    static _groupArray = [];
    
    array_resize(_groupArray, 0);
    var _bitmask = _verbGroupLookupArray[arg0];
    var _i = 0;
    
    repeat (50)
    {
        if (_bitmask & (1 << _i))
            array_push(_groupArray, _i);
        
        _i++;
    }
    
    return _groupArray;
}
