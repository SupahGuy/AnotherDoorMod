if (!variable_instance_exists(id, "structMonster"))
{
    trace("oMonster variable 'structMonster' is missing");
    game_end();
}
else
{
    className = structMonster.className;
    spriteName = structMonster.spriteName;
    desc = structMonster.desc;
    cards = structMonster.cards;
    mushroomCards = structMonster.mushroomCards;
    monster_script_end = structMonster.monster_script_end;
    activate_dialogue = structMonster.activate_dialogue;
}

state = UnknownEnum.Value_0;
stateNext = UnknownEnum.Value_0;
statePrev = undefined;
isMiniGameFinished = false;
fightRoundCountMax = array_length(cards);
fightRoundCount = 0;
dialogueRoundCount = 0;

increase_fight_round_counter = function()
{
    fightRoundCount++;
    dialogueRoundCount++;
};

sprite_index = asset_get_index($"spr{spriteName}Idle");
var _theName = className;

if (structMonster == global.monsters.dolly)
{
    ini_open("lore.ini");
    var _dollyNbr = ini_read_real("monster", "dolly", 0);
    _dollyNbr++;
    ini_write_real("monster", "dolly", _dollyNbr);
    var _dollyNbrLabel = _dollyNbr;
    
    while (string_length(_dollyNbrLabel) < 3)
        _dollyNbrLabel = string_concat("0", _dollyNbrLabel);
    
    _theName = string_concat(className, "#", _dollyNbrLabel);
    ini_close();
}

txtName = scribble(_theName).align(1, 1).wrap(152 * global.zoom);
animOpacity = new myTimer(id, 1, undefined, undefined, "ease-out");
animOpacity.run();
image_alpha = 0;

if (structMonster == global.monsters.shop)
{
    global.audio.fade_out(undefined, true);
    
    draw_shop = function()
    {
        var _arrayEffect = [];
        var _copyOfEffect = [];
        array_copy(_copyOfEffect, 0, global.effectRandom, 0, array_length(global.effectRandom));
        
        for (var _n = 0; _n < 4; _n++)
        {
            var _length = array_length(_copyOfEffect);
            var _index = minstd_int(global.rng, _length - 1);
            var _effect = _copyOfEffect[_index];
            array_push(_arrayEffect, _effect);
            array_delete(_copyOfEffect, _index, 1);
        }
        
        global.cards.shopItem1.actionType = [_arrayEffect[0]];
        global.cards.shopItem1.sprite = _arrayEffect[0].spriteItemLinked;
        global.cards.shopItem2.actionType = [_arrayEffect[1]];
        global.cards.shopItem2.sprite = _arrayEffect[1].spriteItemLinked;
        global.cards.shopItem3.actionType = [_arrayEffect[2]];
        global.cards.shopItem3.sprite = _arrayEffect[2].spriteItemLinked;
        global.cards.shopItem4.actionType = [_arrayEffect[3]];
        global.cards.shopItem4.sprite = _arrayEffect[3].spriteItemLinked;
    };
}

