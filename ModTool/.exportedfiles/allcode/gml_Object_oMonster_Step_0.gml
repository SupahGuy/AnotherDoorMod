if (live_call())
    return global.live_result;

if (animOpacity.is_running() || animOpacity.is_finished())
    image_alpha = animOpacity.get_cur_length_normalize();

if (animOpacity.is_finished())
{
    animOpacity.reset();
    image_alpha = 1;
}

if (statePrev != state)
    global.networkingManager.state_switched();

if (structMonster == global.monsters.platonia)
{
    if (state == UnknownEnum.Value_0)
    {
    }
    else if (state == UnknownEnum.Value_6)
    {
        if (statePrev != state)
            instance_create_depth(120, 110, 0, oDialogue, newTooltipListState1[0]);
        
        g_go_to_step(UnknownEnum.Value_7, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_7)
    {
        if (statePrev != state)
            instance_create_depth(120, 110, 0, oDialogue, newTooltipListState2[0]);
        
        g_go_to_step(UnknownEnum.Value_8, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_8)
    {
        if (statePrev != state)
        {
            instance_create_depth(120, 110, 0, oDialogue, newTooltipListState3[0]);
            clockRollBackTimer.reset();
            clockRollBackTimer.run();
            
            for (var _i = 0; _i < array_length(playersButtons); _i++)
                playersButtons[_i].set_disabled(true);
            
            for (var _i = 0; _i < array_length(slotsFaces); _i++)
            {
                slotsFaces[_i].stateBearingsNext = UnknownEnum.Value_0;
                slotsFaces[_i].stop_on_item_nbr(_i);
            }
        }
        
        if (clockRollBackTimer.is_finished() || clockRollBackTimer.is_running())
            clockCurrentImage = map_value(clockRollBackTimer.get_cur_length_normalize(), 0, 1, clockTotalImage, 0);
        
        if (clockRollBackTimer.is_finished())
            g_go_to_step(UnknownEnum.Value_9, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_9)
    {
        if (statePrev != state)
        {
            instance_create_depth(120, 110, 0, oDialogue, newTooltipListState4[0]);
            clockCurrentImage = 0;
            
            for (var _i = 0; _i < array_length(slotsFaces); _i++)
                slotsFaces[_i].stateNext = UnknownEnum.Value_0;
        }
        
        if (global.waitingList.is_waiting_list_empty())
            g_go_to_step(UnknownEnum.Value_10, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_10)
    {
        if (statePrev != state)
        {
            instance_create_depth(120, 110, 0, oDialogue, newTooltipListState5[0]);
            
            for (var _i = 0; _i < array_length(slotsPrice); _i++)
            {
                slotsPrice[_i].stateBearingsNext = UnknownEnum.Value_0;
                slotsPrice[_i].stateNext = UnknownEnum.Value_0;
            }
            
            set_price(global.cards.platonia.amount[0]);
        }
        
        if (global.waitingList.is_waiting_list_empty())
            g_go_to_step(UnknownEnum.Value_11, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_11)
    {
        if (statePrev != state)
        {
            clockTimer.reset();
            clockTimer.run();
            
            for (var _i = 0; _i < array_length(playersButtons); _i++)
                playersButtons[_i].set_disabled(false);
        }
        
        with (oCursor)
        {
            var _char = global.playersManager.get_characters(number);
            var _isInFight = _char.isInFight;
            
            if (_isInFight)
            {
                if (other.playersButtons[number].has_number_clicked(number))
                    other.increase_ticket_number_platonia(number, true);
            }
        }
        
        if (clockTimer.is_finished() || clockTimer.is_running())
            clockCurrentImage = map_value(clockTimer.get_cur_length_normalize(), 0, 1, 0, clockTotalImage);
        
        if (clockTimer.is_finished())
            g_go_to_step(UnknownEnum.Value_12, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_12)
    {
        if (statePrev != state)
        {
            for (var _i = 0; _i < array_length(slotsFaces); _i++)
                slotsFaces[_i].stateNext = UnknownEnum.Value_1;
            
            for (var _j = 0; _j < array_length(playersButtons); _j++)
                playersButtons[_j].set_disabled(true);
            
            for (var _k = 0; _k < array_length(slotsPrice); _k++)
                slotsPrice[_k].stateBearingsNext = UnknownEnum.Value_0;
            
            for (var _l = 0; _l < array_length(playerTicketNumbers); _l++)
                totalTicketsAsked += playerTicketNumbers[_l];
            
            if (totalTicketsAsked > 0)
                finalPrice = global.cards.platonia.amount[0] / totalTicketsAsked;
            else
                finalPrice = global.cards.platonia.amount[0];
            
            var _oldPrice = global.cards.platonia.amount[0];
            global.cards.platonia.amount[0] = round(finalPrice);
            var _alignY = UnknownEnum.Value_0;
            var _sound = UnknownEnum.Value_0;
            var _close = UnknownEnum.Value_1;
            var _newTooltipListState7 = [new cDialogue("monster._platoniaNewPrice1", undefined, undefined, _sound, _close), new cDialogue($"monster._platoniaNewPrice2#{_oldPrice}#{totalTicketsAsked}", undefined, undefined, _sound, UnknownEnum.Value_2)];
            set_list_of_tooltip(_newTooltipListState7);
            instance_create_depth(120, 110, 0, oDialogue, _newTooltipListState7[0]);
        }
        
        if (global.waitingList.is_waiting_list_empty())
            g_go_to_step(UnknownEnum.Value_13, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_13)
    {
        if (statePrev != state)
        {
            global.waitingList.set("MINIGAME_PRICE");
            
            var _callbackPrice = function()
            {
                global.waitingList.remove("MINIGAME_PRICE");
            };
            
            set_price(round(finalPrice), _callbackPrice);
        }
        
        if (global.waitingList.is_waiting_list_empty())
            g_go_to_step(UnknownEnum.Value_14, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_14)
    {
        if (statePrev != state)
        {
            for (var _i = 0; _i < array_length(slotsFaces); _i++)
            {
                slotsFaces[_i].stateNext = UnknownEnum.Value_0;
                slotsFaces[_i].stateBearingsNext = UnknownEnum.Value_0;
            }
            
            instance_create_depth(120, 110, 0, oDialogue, tooltipWinner[0]);
        }
        
        if (global.waitingList.is_waiting_list_empty())
            g_go_to_step(UnknownEnum.Value_15, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_15)
    {
        if (statePrev != state)
            set_winner_platonia();
    }
}
else if (structMonster == global.monsters.blackMarket)
{
    if (state == UnknownEnum.Value_0)
    {
    }
    else if (state == UnknownEnum.Value_1)
    {
        if (statePrev != state)
            instance_create_depth(room_width / 2, room_height / 2, 0, oDialogue, newTooltipListState1[0]);
        
        if (global.waitingList.is_waiting_list_empty())
            g_go_to_step(UnknownEnum.Value_2, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_2)
    {
        if (statePrev != state)
        {
        }
        
        if (pendulumValue > 0)
        {
            var _cos = cos((pendulumTimer / game_get_speed(gamespeed_fps)) * pi);
            pendulumTimer += pendulumSpeedMult;
            set_angle_pendulum(_cos);
        }
        
        if (glassObj.is_pressed() && pendulumValue > 0)
        {
            glassObj.break_glass();
            var _numberWhoCliked = glassObj.who_clicked();
            
            if (_numberWhoCliked != undefined)
            {
                pendulumWinnerNumber = _numberWhoCliked;
                pendulumWinnerName = string_concat($"[p{_numberWhoCliked}]", global.playersManager.get_name(_numberWhoCliked), "[/c]");
                global.cards.blackMarketGem.amount[1] = pendulumValue;
            }
        }
        
        if (glassObj.isBreak || pendulumValue == 0)
            g_go_to_step(UnknownEnum.Value_3, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_3)
    {
        if (statePrev != state)
        {
            var _alignX = UnknownEnum.Value_2;
            var _alignY = UnknownEnum.Value_2;
            var _callback = method(
            {
                pendulumWinnerNumber: pendulumWinnerNumber,
                pendulumValue: pendulumValue
            }, function()
            {
                for (var _i = 0; _i < global.playersCount; _i++)
                {
                    if (_i != pendulumWinnerNumber || pendulumValue == 0)
                        global.playersManager.apply_action(_i, UnknownEnum.Value_13);
                    else
                        global.playersManager.apply_action(_i, UnknownEnum.Value_3);
                }
            });
            var _dialogue;
            
            if (pendulumValue > 0)
                _dialogue = [new cDialogue($"blackmarket._reward1#{pendulumWinnerName}#{global.cards.blackMarketGem.amount[0]}#{global.cards.blackMarketGem.amount[1]}", _alignX, _alignY, UnknownEnum.Value_2, undefined, undefined, undefined, undefined, _callback)];
            else
                _dialogue = [new cDialogue("blackmarket._noWinner", _alignX, _alignY, UnknownEnum.Value_2, undefined, undefined, undefined, undefined, _callback)];
            
            instance_create_depth(room_width / 2, room_height / 2, 0, oDialogue, _dialogue[0]);
        }
    }
}
else if (structMonster == global.monsters.funfair)
{
    if (state == UnknownEnum.Value_0)
    {
    }
    else if (state == UnknownEnum.Value_1)
    {
        if (statePrev != state)
            instance_create_depth(100, 100, 0, oDialogue, newTooltipListState1[0]);
        
        with (oCursor)
            funfair_move_arrow();
        
        if (global.waitingList.is_waiting_list_empty())
            g_go_to_step(UnknownEnum.Value_2, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_2)
    {
        if (statePrev != state)
            run_wheel();
        
        with (oCursor)
        {
            if (InputPlayerUsingKbm(number))
            {
                if (is_verb_active(UnknownEnum.Value_0, UnknownEnum.Value_2))
                {
                    angleFunfairNext += 15;
                    funfair_send_angle(angleFunfairNext);
                }
                else if (is_verb_active(UnknownEnum.Value_1, UnknownEnum.Value_2))
                {
                    angleFunfairNext -= 15;
                    funfair_send_angle(angleFunfairNext);
                }
                
                if (is_verb_active(UnknownEnum.Value_6, UnknownEnum.Value_1))
                {
                    if (point_in_triangle(x, y, (global.uiPos.monsterScene.x + 34) - 1, global.uiPos.monsterScene.y, 350, 35, 350, 256) && point_in_circle(x, y, global.uiPos.monsterScene.x + 34, global.uiPos.monsterScene.y, 112))
                        funfair_send_angle(180);
                    else if (point_in_triangle(x, y, global.uiPos.monsterScene.x + 34, global.uiPos.monsterScene.y, 574, 35, 574, 256) && point_in_circle(x, y, global.uiPos.monsterScene.x + 34, global.uiPos.monsterScene.y, 112))
                        funfair_send_angle(0);
                    else if (point_in_triangle(x, y, global.uiPos.monsterScene.x + 34, global.uiPos.monsterScene.y, 350, 35, 574, 35) && point_in_circle(x, y, global.uiPos.monsterScene.x + 34, global.uiPos.monsterScene.y, 112))
                        funfair_send_angle(90);
                    else if (point_in_triangle(x, y, global.uiPos.monsterScene.x + 34, global.uiPos.monsterScene.y, 350, 256, 574, 256) && point_in_circle(x, y, global.uiPos.monsterScene.x + 34, global.uiPos.monsterScene.y, 112))
                        funfair_send_angle(270);
                }
            }
            else if (InputPlayerUsingGamepad(number))
            {
                if (is_verb_active(UnknownEnum.Value_9, UnknownEnum.Value_1))
                    funfair_send_angle(90);
                else if (is_verb_active(UnknownEnum.Value_7, UnknownEnum.Value_1))
                    funfair_send_angle(180);
                else if (is_verb_active(UnknownEnum.Value_8, UnknownEnum.Value_1))
                    funfair_send_angle(0);
                else if (is_verb_active(UnknownEnum.Value_6, UnknownEnum.Value_1))
                    funfair_send_angle(270);
            }
            
            funfair_move_arrow();
        }
        
        if (timerFunfairVisible.is_finished())
        {
            timerFunfairVisible.reset();
            timerFunfairDisapear.run();
            var _structTooltip = new cDialogue("monster._funfairHide", undefined, UnknownEnum.Value_0, [sndFunfairDialogue1, sndFunfairDialogue2, sndFunfairDialogue3, sndFunfairDialogue4], UnknownEnum.Value_2);
            instance_create_depth(120, 110, 0, oDialogue, _structTooltip);
        }
        
        if (timerFunfairDisapear.is_running() || timerFunfairDisapear.is_finished())
        {
            var _fighters = global.playersManager.get_characters();
            
            for (var _f = 0; _f < array_length(_fighters); _f++)
            {
                if (_fighters[_f].is_alive())
                {
                    var _cursor = global.playersManager.get_cursor(_fighters[_f].number);
                    
                    if ((global.networkingManager.isNetworkGame && InputPlayerGetGhost(_fighters[_f].number)) || !global.networkingManager.isNetworkGame)
                        _cursor.alphaFunfair = 1 - timerFunfairDisapear.get_cur_length_normalize();
                }
            }
        }
        
        if (timerFunfairDisapear.is_finished())
        {
            timerFunfairDisapear.reset();
            timerFunfairInvisible.run();
        }
        
        if (timerFunfairInvisible.is_finished())
            g_go_to_step(UnknownEnum.Value_5, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_5)
    {
        if (statePrev != state)
        {
            var _fighters = global.playersManager.get_characters();
            
            for (var _f = 0; _f < array_length(_fighters); _f++)
            {
                if (_fighters[_f].is_in_fight())
                {
                    var _cursor = global.playersManager.get_cursor(_fighters[_f].number);
                    
                    if (_cursor != -4 && instance_exists(_cursor))
                        _cursor.alphaFunfair = 1;
                }
            }
        }
        
        var _cursorFinished = true;
        
        with (oCursor)
        {
            funfair_move_arrow();
            
            if (!funfair_movement_finished())
                _cursorFinished = false;
        }
        
        if (_cursorFinished)
            g_go_to_step(UnknownEnum.Value_3, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_3)
    {
        if (statePrev != state)
        {
            var _fighters = global.playersManager.get_characters();
            
            for (var _f = 0; _f < array_length(_fighters); _f++)
            {
                if (_fighters[_f].is_in_fight())
                {
                    var _cursor = global.playersManager.get_cursor(_fighters[_f].number);
                    
                    if (_cursor != -4 && instance_exists(_cursor))
                        _cursor.funfair_define_action();
                }
            }
            
            isMiniGameFinished = true;
        }
    }
}
else if (structMonster == global.monsters.babayaga)
{
    bellOffset = cos(current_time * 0.0025) * 2;
    
    if (state == UnknownEnum.Value_0)
    {
    }
    else if (state == UnknownEnum.Value_1)
    {
        if (statePrev != state)
        {
            init_baba();
            instance_create_depth(100, 100, 0, oDialogue, dialogueRules[0]);
        }
        
        if (showHandTimer.is_running() || showHandTimer.is_finished())
        {
            var _handAlpha = showHandTimer.get_cur_length_normalize();
            
            if (showHandTimer.is_finished())
            {
                _handAlpha = 1;
                showHandTimer.reset();
            }
            
            for (var _i = 0; _i < array_length(babaHands); _i++)
                babaHands[_i].alpha = _handAlpha;
        }
        
        if (global.waitingList.is_waiting_list_empty())
            g_go_to_step(UnknownEnum.Value_2, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_2)
    {
        if (statePrev != state)
        {
            for (var _i = 0; _i < array_length(babaHands); _i++)
                babaHands[_i].alpha = 1;
            
            timerBabayaga.run();
        }
        
        var _allAlphaAtZero = true;
        
        for (var _i = 0; _i < array_length(babaHands); _i++)
        {
            if (babaHands[_i].alpha == 0)
                continue;
            
            _allAlphaAtZero = false;
            var _cursor = global.playersManager.get_cursor(babaHands[_i].number);
            
            if ((!InputPlayerGetGhost(babaHands[_i].number) && !global.playersManager.has_acted(babaHands[_i].number)) && ((InputPlayerUsingKbm(babaHands[_i].number) && _cursor.is_verb_active(UnknownEnum.Value_6, UnknownEnum.Value_1) && point_in_circle(_cursor.x, _cursor.y, global.uiPos.monsterScene.x, global.uiPos.monsterScene.y - 30, 44)) || (InputPlayerUsingGamepad(babaHands[_i].number) && _cursor.is_verb_active(UnknownEnum.Value_9, UnknownEnum.Value_1))))
                global.playersManager.send_action(babaHands[_i].number, babaCard.actionType, true);
            
            if (babaHands[_i].moveHand.is_running())
            {
                babaHands[_i].x = lerp(babaHands[_i].xInit, babaHandXTo, babaHands[_i].moveHand.get_cur_length_normalize());
                babaHands[_i].y = lerp(babaHands[_i].yInit, babaHandYTo, babaHands[_i].moveHand.get_cur_length_normalize());
            }
            
            if (babaHands[_i].moveHand.is_finished())
            {
                babaHands[_i].moveHand.stop();
                babaHands[_i].moveHand.reset();
                audio_play_sound(sndBabaBell, 10, false);
                bellTimer.reset();
                bellTimer.run();
                babaHands[_i].timerHide.run();
            }
            
            if (babaHands[_i].timerHide.is_running() || babaHands[_i].timerHide.is_finished())
            {
                babaHands[_i].alpha = 1 - babaHands[_i].timerHide.get_cur_length_normalize();
                
                if (babaHands[_i].timerHide.is_finished())
                {
                    babaHands[_i].timerHide.reset();
                    babaHands[_i].timerHide.stop();
                    babaHands[_i].alpha = 0;
                }
            }
        }
        
        if (bellTimer.is_running() || bellTimer.is_finished())
        {
            var _length = bellTimer.get_cur_length_normalize();
            bellOffset = map_value(_length, 0, 1, bellOffsetMin, bellOffsetMax);
        }
        
        if (bellTimer.is_finished())
            bellTimer.reset();
        
        if (global.playersManager.has_every_fighters_acted() && _allAlphaAtZero && global.waitingList.is_waiting_list_empty())
        {
            timerBabayaga.reset();
            timerBabayaga.stop();
            g_go_to_step(UnknownEnum.Value_3, UnknownEnum.Value_3);
        }
    }
    else if (state == UnknownEnum.Value_3)
    {
        if (statePrev != state)
        {
            var _alignY = UnknownEnum.Value_0;
            var _lastOne = global.playersManager.get_last_player_to_act();
            
            if (_lastOne != -1)
                dialogueFinished = [new cDialogue("monster._babayagaReward1", undefined, _alignY, UnknownEnum.Value_1), new cDialogue($"monster._babayagaReward2#{global.playersManager.get_name(_lastOne)}", undefined, _alignY, UnknownEnum.Value_1, undefined, undefined, undefined, undefined, [babayaga_end])];
            else
                dialogueFinished = [new cDialogue("monster._babayagaNoReward", undefined, _alignY, UnknownEnum.Value_1, undefined, undefined, undefined, undefined, [babayaga_end])];
            
            set_list_of_tooltip(dialogueFinished);
            instance_create_depth(100, 100, 0, oDialogue, dialogueFinished[0]);
        }
    }
}
else if (structMonster == global.monsters.faun)
{
    if (state == UnknownEnum.Value_0)
    {
    }
    else if (state == UnknownEnum.Value_1)
    {
        if (statePrev != state)
            generate_token_and_chain();
        
        g_go_to_step(UnknownEnum.Value_2, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_2)
    {
        if (statePrev != state)
            display_dialogue_faun();
        
        if (donkeyCapTimer.is_finished() && global.isHost)
            global.playersManager.send_action(arrayPlayerGem[indexPlayerBuy].number, UnknownEnum.Value_13);
        
        if (global.playersManager.has_acted(arrayPlayerGem[indexPlayerBuy].number))
            g_go_to_step(UnknownEnum.Value_4, UnknownEnum.Value_3);
    }
    else if (state == UnknownEnum.Value_4)
    {
        if (statePrev != state)
        {
            donkeyCapTimer.reset();
            donkeyCapTimer.stop();
            var _playerNumber = arrayPlayerGem[indexPlayerBuy].number;
            var _tokenToFind = 0;
            
            switch (global.playersManager.get_action(_playerNumber))
            {
                case UnknownEnum.Value_3:
                default:
                    _tokenToFind = 0;
                    break;
                
                case UnknownEnum.Value_4:
                    _tokenToFind = 1;
                    break;
                
                case UnknownEnum.Value_5:
                    _tokenToFind = 2;
                    break;
                
                case UnknownEnum.Value_6:
                    _tokenToFind = 3;
                    break;
                
                case UnknownEnum.Value_7:
                    _tokenToFind = 4;
                    break;
                
                case UnknownEnum.Value_8:
                    _tokenToFind = 5;
                    break;
                
                case UnknownEnum.Value_9:
                    _tokenToFind = 6;
                    break;
                
                case UnknownEnum.Value_13:
                    _tokenToFind = -1;
                    break;
            }
            
            if (_tokenToFind == -1)
            {
                clone_donkey_cap(_playerNumber);
            }
            else
            {
                for (var _i = 0; _i < instance_number(oToken); _i++)
                {
                    var _inst = instance_find(oToken, _i);
                    
                    if (_inst.numberBuy == _tokenToFind)
                        _inst.clone(_playerNumber, _inst.xDraw, _inst.yDraw);
                }
            }
            
            indexPlayerBuy++;
            
            if (indexPlayerBuy < array_length(arrayPlayerGem))
            {
                with (oToken)
                {
                    if (numberBuy != -1)
                    {
                        if (!global.networkingManager.isNetworkGame)
                        {
                            var _numberAllowed = global.fightManager.encounter.arrayPlayerGem[global.fightManager.encounter.indexPlayerBuy].number;
                            set_interaction_allowed_by([_numberAllowed]);
                        }
                    }
                }
            }
            
            with (oDialogue)
                instance_destroy();
        }
        
        if (global.waitingList.is_waiting_list_empty())
        {
            if (indexPlayerBuy >= array_length(arrayPlayerGem))
                g_go_to_step(UnknownEnum.Value_3, UnknownEnum.Value_3);
            else
                g_go_to_step(UnknownEnum.Value_2, UnknownEnum.Value_3);
        }
    }
    else if (state == UnknownEnum.Value_3)
    {
        if (statePrev != state)
            isMiniGameFinished = true;
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
    Value_15
}
