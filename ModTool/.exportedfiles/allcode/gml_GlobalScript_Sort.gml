function jeton_sort(arg0)
{
    var _length = array_length(arg0);
    
    for (var _i = 1; _i < _length; _i++)
    {
        var _key = arg0[_i];
        var _j = _i - 1;
        
        while (_j >= 0 && ((arg0[_j].val * 1000) + arg0[_j].jetonEqual) < ((_key.val * 1000) + _key.jetonEqual))
        {
            arg0[_j + 1] = arg0[_j];
            _j = _j - 1;
        }
        
        arg0[_j + 1] = _key;
    }
}

function jeton_equality_swap(arg0)
{
    var _j = 0;
    var _length = array_length(arg0);
    var _indexSwap = [];
    
    for (var _i = 0; _i < (_length - 1); _i++)
    {
        _j = 0;
        
        while ((_i + _j + 1) < _length && arg0[_i + _j].val == arg0[_i + _j + 1].val)
            _j++;
        
        if (_j > 0)
        {
            for (var _k = 0; _k < (_j / 2); _k++)
                array_push(_indexSwap, arg0[_i + _k].playerId, arg0[(_i + _j) - _k].playerId);
            
            _i += _j;
        }
    }
    
    return _indexSwap;
}