if (structMonster == global.monsters.funfair)
{
    with (oCursor)
        funfair_init();
    
    global.audio.fade_out(undefined, true);
    var _btnSpr;
    
    if (global.displayControllerAsset == UnknownEnum.Value_0)
        _btnSpr = sprMouseScroll;
    else
        _btnSpr = sprBtnUp;
    
    animBtn = new myTimer(id, undefined, undefined, -1, undefined, undefined, _btnSpr);
    animBtn.run();
    animArrow = new myTimer(id, undefined, undefined, -1, undefined, undefined, sprWheelArrow);
    animArrow.run();
    var _duration = audio_sound_length(sndFunfairTheme);
    timerFunfairVisible = new myTimer(id, _duration / 3.33);
    timerFunfairDisapear = new myTimer(id, _duration / 3.33);
    timerFunfairInvisible = new myTimer(id, _duration / 3.33);
    
    run_wheel = function()
    {
        timerFunfairVisible.run();
        var _btnSpr;
        
        if (global.displayControllerAsset == UnknownEnum.Value_0)
            _btnSpr = sprMouseScroll;
        else
            _btnSpr = sprBtnAll;
        
        animBtn = new myTimer(id, undefined, undefined, -1, undefined, undefined, _btnSpr);
        animBtn.run();
        var _audio = audio_play_sound(sndFunfairTheme, 10, false);
        var _durationMonster = (global.dayNightCycle.get_event() == UnknownEnum.Value_1) ? global.dayNightCycle.yuleDuration : -1;
        
        if (_durationMonster != -1)
        {
            var _durationDefault = audio_sound_length(sndFunfairTheme);
            var _newSpeed = _durationDefault / _durationMonster;
            audio_sound_pitch(_audio, _newSpeed);
        }
    };
    
    focus_first_price = function()
    {
        with (oCursor)
            funfair_apply_angle(270);
    };
    
    focus_second_price = function()
    {
        with (oCursor)
        {
            if (number == 0 || number == 2)
                funfair_apply_angle(0);
            else
                funfair_apply_angle(180);
        }
    };
    
    focus_third_price = function()
    {
        with (oCursor)
            funfair_apply_angle(90);
    };
    
    var _alignY = UnknownEnum.Value_0;
    var _sound = UnknownEnum.Value_0;
    var _close = UnknownEnum.Value_1;
    newTooltipListState1 = [new cDialogue("monster._funfairRule1", undefined, _alignY, _sound, _close), new cDialogue("monster._funfairRule2", undefined, _alignY, _sound, _close), new cDialogue("monster._funfairRule3", undefined, _alignY, _sound, _close), new cDialogue("monster._funfairRule4", undefined, _alignY, _sound, _close), new cDialogue("monster._funfairRule5", undefined, _alignY, _sound, _close), new cDialogue("monster._funfairRule6", undefined, _alignY, _sound, _close), new cDialogue($"monster._funfairRule7#{LocPreprocessor(global.cards.funFairPileOfGem.name)}#{global.cards.funFairPileOfGem.amount[0]}", undefined, _alignY, _sound, _close, undefined, undefined, focus_first_price), new cDialogue("monster._funfairRule8", undefined, _alignY, _sound, _close), new cDialogue($"monster._funfairRule9#{LocPreprocessor(global.cards.funFairGemPurse.name)}#{global.cards.funFairGemPurse.amount[0]}", undefined, _alignY, _sound, _close, undefined, undefined, focus_second_price), new cDialogue($"monster._funfairRule10#{LocPreprocessor(global.cards.funFairGemBag.name)}#{global.cards.funFairGemBag.amount[0]}", undefined, _alignY, _sound, _close, undefined, undefined, focus_third_price), new cDialogue("monster._funfairRule11", undefined, _alignY, _sound, _close), new cDialogue("monster._funfairRule12", undefined, _alignY, _sound, _close)];
    set_list_of_tooltip(newTooltipListState1);
}

