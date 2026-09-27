event_inherited();
set_sprite_managed_by_parent(false);
set_hover_sound([sndCard1, sndCard2, sndCard3]);
hostValidate = false;
shakeTimer = new myTimer(id, 0.5);
isVisible = true;

show = function()
{
    isVisible = true;
    image_alpha = 1;
};

is_visible = function()
{
    return isVisible;
};

cardIdLand = -4;

throw_it = function()
{
    if (global.fightManager.encounter != -4)
    {
        if (global.fightManager.encounter.structMonster == global.monsters.babayaga || global.fightManager.encounter.structMonster == global.monsters.funfair || global.fightManager.encounter.structMonster == global.monsters.platonia || global.fightManager.encounter.structMonster == global.monsters.blackMarket || global.fightManager.encounter.structMonster == global.monsters.faun)
            exit;
    }
    
    var _action = global.playersManager.get_action(number);
    var _char = global.playersManager.get_characters(number);
    
    if (_action != UnknownEnum.Value_14 && _action != UnknownEnum.Value_13 && _action != UnknownEnum.Value_0)
    {
        if (global.fightManager.isFightActive)
        {
            execute_effect(_char, UnknownEnum.Value_5);
            
            if (global.dayNightCycle.get_event() == UnknownEnum.Value_7)
                execute_effect(_char, UnknownEnum.Value_5, -4, global.effect.confusedMoon, UnknownEnum.Value_0);
        }
        else
        {
            execute_effect(_char, UnknownEnum.Value_6);
        }
    }
    
    cardIdLand = -4;
    _action = global.playersManager.get_action(number);
    
    switch (_action)
    {
        case UnknownEnum.Value_3:
        case UnknownEnum.Value_4:
        case UnknownEnum.Value_5:
        case UnknownEnum.Value_6:
            var _cardNumber = 0;
            
            switch (_action)
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
                    break;
            }
            
            cardIdLand = global.actionCards.theHand[_cardNumber];
            cardIdLand.set_depth_priority();
            
            if (global.fightManager.encounter.structMonster == global.monsters.shop)
            {
                xToLinkToCard = cardIdLand.x;
                yToLinkToCard = cardIdLand.y;
            }
            else
            {
                var _xMinCard = 23;
                var _xMaxCard = 107;
                var _posInCard = (_xMaxCard - _xMinCard) / global.playersCount;
                xToLinkToCard = cardIdLand.x + _xMinCard + irandom_range(_posInCard * number, _posInCard * (number + 1));
                yToLinkToCard = cardIdLand.y + irandom_range(38, 70);
            }
            
            xThrowInit = x;
            yThrowInit = y;
            
            if (cardIdLand.isLeftmostCard)
                array_push(_char.lastChoiceWasLeftmost, true);
            else
                array_push(_char.lastChoiceWasLeftmost, false);
            
            if (cardIdLand.isRightmostCard)
                array_push(_char.lastChoiceWasRightmost, true);
            else
                array_push(_char.lastChoiceWasRightmost, false);
            
            break;
        
        case UnknownEnum.Value_1:
            xToLinkToCard = global.uiPos.stopGem[number].x;
            yToLinkToCard = global.uiPos.stopGem[number].y;
            xThrowInit = xDraw;
            yThrowInit = yDraw;
            break;
        
        case UnknownEnum.Value_2:
            xToLinkToCard = global.uiPos.continueGem[number].x;
            yToLinkToCard = global.uiPos.continueGem[number].y;
            xThrowInit = xDraw;
            yThrowInit = yDraw;
            break;
        
        default:
            exit;
            break;
    }
    
    global.waitingList.set(id);
    stateNext = UnknownEnum.Value_1;
};

if (!variable_instance_exists(id, "number"))
    number = 0;

if (!variable_instance_exists(id, "numberBuy"))
    numberBuy = -1;

