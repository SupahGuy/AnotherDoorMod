function squidShot(arg0, arg1, arg2, arg3, arg4, arg5)
{
    arg2 = degtorad(arg2);
    var posY = 0;
    
    if (cos(arg2) != 0 && arg1 != 0)
        posY = (-(arg5 / 2) * (power(arg0 - arg3, 2) / (power(arg1, 2) * power(cos(arg2), 2)))) + (tan(arg2) * (arg0 - arg3)) + arg4;
    else
        posY = 0;
    
    return posY;
}
