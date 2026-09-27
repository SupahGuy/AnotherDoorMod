function effect_execution_manager() constructor
{
    allEffectsExecuted = false;
    nbrCharToCheckPrev = -1;
    nbrCharToCheck = 0;
    indexEffectToCheck = 0;
    indexTokenToCheck = 0;
    charToCheck = -4;
    arrayInstEffects = [];
    arrayInstEffectsLength = 0;
    preCalculatedNbr = 0;
    fighters = [];
    fightersLength = 0;
    
    reset = function()
    {
        global.vfxEffectSpeed = 1;
        allEffectsExecuted = false;
        nbrCharToCheckPrev = -1;
        nbrCharToCheck = 0;
        indexEffectToCheck = 0;
        indexTokenToCheck = 0;
        preCalculatedNbr = minstd_int(global.rng, 100);
        fighters = [];
        fightersLength = 0;
    };
    
    is_finished = function()
    {
        return allEffectsExecuted;
    };
    
    define_effect_to_parse = function(arg0)
    {
        indexEffectToCheck = 0;
        indexTokenToCheck = 0;
        charToCheck = global.playersManager.get_characters(nbrCharToCheck);
        arrayInstEffects = [];
        fighters = global.playersManager.get_fighters();
        fightersLength = array_length(fighters);
        
        for (var _t = 0; _t < array_length(charToCheck.token.effectLinked); _t++)
            add_effect_to_loop(charToCheck.token.effectLinked[_t], arg0, UnknownEnum.Value_1);
        
        for (var _i = 0; _i < array_length(charToCheck.effects); _i++)
            add_effect_to_loop(charToCheck.effects[_i], arg0, UnknownEnum.Value_0);
        
        arrayInstEffectsLength = array_length(arrayInstEffects);
    };
    
    moveToNextCharacter = function()
    {
        global.vfxEffectSpeed = 1;
        nbrCharToCheck++;
        
        if (nbrCharToCheck >= global.playersCount)
            allEffectsExecuted = true;
    };
    
    add_effect_to_loop = function(arg0, arg1, arg2)
    {
        if (!array_contains(arg0.condition, arg1))
            exit;
        
        var _isDeadThisTurn = charToCheck.is_dead_this_turn();
        var _isLeaving = false;
        var _isAnotherLeaving = false;
        var _nbrIsLeaving = 0;
        var _isContinuing = false;
        var _isAnotherStaying = false;
        var _nbrIsContinuing = 0;
        var _isAnotherDead = false;
        var _nbrAnotherDead = 0;
        var _numberOfApplication = 1;
        
        for (var _p = 0; _p < global.playersCount; _p++)
        {
            if (global.playersManager.get_characters(_p).is_dead_this_turn() && _p != nbrCharToCheck)
            {
                _nbrAnotherDead++;
                _isAnotherDead = true;
            }
            
            if (global.playersManager.is_leaving(_p))
            {
                if (_p == nbrCharToCheck)
                {
                    _isLeaving = true;
                }
                else
                {
                    _isAnotherLeaving = true;
                    _nbrIsLeaving++;
                }
            }
            
            if (global.playersManager.is_staying(_p))
            {
                if (_p == nbrCharToCheck)
                {
                    _isContinuing = true;
                }
                else
                {
                    _isAnotherStaying = true;
                    _nbrIsContinuing++;
                }
            }
        }
        
        if (arg1 == UnknownEnum.Value_26)
        {
            if (_isAnotherDead && (!charToCheck.is_dead_this_turn() && charToCheck.is_alive()))
                _numberOfApplication += (_nbrAnotherDead - 1);
            else
                exit;
        }
        else if ((arg1 == UnknownEnum.Value_28 || arg1 == UnknownEnum.Value_27) && !_isDeadThisTurn)
        {
            exit;
        }
        else if (arg1 == UnknownEnum.Value_9 && !_isLeaving)
        {
            exit;
        }
        else if (arg1 == UnknownEnum.Value_10)
        {
            if (!_isAnotherLeaving)
                exit;
            else
                _numberOfApplication += (_nbrIsLeaving - 1);
        }
        else if (arg1 == UnknownEnum.Value_11 && !_isContinuing)
        {
            exit;
        }
        else if ((arg1 != UnknownEnum.Value_28 && arg1 != UnknownEnum.Value_27 && arg1 != UnknownEnum.Value_26 && arg1 != UnknownEnum.Value_9 && arg1 != UnknownEnum.Value_10 && arg1 != UnknownEnum.Value_11) && charToCheck.hp <= 0)
        {
            exit;
        }
        
        if (global.fightManager.state == UnknownEnum.Value_1)
        {
            var _hasLadybug = charToCheck.effect_index(global.effect.ladybug);
            
            if (_hasLadybug != -1)
            {
                var _ladybug = charToCheck.get_effect(_hasLadybug);
                
                if (_ladybug.stack > 0)
                    _numberOfApplication += (_ladybug.stack * _ladybug.amount[0]);
            }
        }
        
        for (var _j = 0; _j < _numberOfApplication; _j++)
        {
            array_push(arrayInstEffects, 
            {
                effect: arg0,
                effectType: arg2
            });
        }
    };
    
    loop = function(arg0)
    {
        if (!allEffectsExecuted && global.waitingList.is_waiting_list_empty())
        {
            if (nbrCharToCheckPrev != nbrCharToCheck)
            {
                nbrCharToCheckPrev = nbrCharToCheck;
                define_effect_to_parse(arg0);
            }
            
            if (indexEffectToCheck < arrayInstEffectsLength)
            {
                if (instance_exists(charToCheck))
                {
                    var _theEffect = arrayInstEffects[indexEffectToCheck].effect;
                    var _theEffectType = arrayInstEffects[indexEffectToCheck].effectType;
                    
                    if (_theEffectType == UnknownEnum.Value_1)
                        execute_effect(charToCheck, arg0, charToCheck.token, _theEffect, _theEffectType, preCalculatedNbr);
                    else if (instance_exists(_theEffect))
                        execute_effect(charToCheck, arg0, _theEffect, _theEffect.theStruct, _theEffectType, preCalculatedNbr);
                }
                
                indexEffectToCheck++;
                var _incrValue = min(indexEffectToCheck / 10, 1);
                global.vfxEffectSpeed = map_value(_incrValue, 0, 1, 1, 3);
            }
            else
            {
                moveToNextCharacter(arg0);
            }
        }
    };
}

