function cCards(arg0, arg1, arg2 = undefined, arg3, arg4 = [], arg5 = [UnknownEnum.Value_0], arg6 = undefined, arg7 = undefined, arg8 = undefined, arg9 = undefined, arg10 = undefined, arg11 = undefined, arg12 = undefined, arg13 = undefined, arg14 = undefined) constructor
{
    var _nbrOfEffect = array_length(arg4);
    typeOfCard = arg3;
    structName = "";
    sprite = arg2;
    name = arg0;
    desc = arg1;
    actionType = arg4;
    targetType = (arg5 == undefined) ? array_create(_nbrOfEffect, UnknownEnum.Value_0) : arg5;
    amount = (arg6 == undefined) ? array_create(_nbrOfEffect, -1) : arg6;
    stack = (arg7 == undefined) ? array_create(_nbrOfEffect, -1) : arg7;
    damageBased = (arg8 == undefined) ? array_create(_nbrOfEffect, UnknownEnum.Value_0) : arg8;
    stackBased = (arg9 == undefined) ? array_create(_nbrOfEffect, UnknownEnum.Value_0) : arg9;
    chance = (arg10 == undefined) ? array_create(_nbrOfEffect, 100) : arg10;
    chanceClusivity = (arg11 == undefined) ? array_create(_nbrOfEffect, UnknownEnum.Value_0) : arg11;
    effectRequiredToActivate = (arg12 == undefined) ? array_create(_nbrOfEffect, undefined) : arg12;
    effectRequiredToSkip = (arg13 == undefined) ? array_create(_nbrOfEffect, undefined) : arg13;
    damageTimes = (arg14 == undefined) ? array_create(_nbrOfEffect, -1) : arg14;
}

function init_cards_action_variables()
{
    var _cards = variable_struct_get_names(global.cards);
    array_sort(_cards, true);
    
    for (var _i = 0; _i < get_size(global.cards); _i++)
    {
        var _k = _cards[_i];
        var _v = variable_struct_get(global.cards, _k);
        _v.structName = _k;
        
        if (_v.typeOfCard == UnknownEnum.Value_4)
            array_push(global.cardsMushroom, _v.structName);
        else if (_v.typeOfCard == UnknownEnum.Value_1)
            array_push(global.cardsForest, _v.structName);
        else if (_v.typeOfCard == UnknownEnum.Value_2)
            array_push(global.cardsCity, _v.structName);
    }
}

global.cards = {};
global.cardsForest = [];
global.cardsMushroom = [];
global.cardsCity = [];

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_4 = 4
}
