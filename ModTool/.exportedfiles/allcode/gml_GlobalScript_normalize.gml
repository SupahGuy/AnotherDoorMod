function normalize(arg0, arg1, arg2)
{
    if ((arg2 - arg1) == 0)
        return 0;
    
    var _numberNormalized = (arg0 - arg1) / (arg2 - arg1);
    return _numberNormalized;
}
