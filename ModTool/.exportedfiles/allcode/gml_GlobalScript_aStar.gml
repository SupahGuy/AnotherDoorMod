function aStar(arg0, arg1, arg2, arg3, arg4, arg5 = false)
{
    var _startNode = new Node(arg0, arg1, 0, 0, 0, 1, 0);
    var _heuristic = findHeuristic(arg0, arg1, arg2, arg3, undefined, arg5);
    _startNode.h = _heuristic;
    _startNode.g = 0;
    _startNode.f = _heuristic;
    _openList = [];
    _openListLength = 0;
    array_push(_openList, _startNode);
    _openListLength++;
    _closeList = [];
    _currentNode = _startNode;
    var _direction;
    
    if (arg5 == true)
        _direction = [[0, 1], [-1, 0], [0, -1], [1, 0], [1, 1], [-1, -1], [1, -1], [-1, 1]];
    else
        _direction = [[1, 0], [0, -1], [-1, 0], [0, 1]];
    
    var _directionLength = array_length(_direction);
    
    while (_openListLength)
    {
        var _currentNodeId = 0;
        _currentNode = _openList[_currentNodeId];
        
        for (var k = 0; k < _openListLength; k++)
        {
            if (_openList[k].f < _currentNode.f || (_openList[k].f == _currentNode.f && _openList[k].h < _currentNode.h) || (_openList[k].f == _currentNode.f && _openList[k].h == _currentNode.h && _openList[k].g < _currentNode.g))
            {
                _currentNodeId = k;
                _currentNode = _openList[_currentNodeId];
            }
        }
        
        if (((_currentNode.x + _currentNode.y) % 1) == 0)
            _direction = array_reverse(_direction);
        
        array_delete(_openList, _currentNodeId, 1);
        _openListLength--;
        array_push(_closeList, _currentNode);
        
        for (var l = 0; l < _directionLength; l++)
        {
            var _isFinished = checkNeighbor(_direction[l][0], _direction[l][1], arg2, arg3, arg4, arg5);
            
            if (_isFinished == 1)
                return retrievePath(arg2, arg3);
        }
    }
    
    return -1;
}

function retrievePath(arg0, arg1)
{
    var _finished = false;
    var _lastPath = 
    {
        x: arg0,
        y: arg1
    };
    var _arrayToReturn = [];
    array_push(_arrayToReturn, [arg0, arg1]);
    
    while (_finished == false)
    {
        var _counter = findIndexStruct(_closeList, _lastPath);
        
        if (_closeList[_counter].theParent == 0)
        {
            _finished = true;
            return _arrayToReturn;
        }
        else
        {
            array_push(_arrayToReturn, _closeList[_counter].theParent);
        }
        
        _lastPath = 
        {
            x: _closeList[_counter].theParent[0],
            y: _closeList[_counter].theParent[1]
        };
    }
    
    return -1;
}

function findIndexStruct(arg0, arg1)
{
    var _array = arg0;
    var _arrayLength = array_length(_array);
    var _x = arg1.x;
    var _y = arg1.y;
    
    for (var _i = 0; _i < _arrayLength; _i++)
    {
        if (_array[_i].x == _x)
        {
            if (_array[_i].y == _y)
                return _i;
        }
    }
    
    return -1;
}

function checkNeighbor(arg0, arg1, arg2, arg3, arg4, arg5)
{
    if (((_currentNode.x + arg0) >= 0 && (_currentNode.x + arg0) < global.gridWidth) && ((_currentNode.y + arg1) >= 0 && (_currentNode.y + arg1) < global.gridHeight))
    {
        var _weight = getWeight(_currentNode.x + arg0, _currentNode.y + arg1, arg4);
        var _neighbor = new Node(_currentNode.x + arg0, _currentNode.y + arg1, infinity, 0, 0, _weight, [_currentNode.x, _currentNode.y]);
        
        if (arg2 == _neighbor.x && arg3 == _neighbor.y)
        {
            array_push(_closeList, _neighbor);
            return 1;
        }
        
        if (_neighbor.weight != 0)
        {
            var _diagReachable = true;
            
            if ((arg0 == 1 || arg0 == -1) && (arg1 == 1 || arg1 == -1))
            {
                var _diagAWeight = getWeight(_currentNode.x + arg0, _currentNode.y, arg4);
                var _diagBWeight = getWeight(_currentNode.x, _currentNode.y + arg1, arg4);
                
                if (_diagAWeight == -1 && _diagBWeight == -1)
                    _diagReachable = false;
            }
            
            if (_diagReachable == true)
            {
                var _isClose = findIndexStruct(_closeList, _neighbor);
                
                if (_isClose == -1)
                {
                    _neighbor.h = findHeuristic(_neighbor.x, _neighbor.y, arg2, arg3, undefined, arg5);
                    
                    if ((arg0 == 1 || arg0 == -1) && (arg1 == 1 || arg1 == -1))
                        _neighbor.weight *= 1.414;
                    
                    _neighbor.g = _currentNode.g + _neighbor.weight;
                    _neighbor.f = _neighbor.h + _neighbor.g;
                    var isOpen = findIndexStruct(_openList, _neighbor);
                    
                    if (isOpen == -1)
                    {
                        array_push(_openList, _neighbor);
                        _openListLength++;
                    }
                    else if (_neighbor.g < _openList[isOpen].g)
                    {
                        _openList[isOpen].g = _neighbor.g;
                        _openList[isOpen].theParent = _neighbor.theParent;
                    }
                }
            }
        }
    }
    
    return 0;
}

function findHeuristic(arg0, arg1, arg2, arg3, arg4 = 1, arg5 = false)
{
    if (arg5 == true)
    {
        var _dMax = max(abs(arg0 - arg2), abs(arg1 - arg3));
        var _dMin = min(abs(arg0 - arg2), abs(arg1 - arg3));
        var _weight = arg4;
        var _diagWeigt = 1.414 * _weight;
        var _heuristic = (_diagWeigt * _dMin) + (_weight * (_dMax - _dMin));
        return _heuristic;
    }
    else
    {
        var _dx = abs(arg0 - arg2);
        var _dy = abs(arg1 - arg3);
        return 1 * (_dx + _dy);
    }
}

function Node(arg0, arg1, arg2, arg3, arg4, arg5, arg6) constructor
{
    x = arg0;
    y = arg1;
    f = arg2;
    g = arg3;
    h = arg4;
    weight = arg5;
    theParent = arg6;
}

function getWeight(arg0, arg1, arg2)
{
    var _weight = 1;
    
    if ((arg0 >= 0 && arg0 < global.gridWidth) && (arg1 >= 0 && arg1 < global.gridHeight))
    {
        var _box = arg2[arg0][arg1];
        
        if (is_struct(_box))
        {
            if (variable_struct_exists(_box, "weight"))
                _weight = _box.weight;
        }
        
        return _weight;
    }
    else
    {
        return -1;
    }
}
