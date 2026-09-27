if (live_call())
    return global.live_result;

if (statePrev != state)
    global.networkingManager.state_switched();

if (state == UnknownEnum.Value_1)
{
    if (statePrev != state)
    {
        global.tvState.bios();
        
        for (var _p = 0; _p < global.playersCount; _p++)
            global.playersManager.apply_action(_p);
    }
    
    if (global.narratorTv.typist.get_state() == 1 && !(timerBios.is_running() || timerBios.is_finished()))
        timerBios.run();
    
    if (timerBios.is_finished())
        g_go_to_step(UnknownEnum.Value_2, UnknownEnum.Value_2);
}
else if (state == UnknownEnum.Value_2)
{
    if (statePrev != state)
    {
        global.tvState.calibration();
        instance_create_depth(room_width / 2, room_height - 32, 0, oDialogue, firstDialogueList[0]);
    }
    
    if (global.waitingList.is_waiting_list_empty())
        g_go_to_step(UnknownEnum.Value_4, UnknownEnum.Value_2);
}
else if (state == UnknownEnum.Value_4)
{
    if (statePrev != state)
    {
        bookTimer.run();
        
        with (oCursor)
            set_sprite(UnknownEnum.Value_1);
    }
    
    var _offsetY1 = 0;
    
    if (bookTimer.is_running() || bookTimer.is_finished())
    {
        var _length1 = bookTimer.get_cur_length_normalize();
        _offsetY1 = map_value(_length1, 0, 1, bookOffsetYMax, 0);
    }
    
    var _offsetY2 = 0;
    
    if (bookFinishedTimer.is_running() || bookFinishedTimer.is_finished())
    {
        var _length2 = bookFinishedTimer.get_cur_length_normalize();
        _offsetY2 = map_value(_length2, 0, 1, 0, bookOffsetYMax);
    }
    
    bookOffsetY = _offsetY1 + _offsetY2;
    
    with (oCursor)
    {
        if (is_verb_active(UnknownEnum.Value_6, UnknownEnum.Value_1))
        {
            for (var _p = 0; _p < get_size(other.bookPositionList); _p++)
            {
                if (point_in_rectangle(x, y, other.bookPositionList[_p][0], (other.bookPositionList[_p][1] + other.bookOffsetY) - 16, other.bookPositionList[_p][0] + 50, (other.bookPositionList[_p][1] + 76 + other.bookOffsetY) - 30))
                {
                    var _actionToApply = 0;
                    
                    switch (_p)
                    {
                        case 0:
                        default:
                            _actionToApply = UnknownEnum.Value_3;
                            break;
                        
                        case 1:
                            _actionToApply = UnknownEnum.Value_4;
                            break;
                        
                        case 2:
                            _actionToApply = UnknownEnum.Value_5;
                            break;
                        
                        case 3:
                            _actionToApply = UnknownEnum.Value_6;
                            break;
                        
                        case 4:
                            _actionToApply = UnknownEnum.Value_7;
                            break;
                        
                        case 5:
                            _actionToApply = UnknownEnum.Value_8;
                            break;
                    }
                    
                    global.playersManager.send_action(number, _actionToApply);
                    other.send_stamp(x, y, number, _p);
                    break;
                }
            }
        }
    }
    
    if (global.playersManager.has_everyone_acted() && !bookFinishedTimerActive)
    {
        bookFinishedTimerActive = true;
        bookFinishedTimer.run();
    }
    
    if (bookFinishedTimer.is_finished() && global.waitingList.is_waiting_list_empty())
    {
        if (global.isTutorialDone)
            g_go_to_step(UnknownEnum.Value_5, UnknownEnum.Value_2);
        else
            g_go_to_step(UnknownEnum.Value_3, UnknownEnum.Value_2);
    }
}
else if (state == UnknownEnum.Value_3)
{
    if (statePrev != state)
    {
        generate_characters();
        
        with (oCursor)
            set_sprite();
        
        with (oStampAnimated)
            instance_destroy();
        
        part_particles_clear(global.particlesSys);
        add_dialogue_character();
    }
    
    if (global.waitingList.is_waiting_list_empty())
        g_go_to_step(UnknownEnum.Value_5, UnknownEnum.Value_2);
}
else if (state == UnknownEnum.Value_5)
{
    if (statePrev != state)
    {
        if (global.isTutorialDone)
            generate_characters();
        
        instance_create_depth(0, 0, global.depthManager.get_depth("roomTransition"), oRoomTransition);
    }
    
    if (global.waitingList.is_waiting_list_empty())
        g_go_to_room("roomStage");
}

statePrev = state;
state = stateNext;

enum UnknownEnum
{
    Value_1 = 1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_7,
    Value_8
}
