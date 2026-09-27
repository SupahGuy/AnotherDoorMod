if (live_call())
    return global.live_result;

if (room != roomStage)
    exit;

if (statePrev != state)
{
    global.effectExecutionManager.reset();
    global.deathExecutionManager.reset();
    global.doorExecutionManager.reset();
    global.networkingManager.state_switched();
}

if (state == UnknownEnum.Value_0)
{
    if (statePrev != state)
    {
        with (oRoomTransition)
            open();
        
        set_room();
        
        with (oEntitie)
            check_effect_activation();
        
        global.nextMusic = global.audio.get_music_of_situation();
        global.audio.switch_music();
    }
    
    if (global.waitingList.is_waiting_list_empty())
        g_go_to_step(UnknownEnum.Value_1, UnknownEnum.Value_1);
}
else if (state == UnknownEnum.Value_1)
{
    global.effectExecutionManager.loop(UnknownEnum.Value_1);
    
    if (global.effectExecutionManager.is_finished())
        g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_2, UnknownEnum.Value_1), UnknownEnum.Value_1);
}
else if (state == UnknownEnum.Value_2)
{
    if (global.playersManager.is_anyone_fighting() && statePrev != state)
    {
        if (encounter.activate_dialogue != undefined)
        {
            var _dialogueVariable = encounter.dialogueRoundCount;
            
            if (encounter.structMonster == global.monsters.faun)
            {
                ini_open("lore.ini");
                _dialogueVariable = ini_read_real("faun", "encounter", 0);
                ini_close();
            }
            
            encounter.activate_dialogue(_dialogueVariable);
        }
    }
    
    if (global.waitingList.is_waiting_list_empty())
    {
        if (global.playersManager.is_anyone_fighting())
            g_go_to_step(UnknownEnum.Value_3, UnknownEnum.Value_1);
        else
            g_go_to_step(UnknownEnum.Value_10, UnknownEnum.Value_1);
    }
}
else if (state == UnknownEnum.Value_3)
{
    if (statePrev != state)
    {
        nbrFightersAtCardDraw = 0;
        
        for (var _f = 0; _f < array_length(global.playersManager.get_characters()); _f++)
        {
            if (global.playersManager.get_characters(_f).is_in_fight())
                nbrFightersAtCardDraw++;
        }
        
        global.actionCards.draw();
        var _fighters = global.playersManager.get_characters();
        
        for (var _i = 0; _i < get_size(_fighters); _i++)
        {
            if (_fighters[_i].is_in_fight())
                global.playersManager.apply_action(_fighters[_i].number);
        }
    }
    
    if (global.waitingList.is_waiting_list_empty())
    {
        if (encounter.structMonster.category == UnknownEnum.Value_0 || encounter.structMonster.category == UnknownEnum.Value_3 || encounter.structMonster.category == UnknownEnum.Value_1 || encounter.structMonster.category == UnknownEnum.Value_7)
            g_go_to_step(UnknownEnum.Value_5, UnknownEnum.Value_1);
        else
            g_go_to_step(UnknownEnum.Value_4, UnknownEnum.Value_1);
    }
}
else if (state == UnknownEnum.Value_4)
{
    if (statePrev != state)
    {
        encounter.isMiniGameFinished = false;
        
        with (oCardItem)
            stateNext = UnknownEnum.Value_1;
    }
    
    if (encounter.isMiniGameFinished && global.waitingList.is_waiting_list_empty())
        g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_6, UnknownEnum.Value_1), UnknownEnum.Value_1);
    else if (encounter.stateNext == UnknownEnum.Value_0)
        g_go_to_step(UnknownEnum.Value_1, UnknownEnum.Value_3);
}
else if (state == UnknownEnum.Value_5)
{
    if (statePrev != state)
    {
        global.actionDelay = current_time;
        global.loopManager.set_players_confused();
        
        with (oCardItem)
            stateNext = UnknownEnum.Value_1;
        
        global.dayNightCycle.check_cycle_event(0);
    }
    
    global.dayNightCycle.check_cycle_event(1);
    
    if (global.waitingList.is_waiting_list_empty() && (global.playersManager.has_every_fighters_acted(true) || !global.playersManager.does_anyone_have_hp()))
        g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_6, UnknownEnum.Value_1), UnknownEnum.Value_1);
}
else if (state == UnknownEnum.Value_6)
{
    if (statePrev != state)
        global.throwExecutionManager.reset();
    
    global.throwExecutionManager.loop();
    global.dayNightCycle.check_cycle_event(1);
    
    if (global.waitingList.is_waiting_list_empty() && global.throwExecutionManager.is_finished() && global.playersManager.has_every_fighters_acted())
        g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_7, UnknownEnum.Value_1), UnknownEnum.Value_1);
}
else if (state == UnknownEnum.Value_7)
{
    if (statePrev != state)
        global.throwExecutionManager.reset();
    
    global.throwExecutionManager.loop();
    global.dayNightCycle.check_cycle_event(1);
    
    if (global.waitingList.is_waiting_list_empty() && global.throwExecutionManager.is_finished() && global.playersManager.has_every_fighters_acted())
        g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_8, UnknownEnum.Value_1), UnknownEnum.Value_1);
}
else if (state == UnknownEnum.Value_8)
{
    global.effectExecutionManager.loop(UnknownEnum.Value_2);
    
    if (global.effectExecutionManager.is_finished())
        g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_9, UnknownEnum.Value_1), UnknownEnum.Value_1);
}
else if (state == UnknownEnum.Value_9)
{
    if (statePrev != state)
    {
        executeCounter = 0;
        executeCounterMax = array_length(global.actionCards.theHand);
        executeCounterFinished = (executeCounter == executeCounterMax) ? true : false;
    }
    
    if (!executeCounterFinished)
    {
        if (global.actionCards.theHand[executeCounter].state == UnknownEnum.Value_1)
        {
            var _fighters = global.playersManager.get_characters();
            var _actualCard = global.actionCards.theHand[executeCounter];
            
            for (var _f = 0; _f < array_length(_fighters); _f++)
            {
                if (global.playersManager.get_action(_fighters[_f].number) == _actualCard.actionType)
                    array_push(_actualCard.nbrCharLinked, _fighters[_f].number);
            }
            
            var _cardNextState;
            
            if (array_length(_actualCard.nbrCharLinked) > 0)
            {
                global.cardExecutionManager.reset(_actualCard.nbrCharLinked);
                _cardNextState = UnknownEnum.Value_3;
            }
            else
            {
                _cardNextState = UnknownEnum.Value_4;
            }
            
            global.actionCards.theHand[executeCounter].stateNext = _cardNextState;
        }
        
        if (global.actionCards.theHand[executeCounter].state == UnknownEnum.Value_4 && global.waitingList.is_waiting_list_empty())
        {
            executeCounter++;
            
            if (executeCounter == executeCounterMax)
                executeCounterFinished = true;
        }
    }
    else
    {
        g_go_to_step(global.deathExecutionManager.check_death_state(UnknownEnum.Value_10, UnknownEnum.Value_1), UnknownEnum.Value_1);
    }
}
else if (state == UnknownEnum.Value_10)
{
    if (statePrev != state)
    {
        encounter.increase_fight_round_counter();
        var _fighters = global.playersManager.get_characters();
        
        for (var _f = 0; _f < array_length(_fighters); _f++)
        {
            if (_fighters[_f].is_in_fight())
                global.playersManager.apply_action(_fighters[_f].number);
        }
        
        global.actionCards.empty_hand();
    }
    
    if (global.waitingList.is_waiting_list_empty())
    {
        if (encounter.fightRoundCount == encounter.fightRoundCountMax || !global.playersManager.is_anyone_fighting())
            g_go_to_step(UnknownEnum.Value_18, UnknownEnum.Value_1);
        else
            g_go_to_step(UnknownEnum.Value_2, UnknownEnum.Value_1);
    }
}
else if (state == UnknownEnum.Value_13)
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
        g_go_to_step(UnknownEnum.Value_12, UnknownEnum.Value_1);
}
else if (state == UnknownEnum.Value_12)
{
    global.effectExecutionManager.loop(UnknownEnum.Value_26);
    
    if (global.effectExecutionManager.is_finished())
        g_go_to_step(UnknownEnum.Value_14, UnknownEnum.Value_1);
}
else if (state == UnknownEnum.Value_14)
{
    global.effectExecutionManager.loop(UnknownEnum.Value_28);
    
    if (global.effectExecutionManager.is_finished())
    {
        if (global.effectExecutionManager.is_finished())
            g_go_to_step(UnknownEnum.Value_11, UnknownEnum.Value_1);
    }
}
else if (state == UnknownEnum.Value_11)
{
    if (statePrev != state)
        global.deathExecutionManager.reset();
    
    global.deathExecutionManager.loop();
    
    if (global.deathExecutionManager.is_finished())
    {
        for (var _f = 0; _f < global.playersCount; _f++)
            global.playersManager.get_characters(_f).isDeadThisTurn = false;
        
        if (!global.playersManager.is_anyone_fighting())
            g_go_to_step(UnknownEnum.Value_10, UnknownEnum.Value_1);
        else
            g_go_to_step(global.deathExecutionManager.check_death_state(global.deathExecutionManager.stateAfterDeath, UnknownEnum.Value_1), UnknownEnum.Value_1);
    }
}
else if (state == UnknownEnum.Value_18)
{
    if (statePrev != state)
    {
        global.audio.fade_in(undefined, undefined, false);
        
        if (encounter.monster_script_end != undefined)
            encounter.monster_script_end();
        
        instance_destroy(encounter);
        encounter = -4;
        global.loopManager.monsterActiveNumber++;
    }
    
    if (global.playersManager.is_anyone_fighting() && global.waitingList.is_waiting_list_empty())
    {
        if (global.loopManager.has_more_monster())
            g_go_to_step(UnknownEnum.Value_0, UnknownEnum.Value_1);
        else
            g_go_to_step(UnknownEnum.Value_17, UnknownEnum.Value_1);
    }
    else
    {
        g_go_to_step(UnknownEnum.Value_16, UnknownEnum.Value_1);
    }
}
else if (state == UnknownEnum.Value_16)
{
    if (statePrev != state)
    {
        var _callback = function()
        {
            global.fightManager.isFightActive = false;
        };
        
        instance_create_depth(0, 0, global.depthManager.get_depth("roomTransition"), oRoomTransition, 
        {
            leaveCallback: _callback
        });
    }
    
    if (global.waitingList.is_waiting_list_empty())
        g_go_to_step(UnknownEnum.Value_2, UnknownEnum.Value_0, UnknownEnum.Value_19, UnknownEnum.Value_1);
}
else if (state == UnknownEnum.Value_17)
{
    if (statePrev != state)
    {
        var _callback = function()
        {
            global.fightManager.isFightActive = false;
        };
        
        instance_create_depth(0, 0, global.depthManager.get_depth("roomTransition"), oRoomTransition, 
        {
            leaveCallback: _callback
        });
    }
    
    if (global.waitingList.is_waiting_list_empty())
        g_go_to_step(UnknownEnum.Value_3, UnknownEnum.Value_0, UnknownEnum.Value_19, UnknownEnum.Value_1);
}
else if (state == UnknownEnum.Value_19)
{
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
    Value_16 = 16,
    Value_17,
    Value_18,
    Value_19,
    Value_26 = 26,
    Value_27,
    Value_28
}
