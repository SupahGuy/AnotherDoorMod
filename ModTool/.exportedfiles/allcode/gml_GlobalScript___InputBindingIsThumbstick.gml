function __InputBindingIsThumbstick(arg0)
{
    if (arg0 == undefined)
        return false;
    
    arg0 = abs(arg0);
    return arg0 == 32785 || arg0 == 32785 || arg0 == -32786 || arg0 == 32786;
}