if (structMonster == global.monsters.babayaga)
{
    global.audio.fade_out(undefined, true);
    babaPlayersNbr = [];
    babaHands = [];
    babaCard = -4;
    
    init_baba = function()
    {
        babaCard = instance_find(oCardItem, 0);
        var _fighters = [];
        
        for (var _f = 0; _f < array_length(global.playersManager.get_characters()); _f++)
        {
            if (global.playersManager.get_characters(_f).is_in_fight())
                array_push(_fighters, global.playersManager.get_characters(_f));
        }
        
        var _fightersLength = array_length(_fighters);
        var _xMin = 212;
        var _xMax = 640;
        var _xWidth = _xMax - _xMin;
        
        for (var _f = 0; _f < _fightersLength; _f++)
        {
            var _xInit = _xMin + (_xWidth / 2 / _fightersLength) + ((_xWidth / _fightersLength) * _f);
            var _handStruct = 
            {
                number: _fighters[_f].number,
                sprite: asset_get_index($"sprCursorHand{_fighters[_f].number + 1}"),
                xInit: _xInit,
                yInit: 200,
                x: _xInit,
                y: 200,
                alpha: 0,
                timerHide: new myTimer(id, 0.5),
                moveHand: new myTimer(id, 0.75)
            };
            array_push(babaHands, _handStruct);
            array_push(babaPlayersNbr, _fighters[_f].number);
        }
    };
    
    babaHandXTo = 427;
    babaHandYTo = 124;
    showHandTimer = new myTimer(self, 0.5);
    
    move_hand_isba = function(arg0)
    {
        babaHands[arg0].moveHand.run();
    };
    
    sent_babayaga = function()
    {
        if (global.isClient)
            exit;
        
        if (global.networkingManager.isNetworkGame)
            global.networkingManager.babayaga();
        
        apply_babayaga();
    };
    
    apply_babayaga = function()
    {
        for (var _i = 0; _i < array_length(babaHands); _i++)
        {
            var _pNumber = babaHands[_i].number;
            var _fighter = global.playersManager.get_characters(_pNumber);
            
            if (!global.playersManager.has_acted(_pNumber) && _fighter.is_alive() && _fighter.is_in_fight())
            {
                _fighter.receive_damage(true, floor(self.damageBabayaga), -1, false);
                
                if (_fighter.hp == 0)
                {
                    move_hand_isba(_i, true);
                    global.playersManager.apply_action(_pNumber, UnknownEnum.Value_13, false);
                }
            }
        }
        
        self.damageBabayaga += 0.2;
    };
    
    timerBabayaga = new myTimer(id, 1.5, undefined, -1, undefined, undefined, undefined, sent_babayaga);
    animBtnStop = new myTimer(id, undefined, undefined, -1, undefined, undefined, sprBtnUp);
    damageBabayaga = 1;
    sacrificeStarted = false;
    bellTimer = new myTimer(id, 0.2, undefined, undefined, "curve1");
    bellOffset = 0;
    bellOffsetMin = 0;
    bellOffsetMax = 4;
    txtStop = scribble("monster._babayagaStop").align(1, 0);
    
    talk_finished = function()
    {
        animBtnStop.run();
    };
    
    var _cardDesc = add_var_to_text(global.cards.babayagaStop, global.cards.babayagaStop.amount[0]);
    var _alignY = UnknownEnum.Value_2;
    dialogueRules = [new cDialogue("monster._babayagaSacrifice1", undefined, _alignY, UnknownEnum.Value_1), new cDialogue("monster._babayagaSacrifice2", undefined, _alignY, UnknownEnum.Value_1), new cDialogue("monster._babayagaSacrifice3", undefined, _alignY, UnknownEnum.Value_1), new cDialogue("monster._babayagaSacrifice4", undefined, _alignY, UnknownEnum.Value_1), new cDialogue("monster._babayagaSacrifice5", undefined, _alignY, UnknownEnum.Value_1, undefined, undefined, undefined, undefined, [showHandTimer.run]), new cDialogue("monster._babayagaSacrifice6", undefined, _alignY, UnknownEnum.Value_1), new cDialogue("monster._babayagaSacrifice7", undefined, _alignY, UnknownEnum.Value_1, undefined, undefined, undefined, undefined, [talk_finished])];
    set_list_of_tooltip(dialogueRules);
    
    babayaga_end = function()
    {
        isMiniGameFinished = true;
    };
    
    dialogueFinished = undefined;
}

