function fibonacci(arg0)
{
    var _a = 1;
    var _b = 1;
    
    for (var _i = 3; _i <= arg0; _i++)
    {
        var _c = _a + _b;
        _a = _b;
        _b = _c;
    }
    
    return _b;
}
