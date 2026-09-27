function InputDirection(arg0, arg1, arg2 = 0)
{
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg2))
        __InputError("Player index must be a number (typeof = \"", typeof(arg2), "\")");
    
    if (arg2 >= 4)
        __InputError("Player index ", arg2, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg2 < 0)
        __InputError("Player index ", arg2, " less than zero");
    
    with (_playerArray[arg2])
    {
        if (!is_numeric(arg1))
            __InputError("Cluster index must be a number (typeof = \"", typeof(arg1), "\")");
        
        if (array_length(__clusterXArray) == 0)
            __InputError("Cluster index ", arg1, " too large. No clusters are defined");
        
        if (arg1 >= array_length(__clusterXArray))
            __InputError("Cluster index ", arg1, " too large. Must be within range of defined clusters (", array_length(__clusterXArray), ")");
        
        if (arg1 < 0)
            __InputError("Cluster index ", arg1, " less than zero");
        
        var _x = __clusterXArray[arg1];
        var _y = __clusterYArray[arg1];
        
        if (_x == 0 && _y == 0)
            return arg0;
        
        return point_direction(0, 0, _x, _y);
    }
}
