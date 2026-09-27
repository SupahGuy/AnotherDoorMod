function get_coordinates_around_point(arg0, arg1, arg2, arg3, arg4 = 0, arg5 = "uniform-circle")
{
    var _x, _y;
    
    switch (arg5)
    {
        case "section-equal-circle":
            var _angle = degtorad(arg4);
            _x = arg0 + (cos(_angle) * arg2);
            _y = arg1 + (sin(_angle) * arg3);
            break;
        
        case "uniform-circle":
            var _angle = random(2 * pi);
            var _randomize = sqrt(random(1));
            _x = arg0 + (cos(_angle) * (_randomize * arg2));
            _y = arg1 + (sin(_angle) * (_randomize * arg3));
            break;
        
        case "uniform-square":
            _x = arg0 + (random_range(-1, 1) * arg2);
            _y = arg1 + (random_range(-1, 1) * arg3);
            break;
        
        case "edge-1-circle":
            var _angle = random(2 * pi);
            var _randomize = 1 - random(random(1));
            _x = arg0 + (cos(_angle) * (_randomize * arg2));
            _y = arg1 + (sin(_angle) * (_randomize * arg3));
            break;
        
        case "edge-2-circle":
            var _angle = random(2 * pi);
            var _randomize = 1 - random(random(random(1)));
            _x = arg0 + (cos(_angle) * (_randomize * arg2));
            _y = arg1 + (sin(_angle) * (_randomize * arg3));
            break;
        
        case "edge-3-circle":
            var _angle = random(2 * pi);
            var _randomize = 1 - random(random(random(random(1))));
            _x = arg0 + (cos(_angle) * (_randomize * arg2));
            _y = arg1 + (sin(_angle) * (_randomize * arg3));
            break;
    }
    
    return 
    {
        x: _x,
        y: _y
    };
}
