event_inherited();

if (!variable_instance_exists(id, "item"))
    item = undefined;

if (!variable_instance_exists(id, "cardNumber"))
    cardNumber = -1;

if (!variable_instance_exists(id, "cardNumberTotal"))
    cardNumberTotal = -1;

if (!variable_instance_exists(id, "cardType"))
    cardType = UnknownEnum.Value_1;

if (!variable_instance_exists(id, "cardDesign"))
    cardDesign = UnknownEnum.Value_2;

if (!variable_instance_exists(id, "hasClover"))
    hasClover = false;

animAttackMomentum = new myTimer(id, 0.3, undefined, 1, "ease-out");
animAttackHit = new myTimer(id, 0.075, undefined, 1);
animEffectHit = new myTimer(id, 0.5, undefined, 1);
animAttackReset = new myTimer(id, 0.5, undefined, 1, "ease-in-out");
xAnimFrom = 0;
yAnimFrom = 0;
xAnimTo = 0;
yAnimTo = 0;
xInit = 0;
yInit = 0;
animTarget = -4;
animDamageAmount = 0;
animDamageTime = 0;
animEffectStack = 0;
animEffect = undefined;
animEffectX = 0;
animEffectY = 0;

launch_attack = function(arg0, arg1 = -1, arg2 = 1)
{
    stateNext = UnknownEnum.Value_6;
    animTarget = arg0;
    animDamageAmount = arg1;
    animDamageTime = arg2;
    xAnimFrom = xInit;
    yAnimFrom = yInit;
    xAnimTo = xInit;
    yAnimTo = yAnimFrom - 16;
    set_depth_priority();
};

launch_effect = function(arg0, arg1 = undefined, arg2 = -1, arg3 = 0, arg4 = 0)
{
    stateNext = UnknownEnum.Value_10;
    animTarget = arg0;
    animEffectStack = arg2;
    animEffect = arg1;
    animEffectX = arg3;
    animEffectY = arg4;
    xAnimFrom = xInit;
    yAnimFrom = yInit;
    xAnimTo = xInit;
    yAnimTo = yAnimFrom - ((global.fightManager.encounter.structMonster == global.monsters.shop) ? 0 : 16);
    set_depth_priority();
};

set_depth_priority = function()
{
    with (oCardItem)
        depth = global.depthManager.get_depth("cards");
    
    depth = global.depthManager.get_depth("cardActive");
};

state = UnknownEnum.Value_0;
statePrev = undefined;
stateNext = undefined;
spriteButtonLinked = sprCardItemButton;

switch (cardDesign)
{
    case UnknownEnum.Value_2:
        define_sprite(sprCardItemBg);
        break;
    
    case UnknownEnum.Value_4:
        define_sprite(sprCardItemBgBloodMoon);
        break;
    
    case UnknownEnum.Value_3:
        define_sprite(sprCardItemBgYuleMoon);
        break;
    
    case UnknownEnum.Value_6:
        define_sprite(sprCardItemBgEclipse);
        break;
    
    case UnknownEnum.Value_5:
        define_sprite(sprCardItemBgMushroom);
        break;
    
    case UnknownEnum.Value_7:
        define_sprite(sprCardItemBgRandom);
        break;
    
    case UnknownEnum.Value_8:
        define_sprite(sprCardItemBgCloneMoon);
        break;
    
    case UnknownEnum.Value_9:
        define_sprite(sprCardItemBgConfusedMoon);
        break;
    
    case UnknownEnum.Value_0:
        define_sprite(item.sprite);
        break;
    
    case UnknownEnum.Value_1:
        define_sprite(sprCardItemBgCommonPot);
        break;
}

actionType = UnknownEnum.Value_3;

switch (cardNumber)
{
    case 0:
        actionType = UnknownEnum.Value_3;
        break;
    
    case 1:
        actionType = UnknownEnum.Value_4;
        break;
    
    case 2:
        actionType = UnknownEnum.Value_5;
        break;
    
    case 3:
        actionType = UnknownEnum.Value_6;
        break;
}

