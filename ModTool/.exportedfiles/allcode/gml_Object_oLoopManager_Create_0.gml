state = undefined;
statePrev = undefined;
stateNext = UnknownEnum.Value_0;
currentDoorNbr = 0;

incr_door_counter = function()
{
    if (has_more_door())
    {
        currentDoorNbr++;
        var _widthBarMax = sprite_get_width(global.doorContinue.sprCompletionDoor);
        var _widthBar = (global.monsterList.newBiomePosition[get_current_door()].percentageCompletion * _widthBarMax) / 100;
        global.doorContinue.barCompletionWidthTo = _widthBar;
        
        if (global.monsterList.newBiomePosition[get_current_door()].isNewBiome)
            global.biomeNext = global.biomeCur + 1;
        
        update_rewards();
    }
};

get_current_door_length = function()
{
    return array_length(global.monsterList.encounters[get_current_door()]);
};

get_nbr_door_total = function()
{
    return array_length(global.monsterList.encounters);
};

has_more_door = function()
{
    return currentDoorNbr < get_nbr_door_total();
};

is_last_door = function()
{
    return currentDoorNbr == (get_nbr_door_total() - 1);
};

get_current_door = function()
{
    return currentDoorNbr;
};

generate_reward_reference = function()
{
    var _steps = [];
    
    for (var _i = 0; _i < array_length(global.monsterList.encounterNbrByDoor); _i++)
    {
        var _newAdditionGem = _i + global.monsterList.encounterNbrByDoor[_i];
        array_push(_steps, _newAdditionGem);
    }
    
    array_push(_steps, 25);
    return _steps;
};

gemRewardMin = 1;
gemRewardMax = 10;
gemRewardReference = [];
gemReward = 0;
gemRewardNext = 0;

update_rewards = function()
{
    gemReward = gemRewardReference[min(get_current_door(), array_length(gemRewardReference) - 1)];
    
    if (has_more_door())
    {
        gemRewardNext = gemRewardReference[min(get_current_door() + 1, array_length(gemRewardReference) - 1)];
        global.narratorTv.update_monsters_number();
    }
    else
    {
        gemRewardNext = gemReward;
    }
    
    with (oGemDoor)
        update_rewards_tooltip();
};

get_gem_reward = function()
{
    return gemReward;
};

get_gem_reward_next = function()
{
    return gemRewardNext;
};

monsterActiveNumber = 0;

get_monster_active_number = function()
{
    return monsterActiveNumber;
};

is_last_monster = function()
{
    return monsterActiveNumber == (get_current_door_length() - 1);
};

has_more_monster = function()
{
    return monsterActiveNumber < get_current_door_length();
};

is_first_monster = function()
{
    return monsterActiveNumber == 0;
};

get_current_monster = function()
{
    var _monsterStruct = struct_get(global.monsters, global.monsterList.encounters[get_current_door()][monsterActiveNumber]);
    return _monsterStruct;
};

get_monster_at_position = function(arg0)
{
    var _monsterStruct = struct_get(global.monsters, global.monsterList.encounters[get_current_door()][arg0]);
    return _monsterStruct;
};

get_level_name = function(arg0)
{
    if (arg0 == 1)
        return "level._forestName";
    else if (arg0 == 2)
        return "level._cityName";
    else
        return "";
};

levelName = scribble(get_level_name(global.biomeCur)).align(0, 0).starting_format("ftAlkhemikalSh", global.color.grey1).scale(global.fontScaleTitle);
levelName.origin(round(levelName.get_width() / 2), round(levelName.get_height() / 2));

update_level_name = function()
{
    if (scribble_is_text_element(levelName))
        levelName.flush();
    
    levelName = scribble(get_level_name(global.biomeCur)).align(0, 0).starting_format("ftAlkhemikalSh", global.color.grey1).scale(global.fontScaleTitle);
    levelName.origin(round(levelName.get_width() / 2), round(levelName.get_height() / 2));
};

firstTime = true;

