function g_distribute(arg0, arg1)
{
    var base = floor(arg0 / arg1);
    var remainder = arg0 % arg1;
    var result = [];
    
    for (var i = 0; i < arg1; i++)
        result[i] = base + ((i < remainder) ? 1 : 0);
    
    return result;
}
