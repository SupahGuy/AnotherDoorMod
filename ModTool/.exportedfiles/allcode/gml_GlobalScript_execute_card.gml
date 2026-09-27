function execute_card(arg0, arg1, arg2, arg3, arg4, arg5)
{
    var _curChar = arg1;
    
    if (!_curChar.is_alive())
        return true;
    
    var _fighters = [];
    
    for (var _f = 0; _f < array_length(global.playersManager.get_characters()); _f++)
    {
        if (global.playersManager.get_characters(_f).is_in_fight())
            array_push(_fighters, global.playersManager.get_characters(_f));
    }
    
    var _fightersLength = array_length(_fighters);
    
    if (arg0.cardType == UnknownEnum.Value_4)
    {
        var _hasHallucinogenic = _curChar.effect_index(global.effect.hallucinogenicVision);
        
        if (_hasHallucinogenic != -1)
        {
            var _hallucinogenic = _curChar.get_effect(_hasHallucinogenic);
            
            if (_hallucinogenic.stack > 0)
                _hallucinogenic.increase_props(-1, _hallucinogenic.x, _hallucinogenic.y);
        }
    }
    
    if (arg3.effectRequiredToActivate[arg4] != undefined)
    {
        var _hasEffectRequiredToActivate = _curChar.effect_index(arg3.effectRequiredToActivate[arg4]);
        
        if (_hasEffectRequiredToActivate == -1)
            return false;
    }
    
    if (arg3.effectRequiredToSkip[arg4] != undefined)
    {
        var _hasEffectRequiredToSkip = _curChar.effect_index(arg3.effectRequiredToSkip[arg4]);
        
        if (_hasEffectRequiredToSkip != -1)
            return false;
    }
    
    var _lenghtLastChoiceLeft = (array_length(_curChar.lastChoiceWasLeftmost) == 1) ? 0 : (array_length(_curChar.lastChoiceWasLeftmost) - 2);
    var _lenghtLastChoiceRight = (array_length(_curChar.lastChoiceWasRightmost) == 1) ? 0 : (array_length(_curChar.lastChoiceWasRightmost) - 2);
    var _newTarget;
    
    switch (arg3.targetType[arg4])
    {
        case UnknownEnum.Value_0:
            _newTarget = _curChar;
            break;
        
        case UnknownEnum.Value_1:
            if (_curChar.lastChoiceWasLeftmost[_lenghtLastChoiceLeft])
                _newTarget = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_2:
            if (!_curChar.lastChoiceWasLeftmost[_lenghtLastChoiceLeft])
                _newTarget = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_3:
            if (_curChar.lastChoiceWasRightmost[_lenghtLastChoiceRight])
                _newTarget = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_4:
            if (!_curChar.lastChoiceWasRightmost[_lenghtLastChoiceRight])
                _newTarget = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_6:
            if (get_size(arg2) == 1 && _curChar.effect_index(global.effect.tapeworm) == -1)
                _newTarget = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_7:
            if (get_size(arg2) > 1 || _curChar.effect_index(global.effect.tapeworm) != -1)
                _newTarget = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_8:
            if (get_size(arg2) == _fightersLength)
                _newTarget = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_9:
            if (get_size(arg2) != _fightersLength)
                _newTarget = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_12:
            if ((get_size(arg2) % 2) == 1)
                _newTarget = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_13:
            if ((get_size(arg2) % 2) == 0)
                _newTarget = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_14:
            if (global.cardExecutionManager.randomPlayerThatMadeChoice == _curChar.number)
                _newTarget = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_15:
            _newTarget = [];
            var _number = global.playersManager.get_last_player_to_act(arg0.actionType);
            
            if (_number != -1 && _curChar.number == _number)
                _newTarget[0] = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_16:
            _newTarget = [];
            var _number = global.playersManager.get_first_player_to_act(arg0.actionType);
            
            if (_number != -1 && _curChar.number == _number)
                _newTarget[0] = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_18:
            _newTarget = [];
            var _number = global.playersManager.get_first_player_to_act(arg0.actionType);
            
            if (_number != -1 && _curChar.number != _number)
                _newTarget[0] = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_17:
            _newTarget = [];
            var _number = global.playersManager.get_last_player_to_act(arg0.actionType);
            
            if (_number != -1 && _curChar.number != _number)
                _newTarget[0] = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_22:
            if (array_get_index(global.cardExecutionManager.playersWithMostGem, _curChar) != -1)
                _newTarget = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_11:
            if (array_get_index(global.cardExecutionManager.playersWithMaxHp, _curChar) != -1)
                _newTarget = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_10:
            if (array_get_index(global.cardExecutionManager.playersWithMaxHp, _curChar) == -1)
                _newTarget = _curChar;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_5:
            _newTarget = [];
            
            for (var _pc = 0; _pc < global.playersCount; _pc++)
            {
                if (!global.playersManager.get_characters(_pc).is_alive())
                    array_push(_newTarget, global.playersManager.get_characters(_pc));
            }
            
            break;
        
        case UnknownEnum.Value_19:
            if (array_get_index(global.cardExecutionManager.playersWithLeastHp, _curChar) != -1)
                _newTarget = global.cardExecutionManager.playersWithLeastHp;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_20:
            if (array_get_index(global.cardExecutionManager.playersWithMaxHp, _curChar) != -1)
                _newTarget = global.cardExecutionManager.playersWithMaxHp;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_21:
            if (array_get_index(global.cardExecutionManager.playersWithLeastLastDirectDamage, _curChar) != -1)
                _newTarget = _curChar;
            else
                return false;
            
            _newTarget = [];
            _newTarget = global.cardExecutionManager.playersWithLeastLastDirectDamage;
            break;
        
        case UnknownEnum.Value_23:
            return false;
            break;
    }
    
    var _target = is_array(_newTarget) ? _newTarget : [_newTarget];
    var _amount = -1;
    
    switch (arg3.damageBased[arg4])
    {
        case UnknownEnum.Value_8:
            _amount = _curChar.hp * arg3.amount[arg4];
            break;
        
        case UnknownEnum.Value_1:
            _amount = round((_curChar.hp * arg3.amount[arg4]) / 100);
            _amount = max(_amount, 1);
            break;
        
        case UnknownEnum.Value_9:
            _amount = (global.cardExecutionManager.amountPlayersWithMaxHp - _curChar.hp) * arg3.amount[arg4];
            break;
        
        case UnknownEnum.Value_7:
            _amount = minstd_int_range(global.rng, arg3.amount[arg4][0], arg3.amount[arg4][1]);
            break;
        
        case UnknownEnum.Value_3:
            if (_curChar.hp < 50)
                _amount = 50 - _curChar.hp;
            else
                return false;
            
            break;
        
        case UnknownEnum.Value_5:
            _amount = arg3.amount[arg4][oFightManager.nbrFightersAtCardDraw - 1][get_size(arg2) - 1];
            break;
        
        case UnknownEnum.Value_4:
            _amount *= array_length(_target);
            break;
        
        case UnknownEnum.Value_10:
            _amount = _curChar.lastDirectDamage * arg3.amount[arg4];
            break;
        
        case UnknownEnum.Value_11:
            _amount = _curChar.lastDirectHeal * arg3.amount[arg4];
            break;
        
        case UnknownEnum.Value_12:
            _amount = round((_curChar.get_gem() * arg3.amount[arg4]) / 100);
            break;
        
        case UnknownEnum.Value_13:
            _amount = round(_curChar.get_gem() * arg3.amount[arg4]);
            break;
        
        case UnknownEnum.Value_17:
            _amount = 0;
            
            for (var _allAmountStackIncr = 0; _allAmountStackIncr < array_length(_curChar.effects); _allAmountStackIncr++)
                _amount += _curChar.effects[_allAmountStackIncr].stack;
            
            _amount *= arg3.amount[arg4];
            break;
        
        case UnknownEnum.Value_14:
            var _leastHp = global.cardExecutionManager.amountPlayersWithLeastHp;
            _amount = _leastHp * arg3.amount[arg4];
            break;
        
        case UnknownEnum.Value_15:
            var _mostHp = global.cardExecutionManager.amountPlayersWithMaxHp;
            _amount = _mostHp * arg3.amount[arg4];
            break;
        
        case UnknownEnum.Value_16:
            _amount = _curChar.hpLostDuringTheMonster * arg3.amount[arg4];
            break;
        
        case UnknownEnum.Value_6:
            _amount = max(1, round(arg3.amount[arg4] / get_size(arg2)));
            break;
        
        case UnknownEnum.Value_0:
            _amount = arg3.amount[arg4];
            break;
    }
    
    var _stack = -1;
    
    switch (arg3.stackBased[arg4])
    {
        case UnknownEnum.Value_2:
            _stack = arg3.stack[arg4][oFightManager.nbrFightersAtCardDraw - 1][get_size(arg2) - 1];
            break;
        
        case UnknownEnum.Value_3:
            _stack = arg3.stack[arg4] * get_size(arg2);
            break;
        
        case UnknownEnum.Value_4:
            _stack = minstd_int_range(global.rng, arg3.stack[arg4][0], arg3.stack[arg4][1]);
            break;
        
        case UnknownEnum.Value_0:
            _stack = arg3.stack[arg4];
            break;
        
        case UnknownEnum.Value_1:
            _stack = round((_curChar.get_gem() * arg3.stack[arg4]) / 100);
            break;
    }
    
    if (global.dayNightCycle.get_event() == UnknownEnum.Value_2)
    {
        if (arg3.damageBased[arg4] != UnknownEnum.Value_14 && arg3.damageBased[arg4] != UnknownEnum.Value_15)
        {
            _amount *= 2;
            _stack *= 2;
        }
    }
    
    var _chanceCardApplied = false;
    var _chanceCard = arg3.chance[arg4];
    
    if (_chanceCard == 100)
    {
        _chanceCardApplied = true;
    }
    else if (arg3.chanceClusivity[arg4] == UnknownEnum.Value_1)
    {
        var _arrayOfEveryChances = [];
        
        for (var _everyChance = 0; _everyChance < array_length(arg3.chanceClusivity); _everyChance++)
        {
            if (arg3.chance[_everyChance] < 100 && arg3.chanceClusivity[_everyChance] == UnknownEnum.Value_1)
            {
                array_push(_arrayOfEveryChances, _everyChance);
                array_push(_arrayOfEveryChances, arg3.chance[_everyChance]);
            }
        }
        
        var _chosenChance = choose_weighted(_arrayOfEveryChances, arg5);
        
        if (_chosenChance.elem == arg4)
            _chanceCardApplied = true;
    }
    else if (minstd_int(global.rng, 100) <= _chanceCard)
    {
        _chanceCardApplied = true;
    }
    
    var _damageTimes = arg3.damageTimes[arg4];
    
    for (var _t = 0; _t < get_size(_target); _t++)
    {
        if (!_chanceCardApplied)
        {
            if (arg3.chanceClusivity[arg4] != UnknownEnum.Value_1)
            {
                if (_stack != -1)
                    arg0.launch_effect(_target[_t]);
                else
                    arg0.launch_attack(_target[_t]);
            }
        }
        else
        {
            switch (arg3.actionType[arg4])
            {
                case global.effect.nothing:
                    return false;
                    break;
                
                case global.effect.antidote:
                    var _hasPoison = _target[_t].effect_index(global.effect.poison);
                    
                    if (_hasPoison != -1)
                    {
                        var _thePoison = _target[_t].get_effect(_hasPoison);
                        _thePoison.increase_props(-_thePoison.stack, _thePoison.x, _thePoison.y);
                    }
                    
                    break;
                
                case global.effect.attack:
                    if (global.fightManager.encounter.structMonster == global.monsters.tutorialDead)
                    {
                        if (_target[_t].number == 0 && global.playersCount > 1)
                            arg0.launch_attack(_target[_t], _target[_t].hp);
                        else
                            arg0.launch_attack(_target[_t], _target[_t].hp - 40 - 1);
                    }
                    else
                    {
                        arg0.launch_attack(_target[_t], _amount);
                    }
                    
                    break;
                
                case global.effect.attackMaybeSheep:
                    var _multDamageSheep = 0;
                    var _hasSheep = _target[_t].effect_index(global.effect.beeeh);
                    
                    if (_hasSheep != -1)
                    {
                        var _sheepEffect = _target[_t].get_effect(_hasSheep);
                        _multDamageSheep = _sheepEffect.stack;
                        _sheepEffect.increase_props(-_sheepEffect.stack, _sheepEffect.x, _sheepEffect.y);
                        
                        if (global.dayNightCycle.get_event() == UnknownEnum.Value_2)
                            _multDamageSheep *= 2;
                    }
                    
                    arg0.launch_attack(_target[_t], _amount + (5 * _multDamageSheep));
                    break;
                
                case global.effect.attackMultiple:
                    arg0.launch_attack(_target[_t], _amount, _damageTimes);
                    break;
                
                case global.effect.heal:
                    _target[_t].receive_heal(true, _amount);
                    break;
                
                case global.effect.healMultiple:
                    for (var _healMultiple = 0; _healMultiple < _amount; _healMultiple++)
                        _target[_t].receive_heal(true, 1);
                    
                    break;
                
                case global.effect.healSoft:
                    var _hp = _target[_t].hp;
                    _target[_t].update_hp_soft(_amount - _hp);
                    break;
                
                case global.effect.redPill:
                    var _hpToFind = _target[_t].get_hp_previous_turn(global.fightManager.get_fight_counter() - _amount);
                    var _hp = _target[_t].hp;
                    _target[_t].update_hp_soft(_hpToFind - _hp);
                    break;
                
                case global.effect.bluePill:
                case global.effect.greenPill:
                case global.effect.hazardousTransport:
                case global.effect.pigeonEgg:
                case global.effect.dynamite:
                case global.effect.magicStick:
                case global.effect.armor:
                case global.effect.poison:
                case global.effect.beeeh:
                case global.effect.feverishDefence:
                case global.effect.bandage:
                case global.effect.confusion:
                case global.effect.dragonSkin:
                case global.effect.finalThread:
                case global.effect.powerlessShot:
                case global.effect.kaboom:
                case global.effect.trapped:
                case global.effect.badTrip:
                case global.effect.uniqueGift:
                case global.effect.oracleBlessing:
                case global.effect.zlataLiquor:
                case global.effect.peacefulMind:
                case global.effect.magnyfyingGlass:
                case global.effect.motherCurse:
                case global.effect.tapeworm:
                case global.effect.radiance:
                case global.effect.murkyWater:
                case global.effect.goldenSap:
                case global.effect.rabbitFoot:
                case global.effect.nudge:
                case global.effect.darkWhispers:
                case global.effect.tooth:
                case global.effect.bellRevolt:
                case global.effect.deadBox:
                case global.effect.aliveBox:
                case global.effect.pearlyPerl:
                case global.effect.straw:
                case global.effect.stoneLife:
                case global.effect.mother:
                case global.effect.pieceOfCloth:
                case global.effect.predatoryInstinct:
                case global.effect.grapeDrink:
                case global.effect.slimeBall:
                case global.effect.ratTail:
                case global.effect.damagedShell:
                case global.effect.starShapedNose:
                case global.effect.thorn:
                case global.effect.ladybug:
                case global.effect.plague:
                case global.effect.badBlood:
                case global.effect.anotherFace:
                case global.effect.dictatorship:
                case global.effect.lute:
                case global.effect.sock:
                case global.effect.goldTicket:
                case global.effect.goldCoin:
                case global.effect.hazelnut:
                case global.effect.babyBottle:
                case global.effect.philosopherStone:
                case global.effect.pigeonHead:
                case global.effect.sweetDreams:
                case global.effect.loyalty:
                case global.effect.frostbite:
                case global.effect.manant:
                    arg0.launch_effect(_target[_t], arg3.actionType[arg4], _stack, arg0.launchEffectX, arg0.launchEffectY);
                    break;
                
                case global.effect.secureGem:
                    if (_amount > 0)
                    {
                        var _value = max(1, _amount);
                        g_exchange_gem(undefined, undefined, undefined, undefined, _value, UnknownEnum.Value_0, _target[_t].number, UnknownEnum.Value_1, _target[_t].number);
                    }
                    
                    break;
                
                case global.effect.convertHPRandomized:
                    var _hp = _target[_t].hp;
                    _target[_t].update_hp_soft(_amount - _hp);
                    break;
                
                case global.effect.hybridExchange:
                    var _hasBeeeh = _target[_t].effect_index(global.effect.beeeh);
                    
                    if (_hasBeeeh != -1)
                    {
                        var _beeeh = _target[_t].get_effect(_hasBeeeh);
                        
                        if (_beeeh.stack > 0)
                            arg0.launch_attack(_target[_t], _beeeh.stack * _amount);
                    }
                    
                    break;
                
                case global.effect.deleteBeeeh:
                    var _hasBeeeh = _target[_t].effect_index(global.effect.beeeh);
                    
                    if (_hasBeeeh != -1)
                    {
                        var _beeeh = _target[_t].get_effect(_hasBeeeh);
                        
                        if (_beeeh.stack > 0)
                            _beeeh.increase_props(-_beeeh.stack, _beeeh.x, _beeeh.y);
                    }
                    
                    break;
                
                case global.effect.fountainFilled:
                    global.monsterList.replace_monster(global.monsters.watcher, global.monsters.fountainSorrow);
                    global.monsterList.replace_monster(global.monsters.lostTimeWatcher, global.monsters.fountainSorrow);
                    break;
                
                case global.effect.beeehToGem:
                    var _hasEffectToConvert = _target[_t].effect_index(global.effect.beeeh);
                    
                    if (_hasEffectToConvert != -1)
                    {
                        var _theEffectToConvert = _target[_t].get_effect(_hasEffectToConvert);
                        
                        if (_theEffectToConvert.stack > 0)
                            g_exchange_gem(arg0.launchEffectX, arg0.launchEffectY, undefined, undefined, _theEffectToConvert.stack * _amount, UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, _target[_t].number);
                    }
                    
                    break;
                
                case global.effect.allPoisonToGem:
                    var _totalStack = 0;
                    
                    for (var _f = 0; _f < _fightersLength; _f++)
                    {
                        var _hasEffect = _fighters[_f].effect_index(global.effect.poison);
                        
                        if (_hasEffect != -1)
                        {
                            var _theEffect = _fighters[_f].get_effect(_hasEffect);
                            _totalStack += _theEffect.stack;
                        }
                    }
                    
                    if (_totalStack > 0)
                        g_exchange_gem(arg0.launchEffectX, arg0.launchEffectY, undefined, undefined, _totalStack * _amount, UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, _target[_t].number);
                    
                    break;
                
                case global.effect.effectToDamage:
                    var _theEffectToDamageTarget = _target[_t].effect_index(arg3.effectRequiredToActivate[arg4]);
                    
                    if (_theEffectToDamageTarget != -1)
                    {
                        var _theEffectToConvert = _target[_t].get_effect(_theEffectToDamageTarget);
                        _target[_t].receive_damage(true, _theEffectToConvert.stack * _amount);
                    }
                    
                    break;
                
                case global.effect.effectToGem:
                    var _theEffectToGemTarget = _target[_t].effect_index(arg3.effectRequiredToActivate[arg4]);
                    
                    if (_theEffectToGemTarget != -1)
                    {
                        var _theEffectToConvert = _target[_t].get_effect(_theEffectToGemTarget);
                        g_exchange_gem(arg0.launchEffectX, arg0.launchEffectY, undefined, undefined, _theEffectToConvert.stack * _amount, UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, _target[_t].number);
                    }
                    
                    break;
                
                case global.effect.deleteMother:
                    var _hasMother = _target[_t].effect_index(global.effect.mother);
                    
                    if (_hasMother != -1)
                    {
                        var _mother = _target[_t].get_effect(_hasMother);
                        _mother.increase_props(-_mother.stack, _mother.x, _mother.y);
                    }
                    
                    break;
                
                case global.effect.beeehToHeal:
                    var _hasBeeeh = _target[_t].effect_index(global.effect.beeeh);
                    
                    if (_hasBeeeh != -1)
                    {
                        var _beeeh = _target[_t].get_effect(_hasBeeeh);
                        
                        if (_beeeh.stack > 0)
                            _target[_t].receive_heal(true, _beeeh.stack * _amount);
                    }
                    
                    break;
                
                case global.effect.multiplyEffect:
                    var _arrayEffectLength = get_size(_target[_t].effects);
                    
                    if (_arrayEffectLength > 0)
                    {
                        var _randomEffect = minstd_int(global.rng, _arrayEffectLength - 1);
                        var _theEffect = _target[_t].get_effect(_randomEffect);
                        var _multiplyStack = (_theEffect.stack == 0) ? (_amount - 1) : (_theEffect.stack * (_amount - 1));
                        arg0.launch_effect(_target[_t], _theEffect.theStruct, _multiplyStack, arg0.launchEffectX, arg0.launchEffectY);
                    }
                    
                    break;
                
                case global.effect.deleteRandomEffect:
                    for (var _amountLoop = 0; _amountLoop < _amount; _amountLoop++)
                    {
                        var _effectsNbr = get_size(_target[_t].effects);
                        
                        if (_effectsNbr > 0)
                        {
                            var _randomEffect = minstd_int(global.rng, _effectsNbr - 1);
                            var _theEffect = _target[_t].get_effect(_randomEffect);
                            _theEffect.increase_props(-_theEffect.stack, _theEffect.x, _theEffect.y);
                        }
                    }
                    
                    break;
                
                case global.effect.gem:
                    g_exchange_gem(arg0.launchEffectX, arg0.launchEffectY, undefined, undefined, _amount, UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, _target[_t].number);
                    break;
                
                case global.effect.loseGem:
                    g_exchange_gem(undefined, undefined, undefined, undefined, _amount, UnknownEnum.Value_0, _target[_t].number, UnknownEnum.Value_2);
                    break;
                
                case global.effect.commonPot:
                    global.commonPotUsed = true;
                    break;
                
                case global.effect.tutorial:
                    global.fightManager.get_encounter().fightRoundCount = -1;
                    return false;
                    break;
                
                case global.effect.rezurrection:
                    _target[_t].rezurrection(_amount, _target[_t].hpMaxInit, undefined, false);
                    break;
                
                case global.effect.removeEffect:
                    _target[_t].delete_effect();
                    break;
            }
        }
    }
    
    return true;
}