function card_execution_manager() constructor
{
    allEffectsExecuted = false;
    nbrCharLinkedToCheck = 0;
    indexEffectToCheck = 0;
    playersWithMostGem = [];
    amountPlayersWithMostGem = -1;
    playersWithMaxHp = [];
    amountPlayersWithMaxHp = -1;
    playersWithLeastHp = [];
    amountPlayersWithLeastHp = -1;
    randomPlayerThatMadeChoice = -1;
    
    reset = function(arg0)
    {
        allEffectsExecuted = false;
        nbrCharLinkedToCheck = 0;
        indexEffectToCheck = 0;
        randomPlayerThatMadeChoice = global.playersManager.get_characters(arg0[minstd_int(global.rng, array_length(arg0) - 1)]).number;
        nbrChanceCalculated = minstd_int(global.rng, 100);
        playersWithMostGem = [];
        amountPlayersWithMostGem = -1;
        playersWithMaxHp = [];
        amountPlayersWithMaxHp = -1;
        playersWithLeastHp = [];
        amountPlayersWithLeastHp = -1;
        playersWithLeastLastDirectDamage = [];
        amountPlayersWithLeastLastDirectDamage = -1;
        var _fighters = global.playersManager.get_characters();
        
        for (var _p = 0; _p < get_size(_fighters); _p++)
        {
            if (_fighters[_p].is_alive())
            {
                array_push(playersWithMostGem, _fighters[_p]);
                array_push(playersWithMaxHp, _fighters[_p]);
                array_push(playersWithLeastHp, _fighters[_p]);
                array_push(playersWithLeastLastDirectDamage, _fighters[_p]);
            }
        }
        
        array_sort(playersWithMostGem, function(arg0, arg1)
        {
            return arg1.get_gem() - arg0.get_gem();
        });
        var _s = array_length(playersWithMostGem) - 1;
        
        while (_s >= 0)
        {
            if (playersWithMostGem[_s].get_gem() < playersWithMostGem[0].get_gem())
                array_delete(playersWithMostGem, _s, 1);
            
            _s--;
        }
        
        if (array_length(playersWithMostGem) > 0)
            amountPlayersWithMostGem = playersWithMostGem[0].get_gem();
        
        array_sort(playersWithMaxHp, function(arg0, arg1)
        {
            return arg1.hp - arg0.hp;
        });
        var _q = array_length(playersWithMaxHp) - 1;
        
        while (_q >= 0)
        {
            if (playersWithMaxHp[_q].hp < playersWithMaxHp[0].hp)
                array_delete(playersWithMaxHp, _q, 1);
            
            _q--;
        }
        
        if (array_length(playersWithMaxHp) > 0)
            amountPlayersWithMaxHp = playersWithMaxHp[0].hp;
        
        array_sort(playersWithLeastHp, function(arg0, arg1)
        {
            return arg0.hp - arg1.hp;
        });
        var _r = array_length(playersWithLeastHp) - 1;
        
        while (_r >= 0)
        {
            if (playersWithLeastHp[_r].hp > playersWithLeastHp[0].hp)
                array_delete(playersWithLeastHp, _r, 1);
            
            _r--;
        }
        
        if (array_length(playersWithLeastHp) > 0)
            amountPlayersWithLeastHp = playersWithLeastHp[0].hp;
        
        array_sort(playersWithLeastLastDirectDamage, function(arg0, arg1)
        {
            return arg0.lastDirectDamage - arg1.lastDirectDamage;
        });
        _s = array_length(playersWithLeastLastDirectDamage) - 1;
        
        while (_s >= 0)
        {
            if (playersWithLeastLastDirectDamage[_s].lastDirectDamage > playersWithLeastLastDirectDamage[0].lastDirectDamage)
                array_delete(playersWithLeastLastDirectDamage, _s, 1);
            
            _s--;
        }
        
        if (array_length(playersWithLeastLastDirectDamage) > 0)
            amountPlayersWithLeastLastDirectDamage = playersWithLeastLastDirectDamage[0].lastDirectDamage;
    };
    
    is_finished = function()
    {
        return allEffectsExecuted;
    };
    
    moveToNextCharacter = function(arg0)
    {
        nbrCharLinkedToCheck++;
        indexEffectToCheck = 0;
        nbrChanceCalculated = minstd_int(global.rng, 100);
        
        if (nbrCharLinkedToCheck >= get_size(arg0))
            allEffectsExecuted = true;
    };
    
    loop = function(arg0, arg1)
    {
        if (allEffectsExecuted == false && global.waitingList.is_waiting_list_empty())
        {
            var _charToCheck = global.playersManager.get_characters(arg1[nbrCharLinkedToCheck]);
            var _charLinked = [];
            
            for (var _lc = 0; _lc < array_length(arg1); _lc++)
            {
                if (global.playersManager.get_characters(arg1[_lc]) != -4)
                    array_push(_charLinked, global.playersManager.get_characters(arg1[_lc]));
            }
            
            if (_charToCheck != -4 && instance_exists(_charToCheck) && array_length(_charLinked) > 0)
            {
                if (indexEffectToCheck < get_size(arg0.item.actionType))
                {
                    execute_card(arg0, _charToCheck, _charLinked, arg0.item, indexEffectToCheck, nbrChanceCalculated);
                    indexEffectToCheck++;
                }
                else
                {
                    moveToNextCharacter(arg1);
                }
            }
            else
            {
                moveToNextCharacter(arg1);
            }
        }
    };
}

