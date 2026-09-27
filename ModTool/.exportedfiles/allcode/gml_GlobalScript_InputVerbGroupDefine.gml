function InputVerbGroupDefine(arg0, arg1)
{
    static _verbGroupLookupArray = __InputVerbGroupSystem().__verbGroupLookupArray;
    
    if (arg0 < 0)
        InputPlugInError("Verb group index must be greater than 0");
    
    if (arg0 >= 50)
        InputPlugInError("Verb group index must be less than ", 50);
    
    var _i = 0;
    
    repeat (array_length(arg1))
    {
        _verbGroupLookupArray[arg1[_i]] |= 1 << arg0;
        _i++;
    }
}