depth = global.depthManager.get_depth("cards");
timerDestroy = new myTimer(id, 0.25, undefined, undefined, "ease-out");
timerMagnet = new myTimer(id, 0.3, undefined, undefined, "ease-out");
timerExecute = new myTimer(id, 0.25);
nbrCharLinked = [];
animBtn = undefined;
txtName = undefined;
txtDesc = undefined;
spriteWidth = sprite_get_width(sprite_index);
animMoveUp = new myTimer(id, 0.3, 0.075 * cardNumber, 1, "ease-out");
image_alpha = 0;
offsetMoveUpY = 16;
offsetJiggleY = 0;
offsetJiggleItemY = 0;

update_desc = function()
{
    var _txtPadding = 28;
    var _desc = add_var_to_text(item);
    txtName = scribble($"{item.name}", "cardName").align(1, 1).wrap((spriteWidth - _txtPadding) * global.zoom);
    txtDesc = scribble($"{_desc}", "cardDesc").align(1, 1).wrap((spriteWidth - _txtPadding) * global.zoom);
};

update_desc();

update_position = function()
{
    if (cardType == UnknownEnum.Value_5)
    {
        if (cardNumber == 0)
        {
            xTo = 463;
            yTo = 69;
        }
        else if (cardNumber == 1)
        {
            xTo = 385;
            yTo = 146;
        }
        else if (cardNumber == 2)
        {
            xTo = 541;
            yTo = 146;
        }
        else if (cardNumber == 3)
        {
            xTo = 463;
            yTo = 222;
        }
        
        x = xTo;
        y = yTo;
    }
    else if (cardType == UnknownEnum.Value_9)
    {
        if (cardNumber == 0)
        {
            xTo = 427;
            yTo = 80;
        }
        else if (cardNumber == 1)
        {
            xTo = 362;
            yTo = 144;
        }
        else if (cardNumber == 2)
        {
            xTo = 491;
            yTo = 144;
        }
        else if (cardNumber == 3)
        {
            xTo = 427;
            yTo = 210;
        }
        
        x = xTo;
        y = yTo;
    }
    else
    {
        var _center = global.uiPos.cardItem.x;
        var _spacing = 0;
        xTo = _center - (((sprite_get_width(sprite_index) * cardNumberTotal) + (_spacing * (cardNumberTotal - 1))) / 2);
        xTo += (cardNumber * (sprite_get_width(sprite_index) + _spacing));
        x = xTo;
        yTo = global.uiPos.cardItem.y;
        y = yTo;
    }
    
    xInit = x;
    yInit = y;
};

update_position();
gamepadBtnLinked = undefined;
isLeftmostCard = false;
isRightmostCard = false;

