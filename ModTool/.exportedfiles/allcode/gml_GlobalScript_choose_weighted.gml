function choose_weighted(arg0, arg1 = -1, arg2 = -1)
{
    var n = 0;
    
    for (var i = 1; i < array_length(arg0); i += 2)
    {
        if (arg0[i] <= 0)
            continue;
        
        n += arg0[i];
    }
    
    var _chance;
    
    if (arg1 == -1)
    {
        if (arg2 == -1)
            _chance = random(n);
        else
            _chance = minstd_float(global.rng, n);
    }
    else
    {
        var _chanceCalculated = map_value(arg1, 0, 100, 0, n);
        _chance = _chanceCalculated;
    }
    
    for (var i = 1; i < array_length(arg0); i += 2)
    {
        if (arg0[i] <= 0)
            continue;
        
        _chance -= arg0[i];
        
        if (_chance < 0)
        {
            return 
            {
                elem: arg0[i - 1],
                weight: arg0[i]
            };
        }
    }
    
    return 
    {
        elem: arg0[0],
        weight: arg0[1]
    };
}

function get_percentage_weighted(arg0)
{
    var _n = 0;
    
    for (var i = 1; i < array_length(arg0); i += 2)
    {
        if (arg0[i] <= 0)
            continue;
        
        _n += arg0[i];
    }
    
    var _result = [];
    
    for (var i = 0; i < array_length(arg0); i += 2)
    {
        var _data = 
        {
            name: arg0[i].className,
            percentage: (arg0[i + 1] / _n) * 100
        };
        array_push(_result, _data);
    }
    
    return _result;
}

function choose_rng()
{
    return argument[minstd_int(global.rng, argument_count - 1)];
}
