function getCoordinatesRotatedPoint(arg0, arg1, arg2, arg3, arg4)
{
    var _xO = arg2 - arg0;
    var _yO = arg3 - arg1;
    var _cosTheta = dcos(arg4);
    var _sinTheta = dsin(arg4);
    var _x = (_xO * _cosTheta) - (_yO * _sinTheta);
    var _y = (_xO * _sinTheta) + (_yO * _cosTheta);
    _x += arg2;
    _y += arg3;
    return [_x, _y];
}
