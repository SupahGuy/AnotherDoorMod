function __InputGamepadIdentifySwitchType(arg0, arg1 = gamepad_get_description(arg0))
{
    if (arg1 == "Joy-Con")
    {
        __InputTrace("Warning! Using stop-gap identification for bad description \"Joy-Con\"");
        var _left = switch_controller_joycon_left_connected(arg0);
        var _right = switch_controller_joycon_right_connected(arg0);
        
        if (_left)
        {
            if (_right)
                return 5;
            else
                return 6;
        }
        else if (_right)
        {
            return 7;
        }
        else
        {
            __InputTrace("Warning! Invalid left/right Joy-Con state, falling back on handheld");
            return 5;
        }
    }
    else if (arg1 == "Joy-Con (L)")
    {
        return 6;
    }
    else if (arg1 == "Joy-Con (R)")
    {
        return 7;
    }
    
    return 5;
}