function door_execution_manager() constructor
{
    allCharChecked = false;
    nbrCharToCheckList = [];
    timerExecuteEffect = new myTimer(-4, 0.5);
    nbrCharToCheck = 0;
    
    reset = function()
    {
        timerExecuteEffect.reset();
        allCharChecked = false;
        nbrCharToCheckList = [];
        nbrCharToCheck = 0;
    };
    
    define_char_to_activate = function(arg0)
    {
        nbrCharToCheckList = [];
        
        for (var _p = 0; _p < global.playersCount; _p++)
        {
            var _char = global.playersManager.get_characters(_p);
            
            if (_char != -4)
            {
                if (global.playersManager.is_leaving(_p) && arg0 == UnknownEnum.Value_10)
                    array_push(nbrCharToCheckList, _p);
                else if (global.playersManager.is_staying(_p) && arg0 == UnknownEnum.Value_11)
                    array_push(nbrCharToCheckList, _p);
            }
        }
    };
    
    is_finished = function()
    {
        return allCharChecked;
    };
    
    moveToNextCharacter = function()
    {
        nbrCharToCheck++;
        timerExecuteEffect.reset();
        timerExecuteEffect.run();
    };
    
    loop = function(arg0)
    {
        if (!allCharChecked && (timerExecuteEffect.is_finished() || nbrCharToCheck == 0))
        {
            if (nbrCharToCheck == 0)
                define_char_to_activate(arg0);
            
            if (array_length(nbrCharToCheckList) != 0)
            {
                var _charNumber = nbrCharToCheckList[nbrCharToCheck];
                var _char = global.playersManager.get_characters(_charNumber);
                
                if (_char != -4 && instance_exists(_char))
                {
                    if (arg0 == UnknownEnum.Value_10)
                    {
                        g_exchange_gem(undefined, undefined, undefined, undefined, _char.gem, UnknownEnum.Value_0, _charNumber, UnknownEnum.Value_1, _charNumber);
                        _char.stateNext = UnknownEnum.Value_3;
                    }
                    else if (arg0 == UnknownEnum.Value_11)
                    {
                        g_exchange_gem(_char.token.xDraw, _char.token.yDraw, 0, 0, global.loopManager.get_gem_reward(), UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, _charNumber);
                    }
                }
                
                if (nbrCharToCheck >= (array_length(nbrCharToCheckList) - 1))
                    allCharChecked = true;
                else
                    moveToNextCharacter();
            }
            else
            {
                allCharChecked = true;
            }
        }
    };
}