function execute_effect(arg0, arg1, arg2 = undefined, arg3 = undefined, arg4 = undefined)
{
    if (!instance_exists(arg0))
        exit;
    
    var _arrayOfEffects = [];
    var _effectToAnimate = [];
    
    if (arg2 != undefined && arg3 != undefined && arg4 != undefined)
    {
        if (array_contains(arg3.condition, arg1))
        {
            var _structToPush = 
            {
                effectType: arg4,
                effectStruct: arg3,
                instance: arg2
            };
            _arrayOfEffects[0] = _structToPush;
        }
        else
        {
            return false;
        }
    }
    else
    {
        for (var _tokenEffect = 0; _tokenEffect < array_length(arg0.token.effectLinked); _tokenEffect++)
        {
            if (array_contains(arg0.token.effectLinked[_tokenEffect].condition, arg1))
            {
                var _structToPush = 
                {
                    effectType: UnknownEnum.Value_1,
                    effectStruct: arg0.token.effectLinked[_tokenEffect],
                    instance: arg0.token
                };
                array_push(_arrayOfEffects, _structToPush);
            }
        }
        
        for (var _charEffect = 0; _charEffect < array_length(arg0.effects); _charEffect++)
        {
            if (array_contains(arg0.effects[_charEffect].condition, arg1))
            {
                var _structToPush = 
                {
                    effectType: UnknownEnum.Value_0,
                    effectStruct: arg0.effects[_charEffect].theStruct,
                    instance: arg0.effects[_charEffect]
                };
                array_push(_arrayOfEffects, _structToPush);
            }
        }
    }
    
    for (var _effectsCounter = 0; _effectsCounter < array_length(_arrayOfEffects); _effectsCounter++)
    {
        var _effectInstance = _arrayOfEffects[_effectsCounter].instance;
        var _effectStruct = _arrayOfEffects[_effectsCounter].effectStruct;
        var _effectType = _arrayOfEffects[_effectsCounter].effectType;
        var _xEffectPop, _yEffectPop, _stack, _amount, _chance;
        
        if (_effectType == UnknownEnum.Value_1)
        {
            _amount = _effectStruct.amount;
            _stack = _effectStruct.stack;
            _chance = _effectStruct.chance;
            _xEffectPop = arg0.token.x;
            _yEffectPop = arg0.token.y;
        }
        else
        {
            if (_effectInstance != -4)
            {
                _amount = _effectInstance.amount;
                _stack = _effectInstance.stack;
                _chance = _effectInstance.chance;
                _xEffectPop = _effectInstance.x;
                _yEffectPop = _effectInstance.y;
            }
            else
            {
                _amount = _effectStruct.amount;
                _stack = 1;
                _chance = _effectStruct.chance;
                _xEffectPop = 0;
                _yEffectPop = 0;
            }
            
            if (_stack == 0)
                continue;
        }
        
        var _fighters = global.playersManager.get_fighters();
        var _fightersLength = array_length(_fighters);
        var _actionCurChar = global.playersManager.get_action(arg0.number);
        
        if (arg1 == UnknownEnum.Value_1 && arg0.hp == 0)
            exit;
        
        switch (_effectStruct)
        {
            case global.effect.deadBox:
            case global.effect.aliveBox:
                var _displayTextLabel;
                
                if (_effectStruct == global.effect.deadBox)
                    _displayTextLabel = "effect._deadBox";
                else
                    _displayTextLabel = "effect._aliveBox";
                
                var _arrayOfChoice = [];
                var _instanceCard = oCardItem;
                
                if (instance_number(_instanceCard) > 0)
                {
                    for (var _cards = 0; _cards < instance_number(_instanceCard); _cards++)
                    {
                        var _inst = instance_find(_instanceCard, _cards);
                        
                        if (((_inst.isLeftmostCard && _effectStruct == global.effect.aliveBox) || (_inst.isRightmostCard && _effectStruct == global.effect.deadBox)) && (_inst.cardType == UnknownEnum.Value_1 || _inst.cardType == UnknownEnum.Value_2 || _inst.cardType == UnknownEnum.Value_9))
                            array_push(_arrayOfChoice, _inst.actionType);
                    }
                }
                
                if (array_length(_arrayOfChoice) > 0)
                {
                    global.playersManager.apply_action(arg0.number, _arrayOfChoice[0], false, false);
                    arg0.create_float_text(_displayTextLabel, undefined, UnknownEnum.Value_0);
                    _effectInstance.increase_props(-1, _xEffectPop, _yEffectPop);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.goldCoin:
                for (var _p = 0; _p < _fightersLength; _p++)
                {
                    if (_fighters[_p].number != arg0.number && _fighters[_p].is_alive() && !_fighters[_p].is_dead_this_turn() && !global.playersManager.is_leaving(_fighters[_p].number))
                    {
                        _fighters[_p].receive_effect(global.effect.dictatorship, _stack * _amount[0], _xEffectPop, _yEffectPop);
                        array_push(_effectToAnimate, _effectInstance);
                    }
                }
                
                break;
            
            case global.effect.manant:
                g_exchange_gem(undefined, undefined, _effectInstance.x, _effectInstance.y, _amount[0] * _stack, UnknownEnum.Value_0, arg0.number, UnknownEnum.Value_2);
                array_push(_effectToAnimate, _effectInstance);
                break;
            
            case global.effect.dictatorship:
                if (global.playersManager.is_action_rightmost_choice(arg0.number))
                {
                    var _gemAmount = min(arg0.gem, _amount[0] * _stack);
                    g_exchange_gem(undefined, undefined, _effectInstance.x, _effectInstance.y, _gemAmount, UnknownEnum.Value_0, arg0.number, UnknownEnum.Value_2);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.pigeonEgg:
                if (arg1 == UnknownEnum.Value_1)
                {
                    if (global.fightManager.encounter.structMonster == global.monsters.pigeon)
                    {
                        var _gemAmount = round((arg0.get_gem() * _amount[0] * _stack) / 100);
                        g_exchange_gem(undefined, undefined, _effectInstance.x, _effectInstance.y, _gemAmount, UnknownEnum.Value_0, arg0.number, UnknownEnum.Value_2);
                        array_push(_effectToAnimate, _effectInstance);
                    }
                }
                
                break;
            
            case global.effect.hazelnut:
                if (global.loopManager.is_first_monster())
                    g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, arg0.damageIncoming * _stack * _amount[0], UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                
                break;
            
            case global.effect.sock:
                if (global.playersManager.is_action_rightmost_choice(arg0.number))
                    calculate_damage_reduction(arg0, arg0.damageIncoming, _amount[0], _stack, _effectStruct.sprite, _effectInstance, _effectToAnimate);
                
                break;
            
            case global.effect.lute:
                arg0.damagePartNbr += _stack * _amount[0];
                break;
            
            case global.effect.babyBottle:
                for (var _p = 0; _p < _fightersLength; _p++)
                {
                    if (_fighters[_p].number != arg0.number && _fighters[_p].is_alive() && !_fighters[_p].is_dead_this_turn() && !global.playersManager.is_leaving(_fighters[_p].number))
                    {
                        _fighters[_p].receive_effect(global.effect.confusion, _stack * _amount[0], _xEffectPop, _yEffectPop);
                        array_push(_effectToAnimate, _effectInstance);
                    }
                }
                
                break;
            
            case global.effect.motherCurse:
                g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, _stack * _amount[0], UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                array_push(_effectToAnimate, _effectInstance);
                break;
            
            case global.effect.pieceOfCloth:
                var _randChance = minstd_int(global.rng, 100);
                
                if (_randChance <= get_stacking_percentage(_chance, _stack))
                {
                    if (arg0.damageIncoming > 0)
                    {
                        arg0.receive_heal(false, arg0.damageIncoming, _effectStruct.sprite);
                        arg0.damageIncoming = 0;
                        array_push(_effectToAnimate, _effectInstance);
                    }
                }
                
                break;
            
            case global.effect.predatoryInstinct:
                if (arg0.hp <= ((arg0.hpMax * _amount[0]) / 100))
                    calculate_damage_reduction(arg0, arg0.damageIncoming, _amount[1] * _stack, _stack, _effectStruct.sprite, _effectInstance, _effectToAnimate);
                
                break;
            
            case global.effect.tooth:
                if (arg1 == UnknownEnum.Value_35)
                {
                    for (var _tooth = 0; _tooth < array_length(arg0.effects); _tooth++)
                    {
                        if (array_contains(arg0.effects[_tooth].condition, UnknownEnum.Value_27) || array_contains(arg0.effects[_tooth].condition, UnknownEnum.Value_9))
                        {
                            if (!array_contains(arg0.effects[_tooth].condition, UnknownEnum.Value_26))
                                array_push(arg0.effects[_tooth].condition, UnknownEnum.Value_26);
                            
                            if (!array_contains(arg0.effects[_tooth].condition, UnknownEnum.Value_10))
                                array_push(arg0.effects[_tooth].condition, UnknownEnum.Value_10);
                        }
                    }
                }
                else if (arg1 == UnknownEnum.Value_30)
                {
                    if (array_contains(effectIncoming.condition, UnknownEnum.Value_27) || array_contains(effectIncoming.condition, UnknownEnum.Value_9))
                    {
                        if (!array_contains(effectIncoming.condition, UnknownEnum.Value_26))
                            array_push(effectConditionIncoming, UnknownEnum.Value_26);
                        
                        if (!array_contains(effectIncoming.condition, UnknownEnum.Value_10))
                            array_push(effectConditionIncoming, UnknownEnum.Value_10);
                    }
                }
                else if (arg1 == UnknownEnum.Value_36)
                {
                    for (var _tooth = 0; _tooth < array_length(arg0.effects); _tooth++)
                    {
                        if (!array_contains(arg0.effects[_tooth].theStruct.condition, UnknownEnum.Value_26) && array_contains(arg0.effects[_tooth].condition, UnknownEnum.Value_26))
                        {
                            var _index = array_get_index(arg0.effects[_tooth].condition, UnknownEnum.Value_26);
                            array_delete(arg0.effects[_tooth].condition, _index, 1);
                        }
                        
                        if (!array_contains(arg0.effects[_tooth].theStruct.condition, UnknownEnum.Value_10) && array_contains(arg0.effects[_tooth].condition, UnknownEnum.Value_10))
                        {
                            var _index = array_get_index(arg0.effects[_tooth].condition, UnknownEnum.Value_10);
                            array_delete(arg0.effects[_tooth].condition, _index, 1);
                        }
                    }
                }
                
                break;
            
            case global.effect.bellRevolt:
                if (global.playersManager.someone_is_on_same_card(arg0.number))
                {
                    arg0.receive_heal(false, _stack * _amount[0], _effectStruct.sprite);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.grapeDrink:
                if (arg1 == UnknownEnum.Value_22)
                    arg0.healIncoming += _stack * _amount[0];
                else if (arg1 == UnknownEnum.Value_14)
                    arg0.damageIncoming += _stack * _amount[0];
                
                array_push(_effectToAnimate, _effectInstance);
                break;
            
            case global.effect.frostbite:
                var _fastestPlayer = global.playersManager.get_last_player_to_act();
                
                if (arg0.number == _fastestPlayer)
                {
                    arg0.receive_damage(false, stack * _amount[0], _effectStruct.sprite);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.rabbitFoot:
                var _fastestPlayer = global.playersManager.get_first_player_to_act();
                
                if (arg0.number == _fastestPlayer)
                {
                    arg0.receive_heal(false, _stack * _amount[0], _effectStruct.sprite);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.murkyWater:
                var _alreadyHaveEffect = false;
                
                for (var _eo = 0; _eo < array_length(arg0.effects); _eo++)
                {
                    if (arg0.effectIncoming.structName == arg0.effects[_eo].theStruct.structName)
                        _alreadyHaveEffect = true;
                }
                
                if (!_alreadyHaveEffect)
                {
                    arg0.effectStackIncoming = 0;
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.magnyfyingGlass:
                arg0.effectStackIncoming += _stack * _amount[0];
                array_push(_effectToAnimate, _effectInstance);
                break;
            
            case global.effect.magicStick:
                var _randChance = minstd_int(global.rng, 100);
                
                if (_randChance <= get_stacking_percentage(_chance, _stack))
                {
                    arg0.damageIncoming = 0;
                    array_push(_effectToAnimate, _effectInstance);
                    create_float_text("global._dodge", global.effect.magicStick.sprite, UnknownEnum.Value_0);
                }
                
                break;
            
            case global.effect.pearlyPerl:
                var _deadLeavePlayers = 0;
                
                for (var _dp = 0; _dp < global.playersCount; _dp++)
                {
                    if (!global.playersManager.get_characters(_dp).is_in_fight())
                        _deadLeavePlayers++;
                }
                
                if (_deadLeavePlayers > 0)
                {
                    g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, _deadLeavePlayers * _stack * _amount[0], UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.ratTail:
                for (var _p = 0; _p < _fightersLength; _p++)
                {
                    if (_fighters[_p].number != arg0.number && _fighters[_p].is_alive() && !_fighters[_p].is_dead_this_turn() && !global.playersManager.is_leaving(_fighters[_p].number))
                    {
                        _fighters[_p].receive_effect(global.effect.poison, _stack * _amount[0], _xEffectPop, _yEffectPop);
                        array_push(_effectToAnimate, _effectInstance);
                    }
                }
                
                break;
            
            case global.effect.damagedShell:
                if (global.loopManager.is_first_monster())
                    calculate_damage_reduction(arg0, arg0.damageIncoming, _amount[0], _stack, _effectStruct.sprite, _effectInstance, _effectToAnimate);
                
                break;
            
            case global.effect.starShapedNose:
                if (arg0.healIncoming > 0)
                {
                    arg0.healIncoming += _stack * _amount[0];
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.thorn:
                var _myAction = global.playersManager.get_action(arg0.number);
                var _thornActivated = false;
                
                for (var _p = 0; _p < _fightersLength; _p++)
                {
                    var _randChance = minstd_int(global.rng, 100);
                    
                    if (_randChance <= _chance)
                    {
                        if (global.playersManager.get_action(_fighters[_p].number) == _myAction && _fighters[_p].number != arg0.number)
                        {
                            _fighters[_p].receive_effect(global.effect.poison, _stack * _amount[0], _xEffectPop, _yEffectPop);
                            _thornActivated = true;
                        }
                    }
                }
                
                if (_thornActivated)
                    array_push(_effectToAnimate, _effectInstance);
                
                break;
            
            case global.effect.slimeBall:
                if (arg0.get_gem() < arg0.hp)
                {
                    g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, _stack * _amount[0], UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.radiance:
                var _healNumber = 0;
                
                for (var _p = 0; _p < _fightersLength; _p++)
                {
                    if (_fighters[_p].is_alive() && _fighters[_p].number != arg0.number)
                        _healNumber++;
                }
                
                if (_healNumber > 0)
                {
                    arg0.receive_heal(false, _healNumber * _stack * _amount[0], _effectStruct.sprite);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.sweetDreams:
                arg0.update_hp_max(-(_stack * _amount[0]), _effectStruct.sprite, true);
                arg0.receive_heal(false, _stack * _amount[1], _effectStruct.sprite);
                array_push(_effectToAnimate, _effectInstance);
                break;
            
            case global.effect.peacefulMind:
                var _randChance = minstd_int(global.rng, 100);
                
                if (_randChance <= get_stacking_percentage(_chance, _stack))
                {
                    var _effectOfChar = [];
                    
                    for (var _e = 0; _e < array_length(arg0.effects); _e++)
                    {
                        if (arg0.effects[_e].theStruct.structName != _effectStruct.structName)
                            array_push(_effectOfChar, arg0.effects[_e]);
                    }
                    
                    if (array_length(_effectOfChar) > 0)
                    {
                        var _indexNewCharge = minstd_int(global.rng, array_length(_effectOfChar) - 1);
                        _effectOfChar[_indexNewCharge].increase_props(_amount[0], _effectInstance.x, _effectInstance.y);
                        array_push(_effectToAnimate, _effectInstance);
                    }
                }
                
                break;
            
            case global.effect.straw:
                var _effectOfChar = [];
                
                for (var _e = 0; _e < array_length(arg0.effects); _e++)
                {
                    if (arg0.effects[_e].theStruct.structName != _effectStruct.structName)
                        array_push(_effectOfChar, arg0.effects[_e]);
                }
                
                if (array_length(_effectOfChar) > 0)
                {
                    var _indexNewCharge = minstd_int(global.rng, array_length(_effectOfChar) - 1);
                    _effectOfChar[_indexNewCharge].increase_props(_amount[0] * _stack, _effectInstance.x, _effectInstance.y);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.stoneLife:
                var _randChance = minstd_int(global.rng, 100);
                
                if (_randChance <= _chance)
                    g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, _stack * _amount[0], UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                
                break;
            
            case global.effect.bluePill:
                if (_effectInstance.stack < (_amount[0] - 1))
                {
                    _effectInstance.increase_props(1, _effectInstance.x, _effectInstance.y);
                }
                else
                {
                    var _hpToFind = arg0.get_hp_previous_turn(global.fightManager.get_fight_counter() - _amount[1]);
                    var _charHp = arg0.hp;
                    arg0.update_hp_soft(_hpToFind - _charHp, _effectStruct.sprite);
                    array_push(_effectToAnimate, _effectInstance);
                    _effectInstance.increase_props(-_effectInstance.stack, _effectInstance.x, _effectInstance.y);
                }
                
                break;
            
            case global.effect.greenPill:
                var _numberUniqueEffect = array_length(arg0.effects);
                g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, _stack * _amount[0] * _numberUniqueEffect, UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                break;
            
            case global.effect.uniqueGift:
                var _giftUsable = true;
                
                for (var _k = 0; _k < global.playersCount; _k++)
                {
                    var _theOtherChar = global.playersManager.get_characters(_k);
                    
                    if (!_theOtherChar.is_alive() || !_theOtherChar.is_in_fight())
                    {
                        _giftUsable = false;
                        break;
                    }
                }
                
                if (_giftUsable)
                {
                    g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, _stack * _amount[0], UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.dragonSkin:
                if (arg0.damageIncoming > 0)
                {
                    g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, _stack * _amount[0], UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.armor:
                calculate_damage_reduction(arg0, arg0.damageIncoming, _amount[0], _stack, _effectStruct.sprite, _effectInstance, _effectToAnimate);
                break;
            
            case global.effect.feverishDefence:
                if (global.playersManager.someone_is_on_same_card(arg0.number))
                    calculate_damage_reduction(arg0, arg0.damageIncoming, _amount[0], _stack, _effectStruct.sprite, _effectInstance, _effectToAnimate);
                
                break;
            
            case global.effect.finalThread:
                var _hpToLose = _amount[0] * _stack;
                var _gemToWin = _amount[1] * _stack;
                g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, _gemToWin, UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                arg0.receive_damage(false, _hpToLose, _effectStruct.sprite);
                array_push(_effectToAnimate, _effectInstance);
                break;
            
            case global.effect.kaboom:
                if (_stack < 4)
                {
                    _effectInstance.increase_props(1, _effectInstance.x, _effectInstance.y);
                }
                else
                {
                    arg0.receive_damage(false, _amount[0], _effectStruct.sprite);
                    _effectInstance.increase_props(-_stack, _effectInstance.x, _effectInstance.y);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.powerlessShot:
                if (arg0.hp >= ((arg0.hpMax * _amount[0]) / 100))
                    calculate_damage_reduction(arg0, arg0.damageIncoming, _amount[1], _stack, _effectStruct.sprite, _effectInstance, _effectToAnimate);
                
                break;
            
            case global.effect.bandage:
                arg0.healIncoming = 0;
                g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, _stack * _amount[0], UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                array_push(_effectToAnimate, _effectInstance);
                break;
            
            case global.effect.goldenSap:
                if (arg0.hp <= ((arg0.hpMax * _amount[0]) / 100))
                    g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, _amount[1] * _stack, UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                
                break;
            
            case global.effect.poison:
                arg0.receive_damage(false, _amount[0] * _stack, _effectStruct.sprite);
                array_push(_effectToAnimate, _effectInstance);
                break;
            
            case global.effect.tapeworm:
                arg0.receive_damage(false, _amount[0] * _stack, _effectStruct.sprite);
                break;
            
            case global.effect.hazardousTransport:
                if (arg1 == UnknownEnum.Value_1)
                {
                    if (global.fightManager.encounter.structMonster == global.monsters.mommy)
                    {
                        arg0.receive_damage(false, _amount[0] * _stack, _effectStruct.sprite);
                        _effectInstance.increase_props(-_effectInstance.stack, _effectInstance.x, _effectInstance.y);
                        array_push(_effectToAnimate, _effectInstance);
                    }
                }
                else if (arg1 == UnknownEnum.Value_11)
                {
                    g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, _amount[1] * _stack, UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.oracleBlessing:
                g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, _amount[0] * _stack, UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                var _randChance = minstd_int(global.rng, 100);
                
                if (_randChance <= _chance)
                    arg0.receive_damage(false, _amount[1] * _stack, _effectStruct.sprite);
                
                array_push(_effectToAnimate, _effectInstance);
                break;
            
            case global.effect.confusedMoon:
            case global.effect.anotherFace:
                if (global.fightManager.isFightActive)
                {
                    var _isMiniGame = global.fightManager.encounter.structMonster == global.monsters.funfair || global.fightManager.encounter.structMonster == global.monsters.babayaga || global.fightManager.encounter.structMonster == global.monsters.faun || global.fightManager.encounter.structMonster == global.monsters.platonia;
                    
                    if (_isMiniGame)
                        return false;
                }
                
                var _shouldRandomizeAction = false;
                
                if (global.loopManager.playersConfusedLitha == arg0.number)
                    _shouldRandomizeAction = true;
                
                if (_shouldRandomizeAction)
                {
                    var _arrayOfChoice = [];
                    var _instanceCard = oCardItem;
                    
                    if (instance_number(_instanceCard) > 0)
                    {
                        for (var _cards = 0; _cards < instance_number(_instanceCard); _cards++)
                        {
                            var _inst = instance_find(_instanceCard, _cards);
                            
                            if (global.playersManager.get_action(arg0.number) != _inst.actionType)
                            {
                                if (_inst.cardType == UnknownEnum.Value_1 || _inst.cardType == UnknownEnum.Value_2)
                                    array_push(_arrayOfChoice, _inst.actionType);
                                else if (_inst.cardType == UnknownEnum.Value_4 && arg0.effect_index(global.effect.hallucinogenicVision) != -1)
                                    array_push(_arrayOfChoice, _inst.actionType);
                            }
                        }
                        
                        if (array_length(_arrayOfChoice) > 0)
                        {
                            var _randomId = minstd_int(global.rng, get_size(_arrayOfChoice) - 1);
                            global.playersManager.apply_action(arg0.number, _arrayOfChoice[_randomId], false, false);
                        }
                    }
                }
                
                var _displayTextLabel;
                
                if (_effectStruct == global.effect.anotherFace)
                {
                    _displayTextLabel = "effect._anotherFace";
                    _effectInstance.increase_props(-1, _effectInstance.x, _effectInstance.y);
                }
                else if (_effectStruct == global.effect.confusedMoon)
                {
                    _displayTextLabel = "effect._litha";
                }
                
                arg0.create_float_text(_displayTextLabel, undefined, UnknownEnum.Value_0);
                break;
            
            case global.effect.confusion:
            case global.effect.badTrip:
                var _displayTextLabel;
                
                if (_effectStruct == global.effect.badTrip)
                    _displayTextLabel = "effect._badTrip";
                else
                    _displayTextLabel = "effect._confusion";
                
                var _arrayOfChoice = [];
                var _instanceCard = oCardItem;
                
                if (instance_number(_instanceCard) > 0)
                {
                    for (var _cards = 0; _cards < instance_number(_instanceCard); _cards++)
                    {
                        var _inst = instance_find(_instanceCard, _cards);
                        
                        if (_inst.cardType == UnknownEnum.Value_1 || _inst.cardType == UnknownEnum.Value_2 || _inst.cardType == UnknownEnum.Value_9)
                            array_push(_arrayOfChoice, _inst.actionType);
                        else if (_inst.cardType == UnknownEnum.Value_4 && arg0.effect_index(global.effect.hallucinogenicVision) != -1)
                            array_push(_arrayOfChoice, _inst.actionType);
                    }
                }
                
                if (array_length(_arrayOfChoice) > 0)
                {
                    var _randomId = minstd_int(global.rng, get_size(_arrayOfChoice) - 1);
                    global.playersManager.apply_action(arg0.number, _arrayOfChoice[_randomId], false, false);
                    arg0.create_float_text(_displayTextLabel, undefined, UnknownEnum.Value_0);
                    
                    if (_effectStruct == global.effect.badTrip)
                        arg0.receive_effect(global.effect.hallucinogenicVision, 1, _xEffectPop, _yEffectPop);
                    
                    _effectInstance.increase_props(-1, _xEffectPop, _yEffectPop);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.trapped:
                if (global.loopManager.has_more_door())
                {
                    global.playersManager.apply_action(arg0.number, UnknownEnum.Value_2, false, false);
                    arg0.create_float_text("effect._trapped", undefined, UnknownEnum.Value_0);
                    _effectInstance.increase_props(-1, _effectInstance.x, _effectInstance.y);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.hallucinogenicVision:
                var _instanceCardItem = instance_number(oCardItem);
                
                for (var _halluCardCounter = 0; _halluCardCounter < _instanceCardItem; _halluCardCounter++)
                {
                    var _inst = instance_find(oCardItem, _halluCardCounter);
                    
                    if (_inst.actionType == _actionCurChar && _inst.cardType == UnknownEnum.Value_4)
                    {
                        _effectInstance.increase_props(-1, _effectInstance.x, _effectInstance.y);
                        array_push(_effectToAnimate, _effectInstance);
                    }
                }
                
                break;
            
            case global.effect.philosopherToken:
                arg0.rezurrection(_amount[0], _amount[0], undefined, false);
                arg0.token.change_type(UnknownEnum.Value_0);
                array_push(_effectToAnimate, _effectInstance);
                arg0.delete_effect();
                break;
            
            case global.effect.philosopherStone:
                arg0.rezurrection(_amount[0] * _stack, arg0.hpMaxInit, undefined, false);
                arg0.token.change_type(UnknownEnum.Value_0);
                _effectInstance.increase_props(-1, _effectInstance.x, _effectInstance.y);
                array_push(_effectToAnimate, _effectInstance);
                arg0.delete_effect();
                break;
            
            case global.effect.dynamite:
                var _hasTouchedAnyone = false;
                
                for (var _p = 0; _p < _fightersLength; _p++)
                {
                    if (_fighters[_p].number != arg0.number && !_fighters[_p].is_dead_this_turn() && global.playersManager.get_action(_fighters[_p].number) != UnknownEnum.Value_1)
                    {
                        _fighters[_p].receive_effect(global.effect.kaboom, 1, _xEffectPop, _yEffectPop);
                        _hasTouchedAnyone = true;
                    }
                }
                
                if (_hasTouchedAnyone)
                    array_push(_effectToAnimate, _effectInstance);
                
                break;
            
            case global.effect.calculatedRisk:
            case global.effect.goldTicket:
                var _value = min(arg0.gem, _amount[0] * _stack);
                g_exchange_gem(undefined, undefined, undefined, undefined, _value, UnknownEnum.Value_0, arg0.number, UnknownEnum.Value_1, arg0.number);
                array_push(_effectToAnimate, _effectInstance);
                break;
            
            case global.effect.cloverToken:
                if (_actionCurChar == UnknownEnum.Value_3 || _actionCurChar == UnknownEnum.Value_4 || _actionCurChar == UnknownEnum.Value_5 || _actionCurChar == UnknownEnum.Value_6)
                {
                    var _cardNumber;
                    
                    switch (_actionCurChar)
                    {
                        case UnknownEnum.Value_3:
                            _cardNumber = 0;
                            break;
                        
                        case UnknownEnum.Value_4:
                            _cardNumber = 1;
                            break;
                        
                        case UnknownEnum.Value_5:
                            _cardNumber = 2;
                            break;
                        
                        case UnknownEnum.Value_6:
                            _cardNumber = 3;
                            break;
                    }
                    
                    if (array_length(global.actionCards.theHand) > 0)
                    {
                        var _inst = global.actionCards.theHand[_cardNumber];
                        
                        if (instance_exists(_inst))
                        {
                            if (_inst.hasClover)
                            {
                                global.monsterList.monsterCloverNumber = -1;
                                g_exchange_gem(oClover.x, oClover.y, undefined, undefined, _amount[0], UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                                array_push(_effectToAnimate, _effectInstance);
                            }
                        }
                    }
                }
                
                break;
            
            case global.effect.tocanToken:
                var _whoHasTocan = global.playersManager.who_has_token_type(UnknownEnum.Value_20);
                var _characters = global.playersManager.get_characters();
                var _listOfCharacters = [];
                
                for (var _c = 0; _c < array_length(_characters); _c++)
                {
                    if (_whoHasTocan != _characters[_c].number && _characters[_c].is_in_fight() && _characters[_c].is_alive() && !_characters[_c].is_dead_this_turn() && global.playersManager.get_action(_characters[_c].number) != UnknownEnum.Value_1)
                        array_push(_listOfCharacters, _characters[_c]);
                }
                
                var _listOfCharactersLength = array_length(_listOfCharacters);
                
                if (_listOfCharactersLength > 0)
                {
                    var _randomAlivePlayerNbr = minstd_int(global.rng, _listOfCharactersLength - 1);
                    var _randomAlivePlayer = _listOfCharacters[_randomAlivePlayerNbr];
                    arg0.token.clone(_randomAlivePlayer.number, arg0.token.xDraw, arg0.token.yDraw);
                    var _gemAmount = round((_amount[0] * _randomAlivePlayer.get_gem()) / 100);
                    g_exchange_gem(undefined, undefined, undefined, undefined, _gemAmount, UnknownEnum.Value_0, _randomAlivePlayer.number, UnknownEnum.Value_2);
                }
                
                break;
            
            case global.effect.cursedLoverSameChoice:
                var _loverSameChoice = false;
                
                for (var _p = 0; _p < get_size(_fighters); _p++)
                {
                    if (_actionCurChar != UnknownEnum.Value_0 && _actionCurChar != UnknownEnum.Value_13 && global.playersManager.get_action(_fighters[_p].number) == _actionCurChar && _fighters[_p].number != arg0.number && (_fighters[_p].token.theType == UnknownEnum.Value_7 || _fighters[_p].token.theType == UnknownEnum.Value_8))
                        _loverSameChoice = true;
                }
                
                if (_loverSameChoice)
                {
                    arg0.receive_heal(false, _amount[0]);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.cursedLoverDeath:
                var _anotherLoverChar = -4;
                
                for (var _p = 0; _p < get_size(_fighters); _p++)
                {
                    if (_fighters[_p].number != arg0.number && (_fighters[_p].token.theType == UnknownEnum.Value_7 || _fighters[_p].token.theType == UnknownEnum.Value_8))
                        _anotherLoverChar = global.playersManager.get_characters(_fighters[_p].number);
                }
                
                if (_anotherLoverChar != -4)
                {
                    var _shouldTakeDamage = true;
                    
                    if (global.playersManager.get_action(_anotherLoverChar.number) == UnknownEnum.Value_1)
                        _shouldTakeDamage = false;
                    
                    if (_shouldTakeDamage)
                    {
                        _anotherLoverChar.receive_damage(false, _amount[0]);
                        array_push(_effectToAnimate, _effectInstance);
                    }
                }
                
                break;
            
            case global.effect.autocracy:
                if (global.loopManager.has_more_door())
                {
                    var _whoHasAutocracy = global.playersManager.who_has_token_type(UnknownEnum.Value_9);
                    
                    if (_whoHasAutocracy != -1)
                    {
                        var _autocracyIsLeaving = global.playersManager.is_leaving(_whoHasAutocracy);
                        
                        if (_autocracyIsLeaving)
                        {
                            for (var _i = 0; _i < get_size(_fighters); _i++)
                            {
                                var _fighterChar = global.playersManager.get_characters(_fighters[_i].number);
                                
                                if (_fighters[_i].number != _whoHasAutocracy && _fighterChar.is_alive())
                                {
                                    global.playersManager.apply_action(_fighters[_i].number, UnknownEnum.Value_2, false, false);
                                    _fighters[_i].create_float_text("token._autocracy", undefined, UnknownEnum.Value_0);
                                    _fighterChar.token.throw_it();
                                }
                            }
                        }
                    }
                }
                
                break;
            
            case global.effect.vulture:
                arg0.receive_heal(false, _amount[0], _effectStruct.sprite);
                array_push(_effectToAnimate, _effectInstance);
                break;
            
            case global.effect.gnomish:
                if (global.loopManager.is_last_monster())
                {
                    arg0.damageIncoming = min(arg0.damageIncoming, _amount[0]);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
            
            case global.effect.valor:
                if (arg1 == UnknownEnum.Value_17)
                    arg0.damageIncoming = min(arg0.damageIncoming, _amount[1]);
                else if (arg1 == UnknownEnum.Value_24)
                    arg0.healIncoming = min(arg0.healIncoming, _amount[1]);
                
                break;
            
            case global.effect.plague:
                if (arg1 == UnknownEnum.Value_1)
                {
                    arg0.receive_damage(false, _amount[1], _effectStruct.sprite);
                    array_push(_effectToAnimate, _effectInstance);
                }
                else if (arg1 == UnknownEnum.Value_9)
                {
                    var _randomTargetPlague = [];
                    
                    for (var _p = 0; _p < _fightersLength; _p++)
                    {
                        if (global.playersManager.is_staying(_fighters[_p].number))
                            array_push(_randomTargetPlague, _fighters[_p]);
                    }
                    
                    if (array_length(_randomTargetPlague) > 0)
                    {
                        var _theRandomTargetPlague = minstd_int(global.rng, array_length(_randomTargetPlague) - 1);
                        _randomTargetPlague[_theRandomTargetPlague].receive_effect(global.effect.plague, _effectInstance.stack, _xEffectPop, _yEffectPop);
                        array_push(_effectToAnimate, _effectInstance);
                    }
                }
                
                break;
            
            case global.effect.badBlood:
                if (arg1 == UnknownEnum.Value_1)
                {
                    if ((_stack % 2) == 1)
                    {
                        arg0.receive_damage(false, _amount[0] * _stack, _effectStruct.sprite);
                        array_push(_effectToAnimate, _effectInstance);
                    }
                }
                else if (arg1 == UnknownEnum.Value_11)
                {
                    _effectInstance.increase_props(1, _effectInstance.x, _effectInstance.y);
                }
                
                break;
            
            case global.effect.nudge:
                var _anotherOneIsLeaving = false;
                
                for (var _p = 0; _p < _fightersLength; _p++)
                {
                    if (global.playersManager.get_action(_fighters[_p].number) == UnknownEnum.Value_1)
                        _anotherOneIsLeaving = true;
                }
                
                if (!_anotherOneIsLeaving)
                    arg0.gemIncoming += _amount[0] * _stack;
                
                break;
            
            case global.effect.blessed:
                if (global.loopManager.state == UnknownEnum.Value_10)
                {
                    var _halfGem = g_distribute(arg0.gem, _amount[1]);
                    g_exchange_gem(undefined, undefined, undefined, undefined, _halfGem[1], UnknownEnum.Value_0, arg0.number, UnknownEnum.Value_2);
                    arg0.gemSecureIncoming = _halfGem[0];
                }
                
                break;
            
            case global.effect.loniless:
                if (global.loopManager.state == UnknownEnum.Value_10)
                {
                    var _nbrLeaving = 0;
                    
                    for (var _p = 0; _p < _fightersLength; _p++)
                    {
                        if (global.playersManager.is_leaving(_fighters[_p].number))
                            _nbrLeaving++;
                    }
                    
                    if (_nbrLeaving >= 2)
                        arg0.gemSecureIncoming *= _amount[0];
                }
                
                break;
            
            case global.effect.necrotic:
                break;
            
            case global.effect.beeeh:
                if (arg1 == UnknownEnum.Value_35)
                {
                    arg0.update_hp_max(_amount[0], _effectStruct.sprite, true, true, _amount[0]);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                var _hasZlata = arg0.effect_index(global.effect.zlataLiquor);
                
                if (arg1 == UnknownEnum.Value_11 && _hasZlata != -1)
                {
                    var _zlata = arg0.get_effect(_hasZlata);
                    arg0.receive_effect(global.effect.beeeh, _zlata.stack * _zlata.amount[0], _zlata.x, _zlata.y);
                }
                
                break;
            
            case global.effect.loyalty:
                if (arg1 == UnknownEnum.Value_35)
                {
                    arg0.update_hp_max(_amount[0], _effectStruct.sprite, true, true, _amount[0]);
                    g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, _amount[1], UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                var _hasZlata = arg0.effect_index(global.effect.zlataLiquor);
                
                if (arg1 == UnknownEnum.Value_11 && _hasZlata != -1)
                {
                    var _zlata = arg0.get_effect(_hasZlata);
                    arg0.receive_effect(global.effect.loyalty, _zlata.stack * _zlata.amount[0], _zlata.x, _zlata.y);
                }
                
                break;
            
            case global.effect.mother:
                var _hasZlata = arg0.effect_index(global.effect.zlataLiquor);
                
                if (arg1 == UnknownEnum.Value_35)
                {
                    arg0.update_hp_max(_amount[0], _effectStruct.sprite, true, true, _amount[0]);
                    g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, _amount[1], UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                    array_push(_effectToAnimate, _effectInstance);
                }
                else if (arg1 == UnknownEnum.Value_11 && _hasZlata != -1)
                {
                    var _zlata = arg0.get_effect(_hasZlata);
                    arg0.receive_effect(global.effect.mother, _zlata.stack * _zlata.amount[0], _zlata.x, _zlata.y);
                }
                else if (arg1 == UnknownEnum.Value_6)
                {
                    if (global.loopManager.has_more_door() && global.playersManager.is_everybody_alive() && global.playersManager.is_everybody_fighthing() && global.playersCount > 1)
                    {
                        global.playersManager.apply_action(arg0.number, UnknownEnum.Value_2, false, false);
                        arg0.create_float_text(_effectInstance.theStruct.name, undefined, UnknownEnum.Value_0);
                        array_push(_effectToAnimate, _effectInstance);
                    }
                }
                
                break;
            
            case global.effect.pigeonHead:
                if (arg0.hp == _amount[0] || arg0.hp == _amount[1])
                {
                    g_exchange_gem(_xEffectPop, _yEffectPop, undefined, undefined, _amount[1] * _stack, UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, arg0.number);
                    array_push(_effectToAnimate, _effectInstance);
                }
                
                break;
        }
    }
    
    for (var _a = 0; _a < array_length(_effectToAnimate); _a++)
    {
        if (instance_exists(_effectToAnimate[_a]))
        {
            if (_effectToAnimate[_a].object_index == oEffect)
                _effectToAnimate[_a].wiggle.run();
        }
    }
}

function calculate_damage_reduction(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
    if (arg1 > 0)
    {
        var _damageReduction = arg3 * arg2;
        arg0.create_float_text(-min(arg1, _damageReduction), arg4, UnknownEnum.Value_3);
        arg0.damageIncoming = max(arg1 - _damageReduction, 0);
        arg0.damageMinimumIncoming += arg3;
        array_push(arg6, arg5);
    }
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
    Value_30 = 30,
    Value_35 = 35,
    Value_36
}