if (cardNumberTotal == 1)
{
    if (cardNumber == 0)
    {
        isLeftmostCard = true;
        isRightmostCard = true;
        gamepadBtnLinked = (global.displayControllerAsset == UnknownEnum.Value_0) ? UnknownEnum.Value_6 : UnknownEnum.Value_9;
        animBtn = new myTimer(id, undefined, undefined, -1, undefined, undefined, sprBtnUp);
    }
}
else if (cardNumberTotal == 2)
{
    if (cardNumber == 0)
    {
        isLeftmostCard = true;
        gamepadBtnLinked = (global.displayControllerAsset == UnknownEnum.Value_0) ? UnknownEnum.Value_6 : UnknownEnum.Value_7;
        animBtn = new myTimer(id, undefined, undefined, -1, undefined, undefined, sprBtnLeft);
    }
    else if (cardNumber == 1)
    {
        isRightmostCard = true;
        gamepadBtnLinked = (global.displayControllerAsset == UnknownEnum.Value_0) ? UnknownEnum.Value_6 : UnknownEnum.Value_8;
        animBtn = new myTimer(id, undefined, undefined, -1, undefined, undefined, sprBtnRight);
    }
}
else if (cardNumberTotal == 3)
{
    if (cardNumber == 0)
    {
        isLeftmostCard = true;
        gamepadBtnLinked = (global.displayControllerAsset == UnknownEnum.Value_0) ? UnknownEnum.Value_6 : UnknownEnum.Value_7;
        animBtn = new myTimer(id, undefined, undefined, -1, undefined, undefined, sprBtnLeft);
    }
    else if (cardNumber == 1)
    {
        gamepadBtnLinked = (global.displayControllerAsset == UnknownEnum.Value_0) ? UnknownEnum.Value_6 : UnknownEnum.Value_9;
        animBtn = new myTimer(id, undefined, undefined, -1, undefined, undefined, sprBtnUp);
    }
    else if (cardNumber == 2)
    {
        isRightmostCard = true;
        gamepadBtnLinked = (global.displayControllerAsset == UnknownEnum.Value_0) ? UnknownEnum.Value_6 : UnknownEnum.Value_8;
        animBtn = new myTimer(id, undefined, undefined, -1, undefined, undefined, sprBtnRight);
    }
}
else if (cardNumberTotal == 4)
{
    if (cardNumber == 0)
    {
        gamepadBtnLinked = (global.displayControllerAsset == UnknownEnum.Value_0) ? UnknownEnum.Value_6 : UnknownEnum.Value_9;
    }
    else if (cardNumber == 1)
    {
        isLeftmostCard = true;
        gamepadBtnLinked = (global.displayControllerAsset == UnknownEnum.Value_0) ? UnknownEnum.Value_6 : UnknownEnum.Value_7;
    }
    else if (cardNumber == 2)
    {
        isRightmostCard = true;
        gamepadBtnLinked = (global.displayControllerAsset == UnknownEnum.Value_0) ? UnknownEnum.Value_6 : UnknownEnum.Value_8;
    }
    else if (cardNumber == 3)
    {
        gamepadBtnLinked = (global.displayControllerAsset == UnknownEnum.Value_0) ? UnknownEnum.Value_6 : UnknownEnum.Value_6;
    }
}

if (animBtn != undefined)
    animBtn.run();

if (cardType == UnknownEnum.Value_5)
{
    modalX = xTo;
    modalY = yTo - (sprite_get_height(sprite_index) / 2);
    generate_tooltip(id, item, modalX, modalY, UnknownEnum.Value_2, UnknownEnum.Value_0, undefined, undefined, UnknownEnum.Value_2);
}
else if (cardType == UnknownEnum.Value_9)
{
    if (cardNumber == 2)
        generate_tooltip(id, item, xTo + sprite_get_width(sprite_index), yTo, UnknownEnum.Value_1, UnknownEnum.Value_2, undefined, undefined, UnknownEnum.Value_1);
    else
        generate_tooltip(id, item, xTo - (sprite_get_width(sprite_index) / 2), yTo, UnknownEnum.Value_0, UnknownEnum.Value_2, undefined, undefined, UnknownEnum.Value_1);
}
else
{
    modalX = xTo + (sprite_get_width(sprite_index) / 2);
    modalY = (yTo + sprite_get_height(sprite_index)) - 24;
    generate_tooltip(id, item, modalX, modalY, UnknownEnum.Value_2, UnknownEnum.Value_1, undefined, undefined, UnknownEnum.Value_1);
}

if (item == global.cards.minstrelLeft || item == global.cards.minstrelRight)
    set_hover_sound([sndGuitar1, sndGuitar2, sndGuitar3, sndGuitar4, sndGuitar5, sndGuitar6], true);
else
    set_hover_sound([sndCard1, sndCard2, sndCard3]);

wiggle = new WiggleEffect(id);
width = sprite_get_width(sprite_index);
height = sprite_get_height(sprite_index);
theClover = -4;

if (hasClover)
    theClover = instance_create_depth(x + sprite_xoffset + 65, y + sprite_yoffset + 29, global.depthManager.get_depth("clover"), oClover);

if (global.fightManager.encounter.structMonster == global.monsters.shop || global.fightManager.encounter.structMonster == global.monsters.funfair)
{
    launchEffectX = x;
    launchEffectY = y;
}
else
{
    launchEffectX = x + (width / 2);
    launchEffectY = y + 24;
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
    Value_10
}
