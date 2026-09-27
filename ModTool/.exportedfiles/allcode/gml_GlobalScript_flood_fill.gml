function flood_fill(arg0, arg1, arg2 = 1, arg3 = 2, arg4)
{
    var _x = arg0;
    var _y = arg1;
    var _prevValue = arg2;
    var _newValue = arg3;
    var _array = arg4;
    
    if ((_x < 0 || _x >= array_length(_array) || _y < 0 || _y >= array_length(_array[0])) || _array[_x][_y] != _prevValue)
        return 0;
    
    _array[_x][_y] = arg3;
    flood_fill(_x - 1, _y, arg2, arg3, _array);
    flood_fill(_x + 1, _y, arg2, arg3, _array);
    flood_fill(_x, _y - 1, arg2, arg3, _array);
    flood_fill(_x, _y + 1, arg2, arg3, _array);
}
