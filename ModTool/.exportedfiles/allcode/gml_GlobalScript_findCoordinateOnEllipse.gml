function findCoordinateOnEllipse(arg0, arg1, arg2, arg3, arg4)
{
    var _tan = tan(degtorad(arg4));
    var _thePointX = (arg2 * arg3) / sqrt(sqr(arg3) + (sqr(arg2) * sqr(_tan)));
    var _thePointY = (arg2 * arg3) / sqrt(sqr(arg2) + (sqr(arg3) / sqr(_tan)));
    
    if (0 <= arg4 && arg4 < 90)
    {
        _thePointX = abs(_thePointX);
        _thePointY = -abs(_thePointY);
    }
    else if (90 <= arg4 && arg4 < 180)
    {
        _thePointX = -abs(_thePointX);
        _thePointY = -abs(_thePointY);
    }
    else if (180 <= arg4 && arg4 < 270)
    {
        _thePointX = -abs(_thePointX);
        _thePointY = abs(_thePointY);
    }
    else
    {
        _thePointX = abs(_thePointX);
        _thePointY = abs(_thePointY);
    }
    
    return [_thePointX + arg0, _thePointY + arg1];
}