init_new_run = function()
{
    firstTime = true;
    
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        global.playersManager.apply_action(_i);
        var _char = global.playersManager.get_characters(_i);
        
        if (_char != -4)
        {
            var _hpMaxInit = _char.hpMaxInit;
            _char.rezurrection(_hpMaxInit, _hpMaxInit, false);
        }
    }
    
    global.biomeCur = 1;
    global.biomeNext = 1;
    currentDoorNbr = 0;
    monsterActiveNumber = 0;
    
    if (global.runCounter != 0)
        global.monsterList.generate_data();
    
    gemRewardReference = generate_reward_reference();
    update_rewards();
    global.doorContinue.reset_state();
    global.doorContinue.change_door_type();
    global.fightManager.reset_fight_counter();
};

set_winner = function()
{
    for (var _p = 0; _p < global.playersCount; _p++)
    {
        var _player = $"[p{_p}]P{_p + 1}[/c]";
        var _score = $"[yellow1]{global.playersManager.get_characters(_p).get_gem_secured()}[/c]";
        var _scoreOrder = global.playersManager.get_characters(_p).get_gem_secured();
        var _name = string_concat($"[p{_p}]", global.playersManager.get_name(_p), "[/c]");
        var _screenState;
        
        if (_p == 0)
            _screenState = UnknownEnum.Value_24;
        else if (_p == 1)
            _screenState = UnknownEnum.Value_25;
        else if (_p == 2)
            _screenState = UnknownEnum.Value_26;
        else if (_p == 3)
            _screenState = UnknownEnum.Value_27;
        
        var _struct = 
        {
            player: _player,
            name: _name,
            score: _score,
            scoreOrder: _scoreOrder,
            screenState: _screenState
        };
        global.winner[_p] = _struct;
    }
    
    array_sort(global.winner, function(arg0, arg1)
    {
        return array_sort_by_struct(arg0, arg1, "scoreOrder", -1);
    });
};

get_winner_name = function()
{
    var _players = [];
    
    for (var _p = 0; _p < global.playersCount; _p++)
    {
        var _player = $"[p{_p}]P{_p + 1}[/c]";
        var _score = $"[yellow1]{global.playersManager.get_characters(_p).get_gem_secured()}[/c]";
        var _scoreOrder = global.playersManager.get_characters(_p).get_gem_secured();
        var _name = string_concat($"[p{_p}]", global.playersManager.get_name(_p), "[/c]");
        var _struct = 
        {
            player: _player,
            name: _name,
            score: _score,
            scoreOrder: _scoreOrder
        };
        array_push(_players, _struct);
    }
    
    array_sort(_players, function(arg0, arg1)
    {
        return array_sort_by_struct(arg0, arg1, "scoreOrder", -1);
    });
    var _winner = "";
    var _mostGem = _players[0].scoreOrder;
    
    for (var _i = 0; _i < array_length(_players); _i++)
    {
        if (_players[_i].scoreOrder == _mostGem)
        {
            if (_i > 0)
                _winner += " / ";
            
            _winner += _players[_i].name;
        }
    }
    
    return _winner;
};

playersConfusedFace = -1;
playersConfusedLitha = -1;

set_players_confused = function()
{
    var _fighters = global.playersManager.get_characters();
    var _inFightCharacters = [];
    var _arrayOfPlayersWithAnotherFace = [];
    
    for (var _p = 0; _p < array_length(_fighters); _p++)
    {
        if (_fighters[_p].is_in_fight())
        {
            array_push(_inFightCharacters, _fighters[_p].number);
            
            if (_fighters[_p].effect_index(global.effect.anotherFace) != -1)
                array_push(_arrayOfPlayersWithAnotherFace, _fighters[_p].number);
        }
    }
    
    if (array_length(_arrayOfPlayersWithAnotherFace) > 0)
        playersConfusedFace = minstd_int(global.rng, array_length(_arrayOfPlayersWithAnotherFace) - 1);
    else
        playersConfusedFace = -1;
    
    if (array_length(_inFightCharacters) > 0)
        playersConfusedLitha = minstd_int(global.rng, array_length(_inFightCharacters) - 1);
    else
        playersConfusedLitha = -1;
};

firstRun = true;

enum UnknownEnum
{
    Value_0,
    Value_24 = 24,
    Value_25,
    Value_26,
    Value_27
}