function token_execution_manager() constructor
{
    throwWaveTimer = new myTimer(-4, 0.41);
    allTokenThrow = false;
    tokenList = [[], [], [], []];
    tokenListCounter = 0;
    
    reset = function()
    {
        throwWaveTimer.reset();
        allTokenThrow = false;
        tokenList = [[], [], [], []];
        tokenListCounter = 0;
        var _fighters = global.playersManager.get_characters();
        
        for (var _f = 0; _f < get_size(_fighters); _f++)
        {
            if (instance_exists(_fighters[_f]))
            {
                if (global.playersManager.has_acted(_fighters[_f].number) && _fighters[_f].token.state != UnknownEnum.Value_2)
                {
                    if (global.playersManager.get_action(_fighters[_f].number) == UnknownEnum.Value_3)
                        array_push(tokenList[0], _fighters[_f].token);
                    else if (global.playersManager.get_action(_fighters[_f].number) == UnknownEnum.Value_4)
                        array_push(tokenList[1], _fighters[_f].token);
                    else if (global.playersManager.get_action(_fighters[_f].number) == UnknownEnum.Value_5)
                        array_push(tokenList[2], _fighters[_f].token);
                    else if (global.playersManager.get_action(_fighters[_f].number) == UnknownEnum.Value_6)
                        array_push(tokenList[3], _fighters[_f].token);
                    else if (global.playersManager.get_action(_fighters[_f].number) == UnknownEnum.Value_1)
                        array_push(tokenList[3], _fighters[_f].token);
                    else if (global.playersManager.get_action(_fighters[_f].number) == UnknownEnum.Value_2)
                        array_push(tokenList[3], _fighters[_f].token);
                }
            }
        }
        
        var _i = array_length(tokenList) - 1;
        
        while (_i >= 0)
        {
            if (array_length(tokenList[_i]) == 0)
                array_delete(tokenList, _i, 1);
            
            _i--;
        }
        
        if (array_length(tokenList) > 0)
            throwWaveTimer.run();
        else
            allTokenThrow = true;
    };
    
    is_finished = function()
    {
        return allTokenThrow;
    };
    
    loop = function(arg0)
    {
        if (!is_finished() && throwWaveTimer.is_finished())
        {
            for (var _i = 0; _i < array_length(tokenList[tokenListCounter]); _i++)
                tokenList[tokenListCounter][_i].throw_it();
            
            tokenListCounter++;
            
            if (tokenListCounter > (array_length(tokenList) - 1))
            {
                allTokenThrow = true;
            }
            else
            {
                throwWaveTimer.reset();
                throwWaveTimer.run();
            }
        }
    };
}

