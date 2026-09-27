function WiggleEffect(arg0, arg1 = UnknownEnum.Value_0) constructor
{
    offsetAngleType = arg1;
    offsetAngleMax = 0;
    offsetAngleMin = 0;
    
    if (offsetAngleType == UnknownEnum.Value_0)
    {
        offsetAngleMax = 6;
        offsetAngleMin = 3;
    }
    else if (offsetAngleType == UnknownEnum.Value_1)
    {
        offsetAngleMax = 20;
        offsetAngleMin = 16;
    }
    
    offsetWiggleAngleMax = random_range(offsetAngleMin, offsetAngleMax) * choose(1, -1);
    offsetWiggleAngle = 0;
    animWiggle = new myTimer(arg0, 0.2, undefined, undefined, "curve1");
    
    run = function()
    {
        animWiggle.reset();
        animWiggle.run();
    };
    
    step = function()
    {
        if (animWiggle.is_running() || animWiggle.is_finished())
            offsetWiggleAngle = map_value(animWiggle.get_cur_length_normalize(), 0, 1, 0, offsetWiggleAngleMax);
        
        if (animWiggle.is_finished())
        {
            animWiggle.reset();
            offsetWiggleAngleMax = random_range(offsetAngleMin, offsetAngleMax) * choose(1, -1);
        }
    };
    
    get_angle = function()
    {
        return offsetWiggleAngle;
    };
}

enum UnknownEnum
{
    Value_0,
    Value_1
}