chainLinked = -4;
xToLinkToCard = 0;
yToLinkToCard = 0;
yInit = y;
xInit = x;
yOrigin = y;
xOrigin = x;
xThrowInit = x;
yThrowInit = y;
xDraw = x;
yDraw = y;
imgIndex = 0;
tokenBounceTimer = new myTimer(id, 0.4, 0, 1, "curve1");
state = undefined;
statePrev = undefined;

if (!variable_instance_exists(id, "stateNext"))
    stateNext = UnknownEnum.Value_0;

if (!variable_instance_exists(id, "theType"))
    theType = UnknownEnum.Value_0;

set_number = function(arg0)
{
    number = arg0;
    
    if (theType == UnknownEnum.Value_0)
        initialize();
};

initialize = function(arg0 = theType)
{
    var _char = (number == -1) ? -4 : global.playersManager.get_characters(number);
    theType = arg0;
    theTokenName = $"sprToken{number + 1}";
    effectLinked = [];
    var _tooltipName = "token._default";
    var _tooltipDesc = "token._defaultDesc";
    
    switch (theType)
    {
        case UnknownEnum.Value_3:
            theTokenName = "sprTokenLostInTime";
            _tooltipName = "token._lostInTime";
            _tooltipDesc = "token._lostInTimeDesc";
            break;
        
        case UnknownEnum.Value_4:
            theTokenName = "sprTokenFourLeaf";
            _tooltipName = "token._fourLeaf";
            _tooltipDesc = add_var_to_text(global.effect.cloverToken);
            effectLinked = global.effect.cloverToken;
            break;
        
        case UnknownEnum.Value_5:
            theTokenName = "sprTokenForeverKing";
            _tooltipName = "token._foreverKing";
            _tooltipDesc = add_var_to_text(global.effect.foreverKing);
            effectLinked = global.effect.foreverKing;
            break;
        
        case UnknownEnum.Value_6:
            theTokenName = "sprTokenGnomish";
            _tooltipName = "token._gnomish";
            _tooltipDesc = add_var_to_text(global.effect.gnomish);
            effectLinked = global.effect.gnomish;
            break;
        
        case UnknownEnum.Value_10:
            theTokenName = "sprTokenCalculatedRisk";
            _tooltipName = "token._calculatedRisk";
            _tooltipDesc = add_var_to_text(global.effect.calculatedRisk);
            effectLinked = [global.effect.calculatedRisk];
            break;
        
        case UnknownEnum.Value_11:
            theTokenName = "sprTokenValor";
            _tooltipName = "token._valor";
            _tooltipDesc = add_var_to_text(global.effect.valor);
            effectLinked = global.effect.valor;
            
            if (_char != -4)
                _char.update_hp_max(global.effect.valor.amount[0] - _char.hpMax, undefined, undefined, true, global.effect.valor.amount[0] - _char.hp, true);
            
            break;
        
        case UnknownEnum.Value_12:
            theTokenName = "sprTokenBlessed";
            _tooltipName = "token._blessed";
            _tooltipDesc = add_var_to_text(global.effect.blessed);
            effectLinked = global.effect.blessed;
            
            if (_char != -4)
                _char.update_hp_max(global.effect.blessed.amount[0] - _char.hpMax, undefined, undefined, true, global.effect.blessed.amount[0] - _char.hp);
            
            break;
        
        case UnknownEnum.Value_13:
            theTokenName = "sprTokenLoniless";
            _tooltipName = "token._loniless";
            _tooltipDesc = add_var_to_text(global.effect.loniless);
            effectLinked = global.effect.loniless;
            break;
        
        case UnknownEnum.Value_14:
            theTokenName = "sprTokenUnstable";
            _tooltipName = "token._unstable";
            _tooltipDesc = "token._unstableDesc";
            effectLinked = global.effect.dynamite;
            break;
        
        case UnknownEnum.Value_15:
            theTokenName = "sprTokenPhilosopher";
            _tooltipName = "token._philosopher";
            _tooltipDesc = add_var_to_text(global.effect.philosopherToken);
            effectLinked = global.effect.philosopherToken;
            
            if (_char != -4)
                _char.update_hp_max(global.effect.philosopherToken.amount[0] - _char.hpMax, undefined, undefined, true, global.effect.philosopherToken.amount[0] - _char.hp, true);
            
            break;
        
        case UnknownEnum.Value_16:
            theTokenName = "sprTokenMasterKey";
            _tooltipName = "token._masterKey";
            _tooltipDesc = "token._masterKeyDesc";
            break;
        
        case UnknownEnum.Value_17:
            theTokenName = "sprTokenNecrotic";
            _tooltipName = "token._necrotic";
            _tooltipDesc = add_var_to_text(global.effect.necrotic);
            
            if (_char != -4)
            {
                _char.receive_damage(true, _char.hp, -1, true);
                g_exchange_gem(_char.token.x, _char.token.y, undefined, undefined, global.effect.necrotic.amount[0], UnknownEnum.Value_2, undefined, UnknownEnum.Value_1, _char.number);
            }
            
            break;
        
        case UnknownEnum.Value_1:
            theTokenName = "sprTokenDead";
            _tooltipName = "token._dead";
            _tooltipDesc = string_concat("token._deadDesc", $"#{3}");
            break;
        
        case UnknownEnum.Value_20:
            theTokenName = "sprTokenCan";
            _tooltipName = "token._can";
            _tooltipDesc = add_var_to_text(global.effect.tocanToken);
            effectLinked = global.effect.tocanToken;
            break;
        
        case UnknownEnum.Value_19:
            theTokenName = "sprTokenDonkeyCap";
            _tooltipName = "token._donkeyCap";
            _tooltipDesc = "token._donkeyCapDesc";
            break;
        
        case UnknownEnum.Value_18:
            theTokenName = "sprTokenVulture";
            _tooltipName = "token._vulture";
            _tooltipDesc = add_var_to_text(global.effect.vulture);
            effectLinked = global.effect.vulture;
            break;
        
        case UnknownEnum.Value_9:
            theTokenName = "sprTokenAutocracy";
            _tooltipName = "token._autocracy";
            _tooltipDesc = "token._autocracyDesc";
            effectLinked = global.effect.autocracy;
            break;
        
        case UnknownEnum.Value_7:
            theTokenName = "sprTokenCursedLoverLeft";
            _tooltipName = "token._cursedLover";
            _tooltipDesc = string_concat("token._cursedLoverDesc", $"#{global.effect.cursedLoverSameChoice.amount[0]}#{global.effect.cursedLoverDeath.amount[0]}");
            effectLinked = [global.effect.cursedLoverSameChoice, global.effect.cursedLoverDeath];
            break;
        
        case UnknownEnum.Value_8:
            theTokenName = "sprTokenCursedLoverRight";
            _tooltipName = "token._cursedLover";
            _tooltipDesc = string_concat("token._cursedLoverDesc", $"#{global.effect.cursedLoverSameChoice.amount[0]}#{global.effect.cursedLoverDeath.amount[0]}");
            effectLinked = [global.effect.cursedLoverSameChoice, global.effect.cursedLoverDeath];
            break;
        
        case UnknownEnum.Value_21:
            theTokenName = "sprTokenWerewolf";
            _tooltipName = "token._werewolf";
            _tooltipDesc = "token._werewolfDesc";
            break;
        
        case UnknownEnum.Value_2:
            theTokenName = "sprTokenLeft";
            _tooltipName = "token._left";
            _tooltipDesc = "token._leftDesc";
            break;
        
        case UnknownEnum.Value_0:
        default:
            break;
    }
    
    if (!is_array(effectLinked))
        effectLinked = [effectLinked];
    
    sprite_index = asset_get_index(theTokenName);
    sprIdle = sprite_index;
    sprThrow = asset_get_index($"{theTokenName}Throw");
    delete_tooltip();
    var _tooltipParent = -4;
    var _heightOffsetTooltipBefore = -16;
    
    if (theType == UnknownEnum.Value_14)
    {
        var _structTooltipBefore = new cTooltip(id, global.effect.kaboom.name, add_var_to_text(global.effect.kaboom, global.effect.kaboom.stack, global.effect.kaboom.amount, global.effect.kaboom.chance), UnknownEnum.Value_2, UnknownEnum.Value_0, global.effect.kaboom.sprite, global.effect.kaboom);
        var _tooltipBefore = instance_create_depth(x, y - 16, 0, oTooltip, _structTooltipBefore);
        _tooltipBefore.persistent = true;
        _tooltipParent = _tooltipBefore;
        _heightOffsetTooltipBefore += -_tooltipBefore.height;
        set_tooltip(_tooltipBefore);
    }
    
    var _structTooltip = new cTooltip(id, _tooltipName, _tooltipDesc, UnknownEnum.Value_2, UnknownEnum.Value_0, undefined, undefined, undefined, undefined, _tooltipParent);
    var _tooltip = instance_create_depth(x, y + _heightOffsetTooltipBefore, 0, oTooltip, _structTooltip);
    _tooltip.persistent = true;
    set_tooltip(_tooltip);
    
    if (numberBuy != -1)
        _tooltip.inverse_order_parent();
    
    define_sprite(sprite_index);
};

