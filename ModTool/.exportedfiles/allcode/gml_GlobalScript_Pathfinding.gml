function set_path_to_objectives(arg0, arg1)
{
    var _objectives = variable_clone(arg1);
    var _xStart = arg0.x;
    var _yStart = arg0.y;
    global.grid.thePath = [];
    var _neareastPathIndex = undefined;
    
    while (array_length(_objectives) > 0)
    {
        var _neareastPathLength = 10000;
        var _neareastPath = undefined;
        _neareastPathIndex = 0;
        
        for (var _i = 0; _i < array_length(_objectives); _i++)
        {
            var _currentPath = aStar(_xStart, _yStart, _objectives[_i].x, _objectives[_i].y, global.grid.aStarGrid);
            
            if (is_array(_currentPath) && array_length(_currentPath) < _neareastPathLength)
            {
                _neareastPath = _currentPath;
                _neareastPathIndex = _i;
                _neareastPathLength = array_length(_neareastPath);
            }
        }
        
        if (_neareastPath != undefined)
        {
            array_delete(_objectives, _neareastPathIndex, 1);
            _xStart = _neareastPath[0][0];
            _yStart = _neareastPath[0][1];
            
            for (var _i = 0; _i < array_length(_neareastPath); _i++)
                array_push(global.grid.thePath, _neareastPath[_i]);
        }
        else
        {
            array_delete(_objectives, 0, array_length(_objectives));
        }
    }
    
    global.grid.thePath = array_reverse(global.grid.thePath);
    array_delete(global.grid.thePath, 0, 1);
}

function set_objectives_reached(arg0, arg1, arg2)
{
    var _theGrid = variable_clone(arg1);
    var _startingPoint = arg0;
    var _direction = [[1, 0], [-1, 0], [0, -1], [0, 1]];
    var _reached = -1;
    var _objectivesReach = [];
    var _objectives = arg2;
    
    if (array_length(arg2) != 0)
    {
        flood_fill(_startingPoint.x, _startingPoint.y, 1, 2, _theGrid);
        
        for (var _i = 0; _i < array_length(_objectives); _i++)
        {
            if (_theGrid[_objectives[_i].x][_objectives[_i].y] == 2)
            {
                array_push(_objectivesReach, _objectives[_i]);
                _reached = true;
            }
        }
        
        if (_reached)
            return _objectivesReach;
        else
            return _reached;
    }
    else
    {
        return -1;
    }
}
