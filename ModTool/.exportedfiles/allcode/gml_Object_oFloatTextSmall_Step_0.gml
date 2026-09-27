if (timerFloat.is_finished())
    instance_destroy();

if (timerFloat.is_running())
{
    var _length = timerFloat.get_cur_length_normalize();
    
    if (goingTop)
        y = yInit - (_length * 16);
    else
        y = yInit + (_length * 16);
}