initialize(theType);
timerThrow = new myTimer(id, 0.41, undefined, 1, "ease-out");
timerBackToNormal = new myTimer(id, 0.3, undefined, undefined, "ease-out");
peBuyToken = part_emitter_create(global.particlesSys);
add_to_clean_up(peBuyToken, UnknownEnum.Value_5);

clone = function(arg0, arg1, arg2)
{
    var _player = global.playersManager.get_characters(arg0);
    
    if (arg0 == 0)
        part_type_color3(global.particles.ptBuyToken, global.color.blue1, global.color.blue2, global.color.blue2);
    else if (arg0 == 1)
        part_type_color3(global.particles.ptBuyToken, global.color.yellow1, global.color.orange1, global.color.orange1);
    else if (arg0 == 2)
        part_type_color3(global.particles.ptBuyToken, global.color.green1, global.color.green2, global.color.green2);
    else if (arg0 == 3)
        part_type_color3(global.particles.ptBuyToken, global.color.purple1, global.color.purple2, global.color.purple2);
    
    part_emitter_region(global.particlesSys, peBuyToken, arg1, _player.token.xDraw, arg2, _player.token.yDraw, 3, 0);
    part_emitter_burst(global.particlesSys, peBuyToken, global.particles.ptBuyToken, 256);
    instance_create_depth(arg1, arg2, depth, oDieAfterAnimate, 
    {
        sprite_index: asset_get_index($"sprTokenActed{arg0 + 1}")
    });
    audio_play_sound(sndBuyToken, 1, false, undefined, undefined, random_range(0.9, 1.1));
    
    with (oChain)
    {
        distanceTraveled = 0;
        distanceToReachMax = random_range(10, 50);
        chainAngleVelocity += (random_range(0.5, 3) * ((other.x < x) ? 1 : -1));
    }
    
    if (chainLinked != -4)
    {
        chainLinked.token = -4;
        chainLinked.chainFixed = false;
        chainLinked = -4;
        audio_play_sound(sndChainMain, 1, false, undefined, undefined, random_range(0.9, 1.1));
    }
    
    _player.token.initialize(theType);
    instance_create_depth(_player.token.xDraw, _player.token.yDraw, depth, oDieAfterAnimate, 
    {
        sprite_index: asset_get_index($"sprTokenActed{arg0 + 1}")
    });
    
    if (numberBuy != -1)
        instance_destroy();
};

change_type = function(arg0)
{
    initialize(arg0);
    
    if (arg0 == UnknownEnum.Value_1 || arg0 == UnknownEnum.Value_2)
    {
        image_alpha = 0;
        stateNext = UnknownEnum.Value_6;
    }
};

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
    Value_21
}
