function cDeckItem() constructor
{
    theHand = [];
    
    draw = function()
    {
        var _fighters = global.playersManager.get_characters();
        var _someoneHasShroom = false;
        var _hasCommonPot = false;
        
        if (global.biomeCur == 1)
        {
            for (var _i = 0; _i < array_length(_fighters); _i++)
            {
                if (_fighters[_i].effect_index(global.effect.hallucinogenicVision) != -1 && array_length(global.fightManager.encounter.mushroomCards) > 0)
                {
                    _someoneHasShroom = true;
                    break;
                }
            }
        }
        else if (global.biomeCur == 2 && global.commonPotUsed == false && global.loopManager.get_current_monster().category == UnknownEnum.Value_1)
        {
            _hasCommonPot = true;
        }
        
        var _cardTotal = array_length(global.fightManager.encounter.cards[global.fightManager.encounter.fightRoundCount]);
        
        if (_someoneHasShroom || _hasCommonPot)
            _cardTotal++;
        
        var _cardCloverNumber;
        
        if (global.loopManager.get_monster_active_number() == global.monsterList.cloverPosition[global.loopManager.get_current_door()])
            _cardCloverNumber = minstd_int(global.rng, _cardTotal - 1 - (_someoneHasShroom ? 1 : 0) - (_hasCommonPot ? 1 : 0));
        else
            _cardCloverNumber = -1;
        
        for (var _c = 0; _c < _cardTotal; _c++)
        {
            var _newType, _item, _cardDesign;
            
            if (_someoneHasShroom && _c == (_cardTotal - 1))
            {
                _item = global.fightManager.encounter.mushroomCards[0];
                _newType = UnknownEnum.Value_4;
                _cardDesign = UnknownEnum.Value_5;
            }
            else if (_hasCommonPot && _c == (_cardTotal - 1))
            {
                _item = global.cards.commonPot;
                _newType = UnknownEnum.Value_2;
                _cardDesign = UnknownEnum.Value_1;
            }
            else
            {
                _item = global.fightManager.encounter.cards[global.fightManager.encounter.fightRoundCount][_c];
                _newType = _item.typeOfCard;
                
                switch (_newType)
                {
                    case UnknownEnum.Value_1:
                        if (global.dayNightCycle.get_event() == UnknownEnum.Value_1)
                            _cardDesign = UnknownEnum.Value_3;
                        else if (global.dayNightCycle.get_event() == UnknownEnum.Value_2)
                            _cardDesign = UnknownEnum.Value_4;
                        else if (global.dayNightCycle.get_event() == UnknownEnum.Value_4)
                            _cardDesign = UnknownEnum.Value_6;
                        else if (global.dayNightCycle.get_event() == UnknownEnum.Value_5)
                            _cardDesign = UnknownEnum.Value_7;
                        else if (global.dayNightCycle.get_event() == UnknownEnum.Value_6)
                            _cardDesign = UnknownEnum.Value_8;
                        else if (global.dayNightCycle.get_event() == UnknownEnum.Value_7)
                            _cardDesign = UnknownEnum.Value_9;
                        else if (_hasCommonPot && _c == (_cardTotal - 1))
                            _cardDesign = UnknownEnum.Value_1;
                        else
                            _cardDesign = UnknownEnum.Value_2;
                        
                        break;
                    
                    case UnknownEnum.Value_5:
                    case UnknownEnum.Value_6:
                    case UnknownEnum.Value_7:
                    case UnknownEnum.Value_8:
                    case UnknownEnum.Value_9:
                        _cardDesign = UnknownEnum.Value_0;
                        break;
                    
                    default:
                        _cardDesign = UnknownEnum.Value_2;
                        break;
                }
            }
            
            if (global.dayNightCycle.get_event() == UnknownEnum.Value_5)
            {
                var _cardsToUse;
                
                if (global.biomeCur == 1)
                {
                    if (_newType == UnknownEnum.Value_4)
                        _cardsToUse = global.cardsMushroom;
                    else
                        _cardsToUse = global.cardsForest;
                }
                else if (global.biomeCur == 2)
                {
                    _cardsToUse = global.cardsCity;
                }
                
                var _totalNbrCards = get_size(_cardsToUse);
                var _cardIndex = minstd_int(global.rng, _totalNbrCards - 1);
                var _cardName = _cardsToUse[_cardIndex];
                _card = variable_struct_get(global.cards, _cardName);
                _item = _card;
            }
            
            var _hasClover;
            
            if (_c == _cardCloverNumber && global.playersManager.someone_has_token_type(UnknownEnum.Value_4))
                _hasClover = true;
            else
                _hasClover = false;
            
            var _card = instance_create_depth(0, 0, global.depthManager.get_depth("cards"), oCardItem, 
            {
                item: variable_struct_get(global.cards, _item.structName),
                cardNumber: _c,
                cardNumberTotal: _cardTotal,
                cardType: _newType,
                isDisabled: true,
                cardDesign: _cardDesign,
                hasClover: _hasClover
            });
            array_push(theHand, _card);
        }
    };
    
    get_hand = function()
    {
        return theHand;
    };
    
    empty_hand = function()
    {
        theHand = [];
        
        with (oCardItem)
        {
            global.waitingList.set(id);
            stateNext = UnknownEnum.Value_5;
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
    Value_7,
    Value_8,
    Value_9
}