if (structMonster == global.monsters.faun)
{
    donkeyCapTimer = new myTimer(id, 90);
    indexPlayerBuy = 0;
    arrayPlayerGem = [];
    var _fighters = global.playersManager.get_characters();
    
    for (var _pg = 0; _pg < array_length(_fighters); _pg++)
    {
        if (_fighters[_pg].is_alive() && _fighters[_pg].is_in_fight())
        {
            var _player = _fighters[_pg];
            array_push(arrayPlayerGem, 
            {
                number: _player.number,
                gem: _player.get_gem_secured(),
                randomValue: minstd_int_range(global.rng, 0, 100)
            });
        }
    }
    
    array_sort(arrayPlayerGem, function(arg0, arg1)
    {
        if (arg0.gem == arg1.gem)
            return arg0.randomValue - arg1.randomValue;
        else
            return arg0.gem - arg1.gem;
    });
    
    display_dialogue_faun = function()
    {
        var _numberPlayer = arrayPlayerGem[indexPlayerBuy].number;
        var _name = string_concat($"[p{_numberPlayer}]", global.playersManager.get_name(_numberPlayer), "[/c]");
        var _tooltipText = $"faun._choiceName#{_name}";
        var _alignY = UnknownEnum.Value_0;
        var _alignX = UnknownEnum.Value_2;
        var _close = UnknownEnum.Value_0;
        var _theCallBack = [donkeyCapTimer.reset, donkeyCapTimer.run];
        var _newTooltipList = [new cDialogue(_tooltipText, _alignX, _alignY, UnknownEnum.Value_3, _close, undefined, _theCallBack)];
        set_list_of_tooltip(_newTooltipList);
        instance_create_depth(200, 80, 0, oDialogue, _newTooltipList[0]);
    };
    
    clone_donkey_cap = function()
    {
        global.playersManager.apply_action(arrayPlayerGem[indexPlayerBuy].number, UnknownEnum.Value_13);
        var _char = arrayPlayerGem[indexPlayerBuy];
        
        if (_char != -4)
        {
            var _x = global.gameWidth / 2;
            var _y = -100;
            var _donkeyCap = instance_create_depth(_x, _y, global.depthManager.get_depth("cards"), oToken, 
            {
                number: -1,
                theType: UnknownEnum.Value_19,
                stateNext: UnknownEnum.Value_5
            });
            _donkeyCap.clone(_char.number, _donkeyCap.xDraw, _donkeyCap.yDraw);
            instance_destroy(_donkeyCap);
        }
    };
    
    generate_token_and_chain = function()
    {
        for (var _i = 0; _i < array_length(global.uiPos.tokenChain); _i++)
        {
            var _token = instance_create_depth(global.uiPos.tokenChain[_i].x, global.uiPos.tokenChain[_i].y + sprite_get_height(global.uiPos.tokenChain[_i].theSprite), global.depthManager.get_depth("cards") + _i, oToken, 
            {
                number: -1,
                numberBuy: _i,
                theType: global.monsterList.tokenList[_i],
                stateNext: UnknownEnum.Value_5
            });
            var _chain = instance_create_depth(global.uiPos.tokenChain[_i].x, global.uiPos.tokenChain[_i].y, global.depthManager.get_depth("cards") + _i, oChain, 
            {
                sprite_index: global.uiPos.tokenChain[_i].theSprite,
                token: _token,
                chainNoise: _i
            });
            _token.chainLinked = _chain;
            
            for (var _t = 0; _t < array_length(_token.tooltip); _t++)
                _token.tooltip[_t].reposition(426, 170, UnknownEnum.Value_2, UnknownEnum.Value_1);
        }
    };
}

