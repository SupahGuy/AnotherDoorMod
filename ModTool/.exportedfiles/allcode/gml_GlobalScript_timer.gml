function myTimer(arg0, arg1 = 1, arg2 = 0, arg3 = 1, arg4 = "linear", arg5 = 0, arg6 = undefined, arg7 = undefined, arg8 = undefined) constructor
{
    if (arg6 != undefined)
    {
        frameSpeed = sprite_get_speed(arg6);
        frameMax = sprite_get_number(arg6);
        sprite = arg6;
    }
    else
    {
        frameSpeed = 0;
        frameMax = 0;
        sprite = undefined;
    }
    
    theParentId = arg0;
    maxDelay = arg2 / global.debugSpeedMult;
    maxDelay *= game_get_speed(gamespeed_fps);
    maxDelay = round(maxDelay);
    hasDelay = (maxDelay > 0) ? true : false;
    callback = arg7;
    argsCallback = is_array(arg8) ? arg8 : [arg8];
    
    if (sprite != undefined)
        maxLength = (arg1 / frameSpeed) * frameMax;
    else
        maxLength = arg1 / global.debugSpeedMult;
    
    maxLength = (maxLength == 0) ? 0.001 : maxLength;
    maxLength *= game_get_speed(gamespeed_fps);
    maxLength = round(maxLength);
    initialLength = maxLength;
    iterationCurrent = 0;
    iterationMax = arg3;
    itSpeed = arg5;
    curveType = arg4;
    curveChan = animcurve_get_channel(animCurve, curveType);
    curveVal = animcurve_channel_evaluate(curveChan, 0);
    playDirection = 1;
    mySelf = self;
    
    clean_up_variables = function()
    {
        time_source_destroy(mainTimer);
        
        if (hasDelay)
            time_source_destroy(delayTimer);
    };
    
    _main_end_method = method(
    {
        mySelf: mySelf,
        argsCallback: argsCallback,
        callback: callback
    }, function()
    {
        mySelf.iterationCurrent++;
        
        if (callback != undefined)
            callback(argsCallback);
        
        if (mySelf.itSpeed != 0)
        {
            var _maxLength;
            
            if (mySelf.itSpeed == 1)
                _maxLength = lerp(mySelf.maxLength, 0.03, 0.05);
            else if (mySelf.itSpeed == -1)
                _maxLength = lerp(mySelf.maxLength, mySelf.initialLength * 3, 0.04);
            
            mySelf.change_param(_maxLength);
            mySelf.run();
        }
    });
    
    _delay_end_method = function()
    {
        time_source_start(mainTimer);
    };
    
    mainTimer = time_source_create(time_source_game, maxLength, time_source_units_frames, _main_end_method, [], iterationMax, time_source_expire_after);
    
    if (hasDelay)
        delayTimer = time_source_create(time_source_game, maxDelay, time_source_units_frames, _delay_end_method, [], 1);
    
    if (theParentId != undefined)
    {
        with (theParentId)
            add_to_clean_up(other, UnknownEnum.Value_0);
    }
    
    get_direction = function(arg0)
    {
        return playDirection;
    };
    
    set_direction = function(arg0)
    {
        playDirection = arg0;
    };
    
    get_cur_it = function()
    {
        return iterationCurrent;
    };
    
    get_remaining_it = function()
    {
        return iterationMax - iterationCurrent;
    };
    
    is_running = function()
    {
        var _stateDelay;
        
        if (hasDelay)
            _stateDelay = time_source_get_state(delayTimer);
        else
            _stateDelay = 0;
        
        var _stateMain = time_source_get_state(mainTimer);
        
        if (_stateDelay == 1 || _stateMain == 1)
            return true;
        else
            return false;
    };
    
    is_delay_running = function()
    {
        if (hasDelay)
            return (time_source_get_state(delayTimer) == time_source_state_active) ? true : false;
        else
            return false;
    };
    
    pause = function()
    {
        time_source_pause(mainTimer);
        
        if (hasDelay)
            time_source_pause(delayTimer);
    };
    
    is_paused = function()
    {
        if (hasDelay)
        {
            var _stateMain = time_source_get_state(mainTimer);
            var _stateDelay = time_source_get_state(delayTimer);
            
            if (_stateDelay == 2 || _stateMain == 2)
                return true;
            else
                return false;
        }
        else
        {
            var _stateMain = time_source_get_state(mainTimer);
            
            if (_stateMain == 2)
                return true;
            else
                return false;
        }
    };
    
    resume = function()
    {
        time_source_resume(mainTimer);
        
        if (hasDelay)
            time_source_resume(delayTimer);
    };
    
    stop = function()
    {
        time_source_stop(mainTimer);
        
        if (hasDelay)
            time_source_stop(delayTimer);
    };
    
    reset = function()
    {
        time_source_reset(mainTimer);
        
        if (hasDelay)
            time_source_reset(delayTimer);
        
        iterationCurrent = 0;
        maxLength = initialLength;
        time_source_reconfigure(mainTimer, maxLength, time_source_units_frames, _main_end_method, [], iterationMax);
    };
    
    change_param = function(arg0 = -1, arg1 = 0, arg2 = -1)
    {
        var _maxLength = (arg0 == -1) ? maxLength : arg0;
        
        if (arg0 != -1)
        {
            _maxLength *= game_get_speed(gamespeed_fps);
            _maxLength = round(_maxLength);
        }
        
        initialLength = _maxLength;
        maxLength = initialLength;
        maxDelay = (arg1 == 0) ? maxDelay : arg1;
        hasDelay = (maxDelay > 0) ? true : false;
        iterationMax = (arg2 == -1) ? iterationMax : arg2;
        time_source_reconfigure(mainTimer, maxLength, time_source_units_frames, _main_end_method, [], iterationMax);
        
        if (hasDelay)
            time_source_reconfigure(delayTimer, maxDelay, time_source_units_frames, _delay_end_method, [], 1);
    };
    
    run = function()
    {
        if (!hasDelay)
        {
            time_source_start(mainTimer);
        }
        else
        {
            time_source_stop(mainTimer);
            time_source_start(delayTimer);
        }
    };
    
    get_cur_speed = function()
    {
        return maxLength;
    };
    
    get_cur_length = function()
    {
        if (playDirection == 1)
            return time_source_get_period(mainTimer) - time_source_get_time_remaining(mainTimer);
        else
            return time_source_get_time_remaining(mainTimer);
    };
    
    get_cur_length_delay = function()
    {
        if (hasDelay)
            return time_source_get_period(delayTimer) - time_source_get_time_remaining(delayTimer);
        else
            return -1;
    };
    
    get_cur_length_normalize = function()
    {
        if (curveType == "linear")
        {
            if (playDirection == 1)
                return get_cur_length() / maxLength;
            else
                return abs((get_cur_length() / maxLength) - 1);
        }
        else if (playDirection == 1)
        {
            curveVal = animcurve_channel_evaluate(curveChan, get_cur_length() / maxLength);
            return curveVal;
        }
        else
        {
            curveVal = animcurve_channel_evaluate(curveChan, get_cur_length() / maxLength);
            curveVal = abs(curveVal - 1);
            return curveVal;
        }
    };
    
    is_finished = function()
    {
        if (hasDelay)
        {
            if (time_source_get_reps_remaining(mainTimer) == 0 && time_source_get_reps_remaining(delayTimer) == 0)
                return true;
            else
                return false;
        }
        else if (time_source_get_reps_remaining(mainTimer) == 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    };
    
    is_last_iteration = function()
    {
        return iterationCurrent == iterationMax;
    };
    
    get_current_frame = function()
    {
        if (is_finished())
        {
            return (playDirection == 1) ? (frameMax - 1) : 0;
        }
        else
        {
            var _timePerFrame = maxLength / frameMax;
            
            if (playDirection == 1)
            {
                var _currentFrame = get_cur_length() / _timePerFrame;
                return min(floor(_currentFrame), frameMax - 1);
            }
            else
            {
                var _currentFrame = get_cur_length() / _timePerFrame;
                return max(0, ceil(_currentFrame) - 1);
            }
        }
    };
    
    get_sprite = function()
    {
        return sprite;
    };
}

enum UnknownEnum
{
    Value_0
}
