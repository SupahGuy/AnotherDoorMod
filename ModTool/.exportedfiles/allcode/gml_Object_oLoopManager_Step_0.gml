if (live_call())
    return global.live_result;

if (room != roomStage)
    exit;

if (statePrev != state)
{
    global.doorExecutionManager.reset();
    global.effectExecutionManager.reset();
    global.deathExecutionManager.reset();
    global.networkingManager.state_switched();
}

if (state == UnknownEnum.Value_0)
{
    if (statePrev != state)
    {
        init_new_run();
        
        with (oRoomTransition)
            open();
    }
    
    if (global.waitingList.is_waiting_list_empty())
        g_go_to_step(UnknownEnum.Value_3, UnknownEnum.Value_0, UnknownEnum.Value_19, UnknownEnum.Value_1);
}
else if (state == UnknownEnum.Value_3)
{
    if (statePrev != state)
    {
        with (oEntitie)
            check_effect_activation();
        
        global.audio.set_door_effect();
        global.nextMusic = global.audio.get_music_of_situation();
        global.audio.switch_music();
        
        if (firstTime)
            firstTime = false;
        else
            incr_door_counter();
        
        monsterActiveNumber = 0;
        
        for (var _i = 0; _i < global.playersCount; _i++)
            global.playersManager.get_characters(_i).isDeadThisTurn = false;
        
        with (oRoomTransition)
            open();
    }
    
    if (global.waitingList.is_waiting_list_empty())
    {
        if (has_more_door())
            g_go_to_step(UnknownEnum.Value_4, UnknownEnum.Value_0);
        else
            g_go_to_step(UnknownEnum.Value_24, UnknownEnum.Value_0);
    }
}
else if (state == UnknownEnum.Value_24)
{
    if (statePrev != state)
    {
        var _dialogueAlignY = UnknownEnum.Value_0;
        var _dialogueAlignX = UnknownEnum.Value_2;
        var _speaker = UnknownEnum.Value_2;
        
        var _callback = function()
        {
            global.doorContinue.replace_door(false);
        };
        
        var _dialogue = [new cDialogue("demo._biomeEnd1", _dialogueAlignX, _dialogueAlignY, _speaker), new cDialogue("demo._biomeEnd2", _dialogueAlignX, _dialogueAlignY, _speaker), new cDialogue("demo._biomeEnd3", _dialogueAlignX, _dialogueAlignY, _speaker), new cDialogue("demo._biomeEnd4", _dialogueAlignX, _dialogueAlignY, _speaker), new cDialogue("demo._biomeEnd5", _dialogueAlignX, _dialogueAlignY, _speaker), new cDialogue("demo._biomeEnd6", _dialogueAlignX, _dialogueAlignY, _speaker, undefined, undefined, undefined, undefined, [_callback])];
        set_list_of_tooltip(_dialogue);
        instance_create_depth(global.gameWidth / 2, global.gameHeight / 2, 0, oDialogue, _dialogue[0]);
        global.tvState.welcome(undefined, 2);
        global.tvState.suspicious(2);
    }
    
    if (global.waitingList.is_waiting_list_empty())
        g_go_to_step(UnknownEnum.Value_23, UnknownEnum.Value_0);
}
else if (state == UnknownEnum.Value_4)
{
    if (statePrev != state)
    {
        if (!global.isTutorialDone && get_current_door() == 1)
        {
            global.isTutorialDone = true;
            ini_open("settings.ini");
            ini_write_real("tutorial", "done", global.isTutorialDone);
            ini_close();
            var _tooltipList = [new cDialogue("narrator._introduction_2_1", UnknownEnum.Value_2, UnknownEnum.Value_2, UnknownEnum.Value_2), new cDialogue("narrator._introduction_2_2", UnknownEnum.Value_2, UnknownEnum.Value_2, UnknownEnum.Value_2)];
            set_list_of_tooltip(_tooltipList);
            instance_create_depth(global.gameWidth / 2, global.gameHeight / 2, 0, oDialogue, _tooltipList[0]);
        }
        else if (global.isTutorialDone && global.runCounter != 0 && get_current_door() == 0)
        {
            var _winners = LocPreprocessor(get_winner_name());
            var _turnLeft = global.runMax - global.runCounter;
            var _label;
            
            if (_turnLeft == 1)
                _label = $"narrator._turnLeftSingle#{_turnLeft}#{_winners}";
            else
                _label = $"narrator._turnLeftPlural#{_turnLeft}#{_winners}";
            
            var _tooltipStruct = new cDialogue(_label, UnknownEnum.Value_2, UnknownEnum.Value_2, UnknownEnum.Value_2);
            instance_create_depth(global.gameWidth / 2, global.gameHeight / 2, 0, oDialogue, _tooltipStruct);
        }
    }
    
    if (global.waitingList.is_waiting_list_empty())
    {
        if (global.biomeCur != global.biomeNext)
            g_go_to_step(UnknownEnum.Value_1, UnknownEnum.Value_0);
        else
            g_go_to_step(UnknownEnum.Value_23, UnknownEnum.Value_0);
    }
}
else if (state == UnknownEnum.Value_1)
{
    if (statePrev != state)
    {
        var _dialogueList = [new cDialogue("narrator._biomeEnd1", UnknownEnum.Value_2, UnknownEnum.Value_0, UnknownEnum.Value_2), new cDialogue($"narrator._biomeEnd2#{get_level_name(global.biomeCur)}", UnknownEnum.Value_2, UnknownEnum.Value_0, UnknownEnum.Value_2), new cDialogue("narrator._biomeEnd3", UnknownEnum.Value_2, UnknownEnum.Value_0, UnknownEnum.Value_2), new cDialogue($"narrator._biomeEnd4#{get_level_name(global.biomeNext)}", UnknownEnum.Value_2, UnknownEnum.Value_0, UnknownEnum.Value_2, undefined, undefined, undefined, undefined, [global.doorContinue.replace_door])];
        set_list_of_tooltip(_dialogueList);
        instance_create_depth(global.gameWidth / 2, global.gameHeight / 2, 0, oDialogue, _dialogueList[0]);
        global.biomeCur = global.biomeNext;
    }
    
    if (global.waitingList.is_waiting_list_empty())
        g_go_to_step(UnknownEnum.Value_23, UnknownEnum.Value_0);
}
else if (state == UnknownEnum.Value_23)
{
    if (statePrev != state)
    {
        if (has_more_door())
        {
            global.dayNightCycle.reset();
            var _newEvent = global.dayNightCycle.announce_event();
            
            if (!_newEvent)
            {
                global.tvState.suspicious([2]);
                global.tvState.monsters_announcement([6]);
                global.tvState.biome_forest(undefined, [2, 6]);
            }
        }
        
        global.nextMusic = global.audio.get_music_of_situation();
        global.audio.switch_music();
        var _fighters = global.playersManager.get_characters();
        
        for (var _i = 0; _i < get_size(_fighters); _i++)
        {
            if (_fighters[_i].is_in_fight())
                global.playersManager.apply_action(_fighters[_i].number);
        }
    }
    
    if (global.waitingList.is_waiting_list_empty())
        g_go_to_step(UnknownEnum.Value_5, UnknownEnum.Value_0);
}
else if (state == UnknownEnum.Value_5)
{
    if (statePrev != state)
    {
        global.actionDelay = current_time;
        
        if (random(200) < 1)
        {
            with (oGemDoor)
                send_morse_code("... --- ...");
        }
        
        if (has_more_door())
        {
            global.doorContinue.set_disabled(false);
            global.doorExit.set_disabled(false);
        }
        else
        {
            global.doorExit.set_disabled(false);
        }
        
        global.loopManager.set_players_confused();
    }
    
    if (global.playersManager.has_every_fighters_acted(true) && global.waitingList.is_waiting_list_empty())
        g_go_to_step(UnknownEnum.Value_6, UnknownEnum.Value_0);
}
else if (state == UnknownEnum.Value_6)
{
    if (statePrev != state)
        global.throwExecutionManager.reset();
    
    global.throwExecutionManager.loop();
    
    if (global.waitingList.is_waiting_list_empty() && global.throwExecutionManager.is_finished() && global.playersManager.has_every_fighters_acted())
        g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_7), UnknownEnum.Value_0);
}
else if (state == UnknownEnum.Value_7)
{
    if (statePrev != state)
    {
        with (oGemDoor)
        {
            closeDoor();
            set_disabled(true);
        }
        
        global.throwExecutionManager.reset();
    }
    
    global.throwExecutionManager.loop();
    
    if (global.throwExecutionManager.is_finished())
        g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_8), UnknownEnum.Value_0);
}
else if (state == UnknownEnum.Value_8)
{
    global.effectExecutionManager.loop(UnknownEnum.Value_7);
    
    if (global.effectExecutionManager.is_finished())
    {
        if (global.playersManager.is_anyone_leaving())
            g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_12), UnknownEnum.Value_0);
        else
            g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_14), UnknownEnum.Value_0);
    }
}
else if (state == UnknownEnum.Value_12)
{
    if (statePrev != state)
        global.doorExit.openDoor();
    
    global.effectExecutionManager.loop(UnknownEnum.Value_9);
    
    if (global.effectExecutionManager.is_finished())
        g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_10), UnknownEnum.Value_0);
}
else if (state == UnknownEnum.Value_10)
{
    global.doorExecutionManager.loop(UnknownEnum.Value_10);
    
    if (global.doorExecutionManager.is_finished() && global.waitingList.is_waiting_list_empty())
    {
        if (global.playersManager.is_anyone_staying())
            g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_13), UnknownEnum.Value_0);
        else
            g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_15), UnknownEnum.Value_0);
    }
}
else if (state == UnknownEnum.Value_13)
{
    global.effectExecutionManager.loop(UnknownEnum.Value_10);
    
    if (global.effectExecutionManager.is_finished() && global.waitingList.is_waiting_list_empty())
        g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_14), UnknownEnum.Value_0);
}
else if (state == UnknownEnum.Value_14)
{
    if (statePrev != state)
    {
        global.doorExit.closeDoor();
        global.doorContinue.openDoor();
    }
    
    global.effectExecutionManager.loop(UnknownEnum.Value_11);
    
    if (global.effectExecutionManager.is_finished())
        g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_11), UnknownEnum.Value_0);
}
else if (state == UnknownEnum.Value_11)
{
    global.doorExecutionManager.loop(UnknownEnum.Value_11);
    
    if (global.doorExecutionManager.is_finished() && global.waitingList.is_waiting_list_empty())
        g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_15), UnknownEnum.Value_0);
}
else if (state == UnknownEnum.Value_15)
{
    if (statePrev != state)
    {
        with (oGemDoor)
            closeDoor();
        
        for (var _p = 0; _p < global.playersCount; _p++)
        {
            var _char = global.playersManager.get_characters(_p);
            
            if (global.playersManager.is_leaving(_p))
            {
                global.playersManager.apply_action(_p, UnknownEnum.Value_14);
                _char.isInFight = false;
            }
            else if (global.playersManager.is_staying(_p))
            {
                global.playersManager.apply_action(_p);
            }
        }
    }
    
    if (global.waitingList.is_waiting_list_empty())
    {
        if (global.playersManager.is_anyone_fighting())
            g_go_to_step(UnknownEnum.Value_16, UnknownEnum.Value_0);
        else
            g_go_to_step(UnknownEnum.Value_2, UnknownEnum.Value_0, UnknownEnum.Value_19, UnknownEnum.Value_1);
    }
}
else if (state == UnknownEnum.Value_16)
{
    if (statePrev != state)
        instance_create_depth(0, 0, global.depthManager.get_depth("roomTransition"), oRoomTransition);
    
    if (global.waitingList.is_waiting_list_empty())
        g_go_to_step(UnknownEnum.Value_17, UnknownEnum.Value_0);
}
else if (state == UnknownEnum.Value_17)
{
    g_go_to_step(UnknownEnum.Value_0, UnknownEnum.Value_1, UnknownEnum.Value_18, UnknownEnum.Value_0);
}
else if (state == UnknownEnum.Value_18)
{
}
else if (state == UnknownEnum.Value_2)
{
    if (statePrev != state)
    {
        global.runCounter++;
        set_winner();
        
        if (instance_number(oRoomTransition) == 0)
            instance_create_depth(0, 0, global.depthManager.get_depth("roomTransition"), oRoomTransition);
    }
    
    if (global.waitingList.is_waiting_list_empty())
    {
        if (global.runCounter == global.runMax)
            g_go_to_room("roomScore");
        else
            g_go_to_step(UnknownEnum.Value_0, UnknownEnum.Value_0);
    }
}
else if (state == UnknownEnum.Value_20)
{
    if (statePrev != state)
    {
        for (var _p = 0; _p < global.playersCount; _p++)
        {
            if (global.playersManager.get_characters(_p).hp <= 0)
                global.playersManager.get_characters(_p).delete_effect([UnknownEnum.Value_27, UnknownEnum.Value_28]);
        }
    }
    
    global.effectExecutionManager.loop(UnknownEnum.Value_27);
    
    if (global.effectExecutionManager.is_finished())
        g_go_to_step(UnknownEnum.Value_21, UnknownEnum.Value_0);
}
else if (state == UnknownEnum.Value_21)
{
    global.effectExecutionManager.loop(UnknownEnum.Value_26);
    
    if (global.effectExecutionManager.is_finished())
        g_go_to_step(UnknownEnum.Value_22, UnknownEnum.Value_0);
}
else if (state == UnknownEnum.Value_22)
{
    global.effectExecutionManager.loop(UnknownEnum.Value_28);
    
    if (global.effectExecutionManager.is_finished())
        g_go_to_step(UnknownEnum.Value_19, UnknownEnum.Value_0);
}
else if (state == UnknownEnum.Value_19)
{
    if (statePrev != state)
        global.deathExecutionManager.reset();
    
    global.deathExecutionManager.loop();
    
    if (global.deathExecutionManager.is_finished())
    {
        for (var _f = 0; _f < global.playersCount; _f++)
            global.playersManager.get_characters(_f).isDeadThisTurn = false;
        
        if (!global.playersManager.is_anyone_fighting())
            g_go_to_step(UnknownEnum.Value_15, UnknownEnum.Value_0);
        else
            g_go_to_step(global.deathExecutionManager.check_death_state(global.deathExecutionManager.stateAfterDeath, UnknownEnum.Value_0), UnknownEnum.Value_0);
    }
}

statePrev = state;
state = stateNext;

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_7,
    Value_8,
    Value_9,
    Value_10,
    Value_11,
    Value_12,
    Value_13,
    Value_14,
    Value_15,
    Value_16,
    Value_17,
    Value_18,
    Value_19,
    Value_20,
    Value_21,
    Value_22,
    Value_23,
    Value_24,
    Value_26 = 26,
    Value_27,
    Value_28
}