if (structMonster == global.monsters.platonia)
{
    firstRun = true;
    global.platoniaDefaultPrice = global.playersCount * 100;
    global.cards.platonia.amount[0] = global.platoniaDefaultPrice;
    totalTicketsAsked = 0;
    finalPrice = 0;
    playerTicketNumbers = [];
    
    for (var _i = 0; _i < global.playersCount; _i++)
        array_push(playerTicketNumbers, 0);
    
    increase_ticket_number_platonia = function(arg0, arg1 = false)
    {
        if (global.networkingManager.isNetworkGame && arg1)
            global.networkingManager.increase_ticket_number_platonia(arg0);
        
        playerTicketNumbers[arg0]++;
    };
    
    playersFaces = [];
    
    for (var _i = 0; _i < (global.playersCount * 2); _i++)
        array_push(playersFaces, global.playersManager.get_characters(_i % global.playersCount).spriteHead);
    
    slotsFaces = [];
    
    for (var _i = 0; _i < 4; _i++)
    {
        var _slot = instance_create_depth(global.uiPos.platoniaBgReveal[_i].x, global.uiPos.platoniaBgReveal[_i].y, global.depthManager.get_depth("cards"), oSlotMachineBox, 
        {
            slotNumber: _i,
            itemsList: playersFaces,
            spritePaneTop: sprPlatoniaPanePortraitTop,
            spritePaneBottom: sprPlatoniaPanePortraitBottom
        });
        array_push(slotsFaces, _slot);
    }
    
    slotsPrice = [];
    
    for (var _i = 0; _i < 4; _i++)
    {
        var _slot = instance_create_depth(global.uiPos.platoniaPrice[_i].x, global.uiPos.platoniaPrice[_i].y, global.depthManager.get_depth("cards"), oSlotMachineBox, 
        {
            slotNumber: _i,
            itemsList: [sprSlotNbr0, sprSlotNbr1, sprSlotNbr2, sprSlotNbr3, sprSlotNbr4, sprSlotNbr5, sprSlotNbr6, sprSlotNbr7, sprSlotNbr8, sprSlotNbr9, sprSlotNbr10]
        });
        array_push(slotsPrice, _slot);
    }
    
    playersButtons = [];
    
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        var _button = instance_create_depth(global.uiPos.platoniaButtons[_i].x, global.uiPos.platoniaButtons[_i].y, global.depthManager.get_depth("cards") + _i, oGuiButton, 
        {
            sprite_index: asset_get_index($"sprPlatoniaBtn{_i}"),
            alignH: UnknownEnum.Value_2,
            alignV: UnknownEnum.Value_0,
            isDisabled: true
        });
        array_push(playersButtons, _button);
        _button.set_interaction_allowed_by([_i]);
    }
    
    clockRollBackTimer = new myTimer(id, 3, 0, 1, "linear");
    clockTimer = new myTimer(id, 10, 0, 1, "linear");
    clockTotalImage = sprite_get_number(sprPlatoniaClock) - 1;
    clockCurrentImage = clockTotalImage;
    var _sound = UnknownEnum.Value_0;
    var _close = UnknownEnum.Value_1;
    newTooltipListState1 = [new cDialogue("monster._platoniaRule1", undefined, _sound, _close), new cDialogue("monster._platoniaRule2", undefined, _sound, _close), new cDialogue("monster._platoniaRule3", undefined, _sound, _close), new cDialogue("monster._platoniaRule4", undefined, _sound, _close), new cDialogue("monster._platoniaRule5", undefined, _sound, _close), new cDialogue("monster._platoniaRule6", undefined, _sound, _close)];
    set_list_of_tooltip(newTooltipListState1);
    newTooltipListState2 = [new cDialogue("monster._platoniaRule7", undefined, _sound, _close)];
    newTooltipListState3 = [new cDialogue("monster._platoniaRule8", undefined, _sound, _close)];
    newTooltipListState4 = [new cDialogue("monster._platoniaRule9", undefined, _sound, _close)];
    newTooltipListState5 = [new cDialogue($"monster._platoniaRule10#{global.cards.platonia.amount[0]}", undefined, _sound, _close), new cDialogue("monster._platoniaRule11", undefined, _sound, _close), new cDialogue($"monster._platoniaRule12#{global.cards.platonia.amount[0]}", undefined, _sound, _close), new cDialogue("monster._platoniaRule13", undefined, _sound, _close), new cDialogue("monster._platoniaRule14", undefined, _sound, _close)];
    set_list_of_tooltip(newTooltipListState5);
    tooltipWinner = [new cDialogue("monster._platoniaWinnerIs1", undefined, _sound, _close)];
    
    set_price = function(arg0, arg1 = undefined)
    {
        var _whereInString = string_length(arg0);
        var _i = array_length(slotsPrice) - 1;
        
        while (_i >= 0)
        {
            var _digit;
            
            if (_whereInString > 0)
                _digit = string_char_at(arg0, _whereInString);
            else
                _digit = 0;
            
            var _haveCallback;
            
            if (_i == (array_length(slotsPrice) - 1))
                _haveCallback = arg1;
            else
                _haveCallback = undefined;
            
            slotsPrice[_i].stop_on_item_nbr(real(_digit), _haveCallback);
            _whereInString--;
            _i--;
        }
    };
    
    set_price(0);
    
    set_winner_platonia = function(arg0 = undefined, arg1 = false)
    {
        if (global.isClient && !arg1)
            exit;
        
        var _winnerNumber;
        
        if (arg0 == undefined)
        {
            var _arrayWeighted = [];
            
            for (var _i = 0; _i < global.playersCount; _i++)
            {
                if (global.playersManager.get_characters(_i).is_in_fight())
                {
                    array_push(_arrayWeighted, _i);
                    array_push(_arrayWeighted, playerTicketNumbers[_i]);
                }
            }
            
            var _winner = choose_weighted(_arrayWeighted);
            _winnerNumber = _winner.elem;
        }
        else
        {
            _winnerNumber = arg0;
        }
        
        var _slotSize = array_length(slotsFaces);
        
        for (var _i = 0; _i < _slotSize; _i++)
        {
            var _callback = undefined;
            
            if (_i == (_slotSize - 1))
            {
                _callback = method(
                {
                    _winnerNumber: _winnerNumber
                }, function()
                {
                    for (var _i = 0; _i < global.playersCount; _i++)
                    {
                        if (_i != _winnerNumber)
                            global.playersManager.apply_action(_i, UnknownEnum.Value_13);
                        else
                            global.playersManager.apply_action(_i, UnknownEnum.Value_3);
                    }
                });
            }
            
            slotsFaces[_i].stop_on_item_nbr(_winnerNumber, _callback);
        }
        
        if (global.isHost && global.networkingManager.isNetworkGame)
            global.networkingManager.set_winner_platonia(_winnerNumber);
    };
}

