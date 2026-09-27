function __InputGamepadGUIDParse(arg0)
{
    static _result = {};
    
    _result.__vendor = "";
    _result.__product = "";
    
    if (arg0 == "00000000000000000000000000000000")
    {
        __InputTrace("Warning! GUID was empty");
        return _result;
    }
    
    if (string_copy(arg0, 13, 4) == "0000")
    {
        if (string_copy(arg0, 21, 4) != "0000")
        {
            __InputTrace("Warning! GUID \"", arg0, "\" does not fit expected pattern. VID+PID cannot be extracted");
            return _result;
        }
        
        if (string_copy(arg0, 1, 4) != "0300" && string_copy(arg0, 1, 4) != "0500")
            __InputTrace("Warning! GUID \"", arg0, "\" driver ID does not match expected (Found ", string_copy(arg0, 1, 4), ", expect either 0300 or 0500)");
        
        _result.__vendor = string_copy(arg0, 9, 4);
        _result.__product = string_copy(arg0, 17, 4);
    }
    
    return _result;
}
