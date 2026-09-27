function players_manager() constructor
{
    playersList = [];
    
    who_has_token_type = function(arg0)
    {
        var _char = get_characters();
        
        if (array_length(_char) != 0)
        {
            for (var _i = 0; _i < global.playersCount; _i++)
            {
                if (_char[_i].token.theType == arg0)
                    return _i;
            }
        }
        
        return -1;
    };
    
    someone_has_token_type = function(arg0)
    {
        var _char = get_characters();
        
        if (array_length(_char) != 0)
        {
            for (var _i = 0; _i < global.playersCount; _i++)
            {
                if (_char[_i].token.theType == arg0)
                    return true;
            }
        }
        
        return false;
    };
    
    is_anyone_fighting = function()
    {
        var _characters = get_characters();
        
        for (var _i = 0; _i < get_size(_characters); _i++)
        {
            if (_characters[_i].is_in_fight() && _characters[_i].token.theType != UnknownEnum.Value_17)
                return true;
        }
        
        return false;
    };
    
    is_everybody_fighthing = function()
    {
        var _characters = get_characters();
        
        for (var _i = 0; _i < get_size(_characters); _i++)
        {
            if (!_characters[_i].is_in_fight())
                return false;
        }
        
        return true;
    };
    
    is_everybody_alive = function()
    {
        var _characters = get_characters();
        
        for (var _i = 0; _i < get_size(_characters); _i++)
        {
            if (!_characters[_i].is_alive())
                return false;
        }
        
        return true;
    };
    
    does_anyone_have_hp = function()
    {
        var _characters = get_characters();
        
        for (var _i = 0; _i < get_size(_characters); _i++)
        {
            if (_characters[_i].hp > 0)
                return true;
        }
        
        return false;
    };
    
    has_acted = function(arg0)
    {
        return playersList[arg0].hasActed;
    };
    
    has_everyone_acted = function()
    {
        for (var _i = 0; _i < global.playersCount; _i++)
        {
            if (!has_acted(_i))
                return false;
        }
        
        return true;
    };
    
    has_every_fighters_acted = function(arg0 = false)
    {
        for (var _i = 0; _i < global.playersCount; _i++)
        {
            if (!has_acted(_i) && !(arg0 && get_characters(_i).token.theType == UnknownEnum.Value_3))
                return false;
        }
        
        return true;
    };
    
    someone_is_on_same_card = function(arg0)
    {
        if (get_characters(arg0).effect_index(global.effect.tapeworm) != -1)
            return true;
        
        var _theChoice = get_action(arg0);
        var _fighters = get_fighters();
        
        for (var _i = 0; _i < array_length(_fighters); _i++)
        {
            if (_fighters[_i] != -4 && _fighters[_i].number != arg0 && _theChoice == get_action(_fighters[_i].number))
                return true;
        }
        
        return false;
    };
    
    get_action = function(arg0)
    {
        return playersList[arg0].action;
    };
    
    get_action_turn = function(arg0)
    {
        return playersList[arg0].actionTurnId;
    };
    
    is_action_rightmost_choice = function(arg0)
    {
        var _cardNumber;
        
        switch (get_action(arg0))
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
            
            default:
                return false;
                break;
        }
        
        if ((array_length(global.actionCards.theHand) - 1) >= _cardNumber)
        {
            if (global.actionCards.theHand[_cardNumber].isRightmostCard)
                return true;
        }
        
        return false;
    };
    
    is_action_leftmost_choice = function(arg0)
    {
        var _cardNumber;
        
        switch (get_action(arg0))
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
            
            default:
                return false;
                break;
        }
        
        if ((array_length(global.actionCards.theHand) - 1) >= _cardNumber)
        {
            if (global.actionCards.theHand[_cardNumber].isLeftmostCard)
                return true;
        }
        
        return false;
    };
    
    is_leaving = function(arg0)
    {
        return get_action(arg0) == UnknownEnum.Value_1;
    };
    
    is_anyone_leaving = function()
    {
        for (var _p = 0; _p < global.playersCount; _p++)
        {
            if (is_leaving(_p))
                return true;
        }
        
        return false;
    };
    
    is_staying = function(arg0)
    {
        return get_action(arg0) == UnknownEnum.Value_2;
    };
    
    is_anyone_staying = function()
    {
        for (var _p = 0; _p < global.playersCount; _p++)
        {
            if (is_staying(_p))
                return true;
        }
        
        return false;
    };
    
    get_cursor = function(arg0)
    {
        var _cursor = -4;
        
        if (array_length(playersList) >= (arg0 + 1) && playersList[arg0] != undefined)
            _cursor = instance_exists(playersList[arg0].cursor) ? playersList[arg0].cursor : -4;
        
        return _cursor;
    };
    
    get_players = function(arg0 = -1)
    {
        if (arg0 == -1)
            return playersList;
        else
            return playersList[arg0];
    };
    
    get_characters = function(arg0 = -1)
    {
        if (arg0 == -1)
        {
            var _arrayCharacters = [];
            
            for (var _i = 0; _i < array_length(playersList); _i++)
            {
                if (playersList[_i] != undefined && playersList[_i].character != -4)
                    array_push(_arrayCharacters, playersList[_i].character);
            }
            
            return _arrayCharacters;
        }
        else
        {
            var _char = -4;
            
            if (array_length(playersList) >= (arg0 + 1) && playersList[arg0] != undefined)
                _char = instance_exists(playersList[arg0].character) ? playersList[arg0].character : -4;
            
            return _char;
        }
    };
    
    get_fighters = function()
    {
        var _fighters = [];
        var _chars = get_characters();
        
        for (var _f = 0; _f < array_length(_chars); _f++)
        {
            if (_chars[_f].is_in_fight())
                array_push(_fighters, _chars[_f]);
        }
        
        return _fighters;
    };
    
    get_first_player_to_act = function(arg0 = undefined)
    {
        return get_first_or_last_player_to_act(arg0, 1);
    };
    
    get_last_player_to_act = function(arg0 = undefined)
    {
        return get_first_or_last_player_to_act(arg0, -1);
    };
    
    get_first_or_last_player_to_act = function(arg0 = undefined, arg1)
    {
        var _playersArray = [];
        array_copy(_playersArray, 0, get_players(), 0, array_length(get_players()));
        var _p = array_length(_playersArray) - 1;
        
        while (_p >= 0)
        {
            var _typeOfAction = get_action(_playersArray[_p].number);
            
            if (_typeOfAction == UnknownEnum.Value_13 || _typeOfAction == UnknownEnum.Value_14)
                array_delete(_playersArray, _p, 1);
            
            _p--;
        }
        
        if (array_length(_playersArray) == 0)
            return -1;
        
        array_sort(_playersArray, method(
        {
            _firstOrLast: arg1
        }, function(arg0, arg1)
        {
            return array_sort_by_struct(arg0, arg1, "actedTime", _firstOrLast);
        }));
        var _playerNumberFound = -1;
        
        if (arg0 != undefined)
        {
            for (var _i = 0; _i < array_length(_playersArray); _i++)
            {
                if (get_action(_playersArray[_i].number) == arg0)
                {
                    _playerNumberFound = _playersArray[_i].number;
                    break;
                }
            }
        }
        else if (array_length(_playersArray) > 0)
        {
            _playerNumberFound = _playersArray[0].number;
        }
        
        return _playerNumberFound;
    };
    
    get_name = function(arg0, arg1 = false)
    {
        if (arg1)
            return playersList[arg0].nameToDraw;
        else
            return playersList[arg0].name;
    };
    
    get_acted_time = function(arg0)
    {
        return playersList[arg0].actedTime;
    };
    
    create_player = function(arg0)
    {
        var _x, _y;
        
        if (global.networkingManager.isNetworkGame)
        {
            _x = device_mouse_x_to_gui(0) / global.zoom;
            _y = device_mouse_y_to_gui(0) / global.zoom;
        }
        else
        {
            _x = global.gameWidth / 2;
            _y = global.gameHeight / 2;
        }
        
        var _cursor = instance_create_depth(_x, _y, global.depthManager.get_depth("cursor"), oCursor, 
        {
            number: arg0
        });
        var _player = new cPlayer(arg0);
        _player.cursor = _cursor;
        playersList[arg0] = _player;
        global.playersCount++;
        
        if (instance_exists(oMenu))
        {
            with (oMenu)
            {
                if (global.playersCount > 1)
                    btnLaunchGame.set_disabled(false);
            }
        }
    };
    
    send_action = function(arg0, arg1 = UnknownEnum.Value_0, arg2 = false)
    {
        if (get_action_turn(arg0) == global.networkingManager.turnId)
            exit;
        
        var _char = global.playersManager.get_characters(arg0);
        
        if (_char != -4)
        {
            _char.token.hostValidate = false;
            _char.token.stateNext = UnknownEnum.Value_4;
        }
        
        if (global.networkingManager.isNetworkGame)
            global.networkingManager.send_action(arg0, arg1, arg2);
        else
            apply_action(arg0, arg1, arg2, current_time);
    };
    
    apply_action = function(arg0, arg1 = UnknownEnum.Value_0, arg2 = false, arg3 = 0)
    {
        var _char = global.playersManager.get_characters(arg0);
        
        if (arg1 == UnknownEnum.Value_0)
        {
            playersList[arg0].hasActed = false;
            
            if (_char != -4)
            {
                _char.token.hostValidate = true;
                _char.token.stateNext = UnknownEnum.Value_0;
            }
        }
        else if (arg1 == UnknownEnum.Value_14)
        {
            playersList[arg0].hasActed = true;
            
            if (_char != -4)
            {
                _char.token.hostValidate = true;
                _char.token.stateNext = UnknownEnum.Value_6;
            }
        }
        else
        {
            playersList[arg0].hasActed = true;
            
            if (_char != -4 && arg2)
            {
                _char.token.hostValidate = true;
                _char.token.stateNext = UnknownEnum.Value_4;
            }
            
            if (global.fightManager.encounter != -4 && global.fightManager.encounter.structMonster == global.monsters.babayaga)
            {
                with (oMonster)
                {
                    for (var _i = 0; _i < array_length(babaHands); _i++)
                    {
                        if (babaHands[_i].number == arg0)
                        {
                            move_hand_isba(_i, true);
                            break;
                        }
                    }
                }
            }
        }
        
        playersList[arg0].action = arg1;
        playersList[arg0].actionTurnId = global.networkingManager.turnId;
        
        if (arg3 != 0)
            playersList[arg0].actedTime = current_time;
    };
    
    set_cursor = function(arg0, arg1)
    {
        playersList[arg0].cursor = arg1;
    };
    
    set_character = function(arg0, arg1 = -4)
    {
        playersList[arg0].character = arg1;
    };
    
    set_name = function(arg0, arg1 = "")
    {
        var _currentName = LocPreprocessor(arg1);
        _currentName = string_replace_all(_currentName, "[", "[[");
        playersList[arg0].name = _currentName;
        playersList[arg0].nameToDraw = scribble($"[p{arg0}]{_currentName}[/c]", $"name{arg0}");
    };
    
    update_text = function()
    {
        for (var _i = 0; _i < array_length(playersList); _i++)
        {
            if (playersList[_i] == undefined)
                continue;
            
            playersList[_i].nameToDraw.flush();
            playersList[_i].nameToDraw = scribble($"[p{_i}]{playersList[_i].name}[/c]", $"name{_i}");
        }
    };
    
    remove = function(arg0 = array_length(playersList) - 1)
    {
        var _cursor = get_cursor(arg0);
        
        if (_cursor != -4)
            instance_destroy(_cursor);
        
        var _character = get_characters(arg0);
        
        if (_character != -4)
        {
            if (_character.token != -4)
                instance_destroy(_character.token);
            
            _character.delete_effect();
            instance_destroy(_character);
        }
        
        array_delete(playersList, arg0, 1);
        global.playersCount--;
        
        if (instance_exists(oMenu))
        {
            with (oMenu)
            {
                if (global.playersCount <= 1)
                    btnLaunchGame.set_disabled(true);
            }
        }
        
        global.__ElementController.reset(arg0);
        InputPlayerSetDevice(-666, arg0);
        
        for (var _pn = 0; _pn < global.playersCount; _pn++)
        {
            playersList[_pn].number = _pn;
            var _char = get_characters(_pn);
            
            if (_char != -4)
            {
                _char.number = _pn;
                _char.set_sprite();
                
                if (_char.token != -4)
                    _char.token.set_number(_pn);
            }
            
            _cursor = get_cursor(_pn);
            
            if (_cursor != -4)
            {
                _cursor.number = _pn;
                _cursor.set_sprite();
                _cursor.update_text();
            }
        }
        
        update_text();
    };
}

function cPlayer(arg0) constructor
{
    number = arg0;
    name = "";
    nameToDraw = scribble($"[p{number}]{name}[/c]", $"name{number}");
    isConnected = true;
    hasActed = false;
    actedTime = undefined;
    action = UnknownEnum.Value_0;
    actionTurnId = 0;
    cursor = -4;
    character = -4;
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
    Value_13 = 13,
    Value_14,
    Value_17 = 17
}
