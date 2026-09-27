function c_monster_list() constructor
{
    monstersForest = [];
    monstersCity = [];
    monstersForestHeal = [];
    monstersGem = [];
    encounters = [];
    totalBiomeCount = 1;
    allDoorLength = [1, 2, 2, 3, 3, 4, 4, 4, 5, 5, 6];
    totalNbrDoor = array_length(allDoorLength) * totalBiomeCount;
    equalPartDoor = round(totalNbrDoor / totalBiomeCount);
    tokenList = [];
    cloverPosition = [];
    moonPosition = [];
    moonType = [];
    encounters = [];
    encounterNbrByDoor = [];
    newBiomePosition = [];
    moonDisabledPosition = [];
    
    reset_moon = function()
    {
        moonPosition = [];
        moonType = [];
    };
    
    reset_list = function()
    {
        moonDisabledPosition = [];
        encounters = [];
        encounterNbrByDoor = [];
        
        for (var _b = 0; _b < totalBiomeCount; _b++)
        {
            var _nbrOfMonsters = [];
            array_copy(_nbrOfMonsters, 0, allDoorLength, 0, array_length(allDoorLength));
            
            while (array_length(_nbrOfMonsters) > 0)
            {
                var _pickNumberRandom = minstd_int(global.rng, array_length(_nbrOfMonsters) - 1);
                array_push(encounterNbrByDoor, _nbrOfMonsters[_pickNumberRandom]);
                array_delete(_nbrOfMonsters, _pickNumberRandom, 1);
            }
        }
        
        for (var _i = 0; _i < array_length(encounterNbrByDoor); _i++)
        {
            encounters[_i] = [];
            
            for (var _j = 0; _j < encounterNbrByDoor[_i]; _j++)
                array_push(encounters[_i], -1);
        }
    };
    
    reset_clover = function()
    {
        cloverPosition = [];
    };
    
    reset_cards = function()
    {
        global.commonPotUsed = false;
    };
    
    newBiomePosition = [];
    
    doorCompletion = function(arg0, arg1) constructor
    {
        percentageCompletion = arg0;
        isNewBiome = arg1;
    };
    
    calculate_door_completion = function()
    {
        newBiomePosition = [];
        var _biomeCompletion = 0;
        
        for (var _i = 0; _i < array_length(encounterNbrByDoor); _i++)
        {
            var _struct = new doorCompletion(round(map_value(_i % equalPartDoor, 0, equalPartDoor, 0, 100)), false);
            
            if ((_i % equalPartDoor) == 0)
            {
                if (_i == 0)
                {
                    _struct.percentageCompletion = 0;
                }
                else
                {
                    _struct.percentageCompletion = 100;
                    _struct.isNewBiome = true;
                }
            }
            
            array_push(newBiomePosition, _struct);
            
            if ((_i % equalPartDoor) == 0 && _i != 0)
                _biomeCompletion++;
        }
        
        if (!global.isTutorialDone)
        {
            var _structTutoDoor = new doorCompletion(0, false);
            array_insert(newBiomePosition, 0, _structTutoDoor);
        }
        
        var _structLastDoor = new doorCompletion(100, false);
        array_push(newBiomePosition, _structLastDoor);
    };
    
    generate_token = function()
    {
        var _willHaveLover = choose_rng(false, true);
        var _loverLeftPosition = -1;
        var _loverRightPosition = -1;
        
        if (_willHaveLover)
        {
            _loverLeftPosition = minstd_int(global.rng, array_length(global.uiPos.tokenChain) - 1);
            _loverRightPosition = minstd_int(global.rng, array_length(global.uiPos.tokenChain) - 1);
            
            while (_loverLeftPosition == _loverRightPosition)
                _loverRightPosition = minstd_int(global.rng, array_length(global.uiPos.tokenChain) - 1);
        }
        
        var _everyToken = [UnknownEnum.Value_3, UnknownEnum.Value_4, UnknownEnum.Value_10, UnknownEnum.Value_9, UnknownEnum.Value_18, UnknownEnum.Value_20, UnknownEnum.Value_11, UnknownEnum.Value_12, UnknownEnum.Value_13, UnknownEnum.Value_15];
        tokenList = [];
        
        for (var _i = 0; _i < array_length(global.uiPos.tokenChain); _i++)
        {
            var _theTokenType;
            
            if (_i == _loverLeftPosition)
            {
                _theTokenType = UnknownEnum.Value_7;
            }
            else if (_i == _loverRightPosition)
            {
                _theTokenType = UnknownEnum.Value_8;
            }
            else
            {
                var _arrayIndex = minstd_int(global.rng, array_length(_everyToken) - 1);
                _theTokenType = _everyToken[_arrayIndex];
                array_delete(_everyToken, _arrayIndex, 1);
            }
            
            array_push(tokenList, _theTokenType);
        }
    };
    
    add_after = function(arg0, arg1, arg2, arg3)
    {
        var _afterDoorNbr = -1;
        var _afterSlotNbr = -1;
        var _i = arg3 - 1;
        
        while (_i >= arg2)
        {
            var _j = array_length(encounters[_i]) - 1;
            
            while (_j >= 0)
            {
                if (encounters[_i][_j] == arg0.structName)
                {
                    _afterSlotNbr = _j;
                    _afterDoorNbr = _i;
                    break;
                }
                
                _j--;
            }
            
            if (_afterDoorNbr != -1)
                break;
            
            _i--;
        }
        
        if (_afterDoorNbr != -1)
        {
            var _arrayNbrDoor = [];
            
            for (var _door = _afterDoorNbr; _door < array_length(encounters); _door++)
            {
                for (var _j = 0; _j < array_length(encounters[_door]); _j++)
                {
                    if (encounters[_door][_j] == -1 && ((_j > _afterSlotNbr && _door == _afterDoorNbr) || _door != _afterDoorNbr))
                    {
                        array_push(_arrayNbrDoor, _door);
                        break;
                    }
                }
            }
            
            if (array_length(_arrayNbrDoor) != 0)
            {
                var _randomDoor = minstd_int(global.rng, array_length(_arrayNbrDoor) - 1);
                var _nbrDoor = _arrayNbrDoor[_randomDoor];
                var _arrayNbrSlot = [];
                
                for (var _slot = 0; _slot < array_length(encounters[_nbrDoor]); _slot++)
                {
                    if (encounters[_nbrDoor][_slot] == -1 && ((_slot > _afterSlotNbr && _afterDoorNbr == _nbrDoor) || _afterDoorNbr != _nbrDoor))
                        array_push(_arrayNbrSlot, _slot);
                }
                
                var _randomSlot = minstd_int(global.rng, array_length(_arrayNbrSlot) - 1);
                encounters[_nbrDoor][_arrayNbrSlot[_randomSlot]] = arg1.structName;
                return true;
            }
        }
        
        return false;
    };
    
    add_in_list = function(arg0, arg1, arg2, arg3 = true)
    {
        if (!is_array(arg0))
            arg0 = [arg0];
        
        if (array_length(arg0) == 0)
            exit;
        
        var _arrayEverySlot = [];
        
        for (var _i = arg1; _i < arg2; _i++)
        {
            for (var _j = 0; _j < array_length(encounters[_i]); _j++)
            {
                if (encounters[_i][_j] == -1)
                    array_push(_arrayEverySlot, [_i, _j]);
            }
        }
        
        var _lengthSlot = array_length(_arrayEverySlot);
        var _resultDistribute = g_distribute(_lengthSlot, array_length(arg0));
        var _indexStart = 0;
        
        for (var _e = 0; _e < array_length(arg0); _e++)
        {
            var _start = _indexStart;
            var _end = (_indexStart + _resultDistribute[_e]) - 1;
            var _randomSlot = minstd_int_range(global.rng, _start, _end);
            encounters[_arrayEverySlot[_randomSlot][0]][_arrayEverySlot[_randomSlot][1]] = arg0[_e].structName;
            _indexStart += _resultDistribute[_e];
        }
    };
    
    add_in_random_door = function(arg0, arg1, arg2, arg3 = UnknownEnum.Value_0)
    {
        var _arrayEverySlot = [];
        
        for (var _i = arg1; _i < arg2; _i++)
        {
            for (var _j = 0; _j < array_length(encounters[_i]); _j++)
            {
                if (encounters[_i][_j] == -1)
                    array_push(_arrayEverySlot, [_i, _j]);
            }
        }
        
        var _randomDoor1 = minstd_int(global.rng, array_length(_arrayEverySlot) - 1);
        var _randomDoor2 = minstd_int(global.rng, array_length(_arrayEverySlot) - 1);
        var _randomDoorFinal;
        
        if (arg3 == UnknownEnum.Value_1)
            _randomDoorFinal = min(_randomDoor1, _randomDoor2);
        else if (arg3 == UnknownEnum.Value_2)
            _randomDoorFinal = max(_randomDoor1, _randomDoor2);
        else
            _randomDoorFinal = _randomDoor1;
        
        encounters[_arrayEverySlot[_randomDoorFinal][0]][_arrayEverySlot[_randomDoorFinal][1]] = arg0.structName;
        return _arrayEverySlot[_randomDoorFinal][0];
    };
    
    add_in_custom_position = function(arg0, arg1, arg2 = -1)
    {
        if (arg1 >= array_length(encounters))
            exit;
        
        var _theSlot;
        
        if (arg2 == -1)
            _theSlot = minstd_int(global.rng, array_length(encounters[arg1]) - 1);
        else
            _theSlot = arg2;
        
        if (_theSlot >= array_length(encounters[arg1]))
            exit;
        
        encounters[arg1][_theSlot] = arg0.structName;
    };
    
    define_clover_position = function()
    {
        reset_clover();
        var _unavailableMonsters = [global.monsters.babayaga.structName, global.monsters.funfair.structName, global.monsters.shop.structName, global.monsters.faun.structName];
        
        for (var _i = 0; _i < array_length(encounters); _i++)
        {
            var _posAvailable = [];
            
            for (var _j = 0; _j < array_length(encounters[_i]); _j++)
            {
                if (!array_contains(_unavailableMonsters, encounters[_i][_j]))
                    array_push(_posAvailable, _j);
            }
            
            var _position;
            
            if (array_length(_posAvailable) > 0)
                _position = _posAvailable[minstd_int(global.rng, array_length(_posAvailable) - 1)];
            else
                _position = -1;
            
            array_push(cloverPosition, _position);
        }
    };
    
    define_moon = function()
    {
        reset_moon();
        
        if (!global.isTutorialDone)
            exit;
        
        for (var _m = 0; _m < totalBiomeCount; _m++)
        {
            var _doorMin = equalPartDoor * _m;
            var _doorMax = _doorMin + equalPartDoor;
            var _arrayOfPossibility = [];
            
            for (var _md = _doorMin; _md < _doorMax; _md++)
            {
                if (array_contains(moonDisabledPosition, _md) == false)
                    array_push(_arrayOfPossibility, _md);
            }
            
            if (array_length(_arrayOfPossibility) > 0)
            {
                var _resultMoon = minstd_int(global.rng, array_length(_arrayOfPossibility) - 1);
                moonPosition[_m] = _arrayOfPossibility[_resultMoon];
                moonType[_m] = choose_rng(1, 2, 3);
            }
        }
    };
    
    fill_with_random_encounters = function(arg0, arg1, arg2)
    {
        var _arrayToCopy;
        
        if (arg0 == 0)
            _arrayToCopy = monstersForest;
        else if (arg0 == 1)
            _arrayToCopy = monstersCity;
        
        var _copyOfMonsters = [];
        array_copy(_copyOfMonsters, 0, _arrayToCopy, 0, array_length(_arrayToCopy));
        
        for (var _i = arg1; _i < arg2; _i++)
        {
            for (var _j = 0; _j < array_length(encounters[_i]); _j++)
            {
                if (encounters[_i][_j] == -1)
                {
                    var _theMonsterNbr = minstd_int(global.rng, array_length(_copyOfMonsters) - 1);
                    encounters[_i][_j] = _copyOfMonsters[_theMonsterNbr].structName;
                    array_delete(_copyOfMonsters, _theMonsterNbr, 1);
                }
            }
            
            array_copy(_copyOfMonsters, 0, _arrayToCopy, 0, array_length(_arrayToCopy));
        }
    };
    
    replace_monster = function(arg0, arg1)
    {
        for (var _i = 0; _i < array_length(encounters); _i++)
        {
            for (var _j = 0; _j < array_length(encounters[_i]); _j++)
            {
                if (encounters[_i][_j] == arg0.structName)
                    encounters[_i][_j] = arg1.structName;
            }
        }
    };
    
    define_list = function(arg0 = 0)
    {
        reset_list();
        generate_token();
        
        for (var _b = 0; _b < totalBiomeCount; _b++)
        {
            var _doorMin = equalPartDoor * _b;
            var _doorMax = _doorMin + equalPartDoor;
            
            if (arg0 != 0 && _b == 0)
            {
                add_in_custom_position(global.monsters.faun, 0, 0);
                array_push(moonDisabledPosition, 0);
            }
            
            var _shopNbr1 = add_in_random_door(global.monsters.shop, 1 + _doorMin, 2 + _doorMin);
            var _shopNbr2 = add_in_random_door(global.monsters.shop, 4 + _doorMin, 5 + _doorMin);
            var _shopNbr3 = add_in_random_door(global.monsters.shop, 7 + _doorMin, 8 + _doorMin);
            array_push(moonDisabledPosition, _shopNbr1);
            array_push(moonDisabledPosition, _shopNbr2);
            array_push(moonDisabledPosition, _shopNbr3);
            
            if (_b == 0)
            {
                add_in_random_door(global.monsters.squirrelKing, _doorMin + 2, _doorMax);
                var _newMiniGamePos = add_in_random_door(choose_rng(global.monsters.babayaga, global.monsters.funfair), _doorMin, _doorMax);
                array_push(moonDisabledPosition, _newMiniGamePos);
                var _whichHeal = choose_rng(global.monsters.fountainSorrowEmpty, global.monsters.magicStump);
                add_in_custom_position(_whichHeal, 2 + _doorMin, minstd_int(global.rng, array_length(encounters[2 + _doorMin]) - 1));
                var _whichWatcher = choose_rng(global.monsters.watcher, global.monsters.watcher, global.monsters.watcher, global.monsters.lostTimeWatcher);
                var _whichSecondHeal = (_whichHeal == global.monsters.fountainSorrowEmpty) ? _whichWatcher : global.monsters.magicStump;
                add_in_custom_position(_whichSecondHeal, 5 + _doorMin, minstd_int(global.rng, array_length(encounters[5 + _doorMin]) - 1));
                var _mommyNbr = choose_rng(1, 1, 1, 2, 2, 2, 3);
                
                for (var _i = 0; _i < _mommyNbr; _i++)
                    add_in_random_door(global.monsters.mommy, _doorMin, _doorMax);
                
                add_in_random_door(global.monsters.statueForest, _doorMin + 2, _doorMax - 2, UnknownEnum.Value_2);
                var _biomeCategory = choose_rng(1, 2);
                
                switch (_biomeCategory)
                {
                    case 1:
                        add_in_list([global.monsters.twoHeadedFawn, global.monsters.dogHand, global.monsters.hunter, global.monsters.mother, global.monsters.unconsolableFawn], _doorMin, _doorMax);
                        break;
                    
                    case 2:
                        add_in_list([global.monsters.sheep, global.monsters.dolly, global.monsters.hybrid, global.monsters.shepherdess], _doorMin, _doorMax);
                        add_in_random_door(global.monsters.maybeSheep, _doorMin + 2, _doorMax - 2, UnknownEnum.Value_2);
                        break;
                }
                
                add_in_random_door(global.monsters.mushroomKnight, _doorMin, _doorMax);
            }
            else if (_b == 1)
            {
                add_in_random_door(global.monsters.innkeeper, _doorMin + 2, _doorMax);
                var _whichHeal = choose_rng(global.monsters.lamplighter, global.monsters.lampostOff);
                add_in_custom_position(_whichHeal, 2 + _doorMin, minstd_int(global.rng, array_length(encounters[2 + _doorMin]) - 1));
                var _whichSecondHeal = (_whichHeal == global.monsters.lamplighter) ? global.monsters.lampostOn : global.monsters.lamplighter;
                add_in_custom_position(_whichSecondHeal, 5 + _doorMin, minstd_int(global.rng, array_length(encounters[5 + _doorMin]) - 1));
                var _pigeonNbr = choose_rng(1, 1, 1, 2, 2, 2, 3);
                
                for (var _i = 0; _i < _pigeonNbr; _i++)
                    add_in_random_door(global.monsters.pigeon, _doorMin, _doorMax);
                
                var _biomeCategory = choose_rng(1, 2);
                
                switch (_biomeCategory)
                {
                    case 1:
                        add_in_list([global.monsters.beggar, global.monsters.souillon, global.monsters.guard, global.monsters.dictator], _doorMin, _doorMax);
                        add_in_random_door(global.monsters.revolutionary, _doorMin + 2, _doorMax - 2, UnknownEnum.Value_2);
                        break;
                    
                    case 2:
                        add_in_list([global.monsters.minstrel, global.monsters.sandwichMan, global.monsters.banker], _doorMin, _doorMax);
                        break;
                }
                
                add_in_random_door(global.monsters.statue, _doorMin, _doorMax);
            }
            
            fill_with_random_encounters(_b, _doorMin, _doorMax);
        }
        
        if (!global.isTutorialDone)
        {
            var _arrayTutorial = [global.monsters.tutorialDamage.structName, global.monsters.tutorialDead.structName, global.monsters.tutorialVote.structName, global.monsters.tutorialReplay.structName];
            array_insert(encounters, 0, _arrayTutorial);
            
            for (var _t = 0; _t < array_length(moonDisabledPosition); _t++)
                moonDisabledPosition[_t]++;
            
            array_push(moonDisabledPosition, 0);
        }
    };
    
    init_monsters = function()
    {
        monstersForest = [global.monsters.animalBinder, global.monsters.creepyRabbit, global.monsters.unicorn, global.monsters.forgottenSlime, global.monsters.ratten, global.monsters.wildBoar, global.monsters.oracle, global.monsters.sleepParalysis, global.monsters.keeper, global.monsters.frog, global.monsters.snail, global.monsters.hedgehog, global.monsters.starMole, global.monsters.luckyChest];
        monstersCity = [global.monsters.madScientist, global.monsters.bellBoy, global.monsters.butcher, global.monsters.townCrier, global.monsters.operaGhost, global.monsters.ocularist, global.monsters.shoeshiner, global.monsters.prisonerChest, global.monsters.graveyardKeeper, global.monsters.libarian, global.monsters.keyMaster, global.monsters.pupperteer, global.monsters.costumer, global.monsters.carriageMadMan, global.monsters.catUndead, global.monsters.catAlive, global.monsters.catDead];
    };
    
    generate_data = function()
    {
        define_list(global.runCounter);
        define_clover_position();
        define_moon();
        reset_cards();
        calculate_door_completion();
    };
}

global.monsterList = new c_monster_list();

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_7 = 7,
    Value_8,
    Value_9,
    Value_10,
    Value_11,
    Value_12,
    Value_13,
    Value_15 = 15,
    Value_18 = 18,
    Value_20 = 20
}
