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

if (!global.pause)
{
    if (closeType == UnknownEnum.Value_2 && timerClose.is_finished())
    {
        instance_destroy();
    }
    else if (closeType == UnknownEnum.Value_1)
    {
        with (oCursor)
        {
            if (is_verb_active(UnknownEnum.Value_6, UnknownEnum.Value_1))
            {
                if (other.typist.get_state() != 1)
                    other.typist.skip();
                else
                    other.update_counter_dialogue(number, true, true);
            }
        }
    }
    
    if (callBackTextActivated == false && typist.get_state() == 1)
    {
        var _callBackTextEndLength = array_length(callBackTextEnd);
        
        if (_callBackTextEndLength > 0)
        {
            for (var _c = 0; _c < _callBackTextEndLength; _c++)
                callBackTextEnd[_c]();
        }
        
        callBackTextActivated = true;
    }
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_2,
    Value_6 = 6
}
