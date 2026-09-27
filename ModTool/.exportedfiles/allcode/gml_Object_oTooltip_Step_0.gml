if (belongTo != -1 && !instance_exists(belongTo))
    instance_destroy();

if (timerShow.is_running() || timerShow.is_finished())
{
    var _dur = timerShow.get_cur_length_normalize();
    image_alpha = _dur;
    y = map_value(_dur, 0, 1, yInit, yTo);
    
    if (timerShow.is_finished())
    {
        timerShow.stop();
        timerShow.reset();
    }
}

wiggle.step();

if (isDialbox)
{
    if (timerClose.is_finished())
        instance_destroy();
}
