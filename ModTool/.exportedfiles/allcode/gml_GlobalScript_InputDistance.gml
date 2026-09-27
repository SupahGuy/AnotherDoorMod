function InputDistance(arg0, arg1 = 0)
{
    static _playerArray = __InputSystemPlayerArray();
    
    if (!is_numeric(arg1))
        __InputError("Player index must be a number (typeof = \"", typeof(arg1), "\")");
    
    if (arg1 >= 4)
        __InputError("Player index ", arg1, " too large. Must be less than config `INPUT_MAX_PLAYERS` (", 4, ")");
    
    if (arg1 < 0)
        __InputError("Player index ", arg1, " less than zero");
    
    with (_playerArray[arg1])
    {
        if (!is_numeric(arg0))
            __InputError("Cluster index must be a number (typeof = \"", typeof(arg0), "\")");
        
        if (array_length(__clusterXArray) == 0)
            __InputError("Cluster index ", arg0, " too large. No clusters are defined");
        
        if (arg0 >= array_length(__clusterXArray))
            __InputError("Cluster index ", arg0, " too large. Must be within range of defined clusters (", array_length(__clusterXArray), ")");
        
        if (arg0 < 0)
            __InputError("Cluster index ", arg0, " less than zero");
        
        return point_distance(0, 0, __clusterXArray[arg0], __clusterYArray[arg0]);
    }
}
