function InputVerbGroupGetVerbs(arg0)
{
    static _verbGroupLookupArray = __InputVerbGroupSystem().__verbGroupLookupArray;
    static _verbArray = [];
    
    array_resize(_verbArray, 0);
    var _bitmask = 1 << arg0;
    var _i = 0;
    
    repeat (array_length(_verbGroupLookupArray))
    {
        if (_bitmask & _verbGroupLookupArray[_i])
            array_push(_verbArray, _i);
        
        _i++;
    }
    
    return _verbArray;
}