function death_execution_manager() constructor
{
    waitForTimer = false;
    allCharChecked = false;
    nbrCharToCheck = 0;
    timerExecuteEffect = new myTimer(-4, 0.4);
    stateAfterDeath = undefined;
    
    reset = function()
    {
        waitForTimer = false;
        timerExecuteEffect.reset();
        allCharChecked = false;
        nbrCharToCheck = 0;
    };
    
    is_finished = function()
    {
        return allCharChecked;
    };
    
    check_death_state = function(arg0, arg1 = UnknownEnum.Value_0)
    {
        var _activateDeathState = false;
        
        for (var _p = 0; _p < global.playersCount; _p++)
        {
            var _char = global.playersManager.get_characters(_p);
            
            if (_char != -4 && instance_exists(_char) && _char.is_alive() && _char.hp <= 0)
            {
                _activateDeathState = true;
                _char.isDeadThisTurn = true;
            }
        }
        
        if (_activateDeathState)
        {
            stateAfterDeath = arg0;
            
            if (arg1 == UnknownEnum.Value_1)
                return UnknownEnum.Value_13;
            else
                return UnknownEnum.Value_20;
        }
        else
        {
            return arg0;
        }
    };
    
    loop = function()
    {
        if (!allCharChecked && (timerExecuteEffect.is_finished() || !waitForTimer) && global.waitingList.is_waiting_list_empty())
        {
            var _char = global.playersManager.get_characters(nbrCharToCheck);
            waitForTimer = false;
            
            if (_char != -4 && instance_exists(_char) && _char.is_dead_this_turn())
            {
                _char.stateNext = UnknownEnum.Value_2;
                
                if (_char.token.theType != UnknownEnum.Value_17)
                    _char.isInFight = false;
                
                _char.isAlive = false;
                waitForTimer = true;
            }
            
            nbrCharToCheck++;
            
            if (nbrCharToCheck >= global.playersCount)
                allCharChecked = true;
            
            if (allCharChecked == false && waitForTimer)
            {
                timerExecuteEffect.reset();
                timerExecuteEffect.run();
            }
        }
    };
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_9 = 9,
    Value_10,
    Value_11,
    Value_13 = 13,
    Value_17 = 17,
    Value_20 = 20,
    Value_26 = 26,
    Value_27,
    Value_28
}
