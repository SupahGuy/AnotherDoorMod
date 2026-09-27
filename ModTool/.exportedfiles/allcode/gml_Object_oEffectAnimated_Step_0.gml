if (state == UnknownEnum.Value_0)
{
    if (statePrev != state)
        timerAppear.run();
    
    if ((timerAppear.is_running() || timerAppear.is_finished()) && !timerAppear.is_delay_running())
    {
        var _norm = timerAppear.get_cur_length_normalize();
        image_alpha = 1;
        x = map_value(_norm, 0, 1, xInit, xTo);
        y = (power(1 - _norm, 2) * yInit) + (2 * (1 - _norm) * _norm * y3) + (power(_norm, 2) * yTo);
    }
    
    if (timerAppear.is_finished())
    {
        timerAppear.reset();
        stateNext = UnknownEnum.Value_1;
        global.waitingList.remove(id);
        
        with (linkedTo)
        {
            firstCreationVisual = false;
            stackVisual++;
            var _char = global.playersManager.get_characters(number);
            
            if (_char != -4)
            {
                execute_effect(_char, UnknownEnum.Value_35, id, theStruct, UnknownEnum.Value_0);
                update_txt();
                
                if (theStruct.structName == "hallucinogenicVision")
                {
                    _char.spriteProfile = _char.spriteProfileMushroom;
                    _char.spriteProfileHpHidden = _char.spriteProfileHpHiddenMushroom;
                    _char.spriteProfileBoxGem = _char.spriteProfileBoxGemMushroom;
                }
            }
        }
    }
}
else if (state == UnknownEnum.Value_1)
{
    if (statePrev != state)
        animationExecute.run();
    
    if (animationExecute.is_running() || animationExecute.is_finished())
    {
        executeScale = map_value(animationExecute.get_cur_length_normalize(), 0, 1, executeScaleInit, executeScaleMax);
        executeAlpha = 1 - animationExecute.get_cur_length_normalize();
    }
    
    if (animationExecute.is_finished())
    {
        animationExecute.reset();
        instance_destroy();
    }
}
else if (state == UnknownEnum.Value_2)
{
    if (statePrev != state)
    {
        timerDecrease.run();
        image_alpha = 1;
    }
    
    if (timerDecrease.is_running() && !timerDecrease.is_delay_running())
    {
        if (!delayActionPlayed)
        {
            delayActionPlayed = true;
            
            if (instance_exists(linkedTo))
            {
                linkedTo.stackVisual--;
                linkedTo.update_txt();
            }
        }
        
        var _norm = timerDecrease.get_cur_length_normalize();
        y = map_value(_norm, 0, 1, decreaseYInit, decreaseYTo);
        decreaseAlpha = 1 - _norm;
    }
    
    if (timerDecrease.is_finished())
    {
        with (linkedTo)
        {
            if (stackVisual <= 0)
            {
                var _char = global.playersManager.get_characters(number);
                
                if (_char != -4 && instance_exists(_char))
                {
                    execute_effect(_char, UnknownEnum.Value_36, id, theStruct, UnknownEnum.Value_0);
                    var _index = _char.effect_index(theStruct);
                    
                    if (_index != -1)
                        _char.delete_effect(undefined, true, _index);
                }
            }
        }
        
        global.waitingList.remove(id);
        instance_destroy();
    }
}

statePrev = state;
state = stateNext;

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_35 = 35,
    Value_36
}
