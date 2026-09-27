function find_nearest_obj(arg0, arg1)
{
    var n = -4;
    
    with (arg1)
    {
        var t = point_distance(x, y, other.x, other.y);
        
        if (t < arg0)
        {
            arg0 = t;
            n = id;
        }
    }
    
    return n;
}