if (structMonster == global.monsters.blackMarket)
{
    firstRun = true;
    distortion_stage = shader_get_sampler_index(shDistortNormalMap, "distortion_texture_page");
    surface_distort = -1;
    add_to_clean_up(surface_distort, UnknownEnum.Value_3);
    mirrorObj = instance_create_depth(global.uiPos.monsterScene.x, global.uiPos.monsterScene.y + 54, global.depthManager.get_depth("cards"), oMirror);
    pendulumObj = instance_create_depth(global.uiPos.monsterScene.x, global.uiPos.monsterScene.y, global.depthManager.get_depth("cards"), oPendulum);
    glassObj = instance_create_depth(global.uiPos.monsterScene.x, global.uiPos.monsterScene.y + 54, global.depthManager.get_depth("cards"), oGlass, 
    {
        sprite_index: sprBlackMarketGlass
    });
    hidePriceSprite = new myTimer(id, undefined, undefined, 1, undefined, undefined, sprBlackMarketHide);
    var _playersWithMaxHp = [];
    
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        if (global.playersManager.get_characters(_i).is_in_fight())
            array_push(_playersWithMaxHp, global.playersManager.get_characters(_i));
    }
    
    array_sort(_playersWithMaxHp, function(arg0, arg1)
    {
        return arg1.hp - arg0.hp;
    });
    pendulumTimer = 0;
    pendulumDefaultValue = min(_playersWithMaxHp[0].hp, 100);
    pendulumSpeedMult = 1;
    pendulumAngle = cos((pendulumTimer / game_get_speed(gamespeed_fps)) * pi) * 25;
    pendulumObj.image_angle = pendulumAngle;
    pendulumValue = pendulumDefaultValue;
    pendulumPrevSign = sign(pendulumDefaultValue);
    pendulumWinnerNumber = -1;
    pendulumWinnerName = "";
    txtPendulumValue = scribble(pendulumValue).align(1, 1);
    
    set_angle_pendulum = function(arg0, arg1 = false)
    {
        if (global.isClient && !arg1)
            exit;
        
        if (global.isHost && global.networkingManager.isNetworkGame)
            global.networkingManager.set_angle_pendulum(arg0);
        
        pendulumAngle = arg0 * 25;
        pendulumObj.image_angle = pendulumAngle;
        
        if (pendulumPrevSign != sign(arg0))
        {
            pendulumValue--;
            txtPendulumValue = scribble(pendulumValue).align(1, 1);
            pendulumSpeedMult = map_value(pendulumValue, pendulumDefaultValue, 0, 1, 2);
            pendulumPrevSign = sign(arg0);
            var _pitch = map_value(pendulumValue, pendulumDefaultValue, 0, 0.9, 1.4);
            var _soundToPlay = ((pendulumValue % 2) == 0) ? sndPendulum1 : sndPendulum2;
            audio_play_sound(_soundToPlay, 10, false, undefined, undefined, _pitch);
        }
    };
    
    var _gemValue = global.cards.blackMarketGem.amount[0];
    newTooltipListState1 = [new cDialogue("blackmarket._introduction1", UnknownEnum.Value_2, UnknownEnum.Value_2, UnknownEnum.Value_2, undefined, undefined), new cDialogue("blackmarket._introduction2", UnknownEnum.Value_2, UnknownEnum.Value_2, UnknownEnum.Value_2, undefined, undefined), new cDialogue("blackmarket._introduction3", UnknownEnum.Value_2, UnknownEnum.Value_2, UnknownEnum.Value_2, undefined, undefined), new cDialogue($"blackmarket._introduction4#{_gemValue}", UnknownEnum.Value_2, UnknownEnum.Value_2, UnknownEnum.Value_2, undefined, undefined, undefined, [hidePriceSprite.run]), new cDialogue("blackmarket._introduction5", UnknownEnum.Value_2, UnknownEnum.Value_2, UnknownEnum.Value_2, undefined, undefined), new cDialogue("blackmarket._introduction6", UnknownEnum.Value_2, UnknownEnum.Value_2, UnknownEnum.Value_2, undefined, undefined), new cDialogue("blackmarket._introduction7", UnknownEnum.Value_2, UnknownEnum.Value_2, UnknownEnum.Value_2, undefined, undefined)];
    set_list_of_tooltip(newTooltipListState1);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_5 = 5,
    Value_13 = 13,
    Value_19 = 19
}
