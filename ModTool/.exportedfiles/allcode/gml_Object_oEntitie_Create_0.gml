if (!variable_instance_exists(id, "className"))
    className = "";

if (!variable_instance_exists(id, "spriteName"))
    spriteName = "";

if (!variable_instance_exists(id, "hpMax"))
    hpMax = 0;

if (!variable_instance_exists(id, "number"))
    number = 0;

token = -4;
stats = new counterStats();

if (!variable_instance_exists(id, "effects"))
    effects = [];

delete_effect = function(arg0 = [], arg1 = false, arg2 = -1)
{
    if (array_length(effects) <= 0)
        exit;
    
    if (arg2 != -1)
    {
        delete_effect_process(arg2, arg0, arg1);
    }
    else
    {
        var _i = array_length(effects) - 1;
        
        while (_i >= 0)
        {
            delete_effect_process(_i, arg0, arg1);
            _i--;
        }
    }
    
    reposition_effect();
};

delete_effect_process = function(arg0, arg1, arg2)
{
    if (!instance_exists(effects[arg0]))
        exit;
    
    var _shouldDelete;
    
    if (arg2)
    {
        _shouldDelete = false;
        
        if (effects[arg0].stack <= 0)
            _shouldDelete = true;
    }
    else
    {
        _shouldDelete = true;
        
        if (array_length(arg1) != 0)
        {
            for (var _c = 0; _c < array_length(effects[arg0].theStruct.condition); _c++)
            {
                for (var _c2 = 0; _c2 < array_length(arg1); _c2++)
                {
                    if (effects[arg0].theStruct.condition[_c] == arg1[_c2])
                        _shouldDelete = false;
                }
            }
        }
    }
    
    if (_shouldDelete)
    {
        if (effects[arg0].theStruct.structName == global.effect.hallucinogenicVision.structName)
        {
            spriteProfileHpHidden = spriteProfileHpHiddenDefault;
            
            if (is_in_fight() && is_alive())
            {
                spriteProfile = spriteProfileDefault;
                spriteProfileBoxGem = spriteProfileBoxGemDefault;
            }
            else if (!is_in_fight() && is_alive())
            {
                spriteProfile = spriteProfileLeaving;
                spriteProfileBoxGem = spriteProfileBoxGemLeft;
            }
            else if (!is_in_fight() && !is_alive())
            {
                spriteProfile = spriteProfileDead;
                spriteProfileBoxGem = spriteProfileBoxGemDead;
            }
        }
        
        instance_destroy(effects[arg0]);
        array_delete(effects, arg0, 1);
    }
};

reposition_effect = function()
{
    var _lengthEffect = array_length(effects);
    
    if (_lengthEffect > 0)
    {
        var _x = xEffect;
        var _y = yEffect;
        var _yOffset = 0;
        
        for (var _i = 0; _i < _lengthEffect; _i++)
        {
            if ((_i % 6) == 0 && _i != 0)
                _yOffset -= 16;
            
            effects[_i].x = _x + ((_i % 6) * 16);
            effects[_i].y = _y + _yOffset;
            
            if (array_length(effects[_i].tooltip) > 0)
                effects[_i].tooltip[0].reposition(effects[_i].get_modal_x(), effects[_i].get_modal_y());
        }
    }
};

check_effect_activation = function()
{
    var _lengthEffect = array_length(effects);
    
    for (var _i = 0; _i < _lengthEffect; _i++)
        effects[_i].check_vfx_activation();
};

effect_index = function(arg0)
{
    for (var _i = 0; _i < array_length(effects); _i++)
    {
        if (instance_exists(effects[_i]) && effects[_i].theStruct.structName == arg0.structName)
            return _i;
    }
    
    return -1;
};

get_effect = function(arg0)
{
    return effects[arg0];
};

receive_effect = function(arg0, arg1, arg2, arg3)
{
    if (!is_alive() || !is_in_fight())
        exit;
    
    effectIncoming = arg0;
    effectStackIncoming = arg1;
    effectConditionIncoming = effectIncoming.condition;
    execute_effect(id, UnknownEnum.Value_30);
    
    if (effectIncoming != -1 && effectStackIncoming > 0)
    {
        var _exist = effect_index(effectIncoming);
        
        if (_exist == -1)
        {
            var _struct = 
            {
                theStruct: effectIncoming,
                amount: effectIncoming.amount,
                stack: 0,
                chance: effectIncoming.chance,
                condition: effectConditionIncoming,
                sprite_index: effectIncoming.sprite,
                number: number
            };
            var _lengthEffect = array_length(effects);
            var _x = (_lengthEffect % 6) * 16;
            var _y = floor(_lengthEffect / 6) * 16 * -1;
            var _newEffect = instance_create_depth(xEffect + _x, yEffect + _y, global.depthManager.get_depth("effect"), oEffect, _struct);
            _newEffect.increase_props(effectStackIncoming, arg2, arg3);
            array_push(effects, _newEffect);
        }
        else
        {
            var _theEffect = effects[_exist];
            _theEffect.increase_props(effectStackIncoming, arg2, arg3);
        }
    }
    
    reset_fight_var();
};

shakeTimer = new myTimer(id, 0.5);
damageTimer = new myTimer(id, 0.25);
lastChoiceWasLeftmost = [false];
lastChoiceWasRightmost = [false];
damageIncoming = 0;
damageMinimumIncoming = 0;
damagePartNbr = 1;
damageSprSource = -1;
healIncoming = 0;
healSprSource = -1;
effectIncoming = undefined;
effectStackIncoming = 0;
effectConditionIncoming = [];
lastDirectDamage = 0;
lastDirectHeal = 0;
hpLostDuringTheMonster = 0;
fightText = [];
fightTextPosition = 0;

reset_fight_var = function()
{
    damageIncoming = 0;
    damageMinimumIncoming = 0;
    damageSprSource = -1;
    healSprSource = -1;
    healIncoming = 0;
    reset_gem_fight_var();
    effectIncoming = undefined;
    effectStackIncoming = 0;
    effectConditionIncoming = [];
};

reset_gem_fight_var = function()
{
    gemIncoming = 0;
};

rezurrection = function(arg0, arg1, arg2 = true, arg3 = true)
{
    reset_fight_var();
    
    if (arg3)
    {
        lastDirectDamage = 0;
        lastDirectHeal = 0;
        lastChoiceWasLeftmost = [false];
        lastChoiceWasRightmost = [false];
        hpPreviousTurn = [100];
        gem = 0;
        update_text_gem();
        gemSecureIncoming = 0;
        stats = new counterStats();
    }
    
    update_hp_max(arg1 - hpMax, undefined, false, true, arg0 - hp, true);
    sprite_index = spriteIdle;
    spriteProfile = spriteProfileDefault;
    spriteProfileBoxGem = spriteProfileBoxGemDefault;
    isInFight = true;
    isAlive = true;
    isDeadThisTurn = false;
    stateNext = UnknownEnum.Value_1;
    
    if (token != -4)
        token.initialize(UnknownEnum.Value_0);
    
    if (arg2)
        create_float_text("global._resurrection", undefined, UnknownEnum.Value_0);
};

create_float_text = function(arg0, arg1 = "", arg2)
{
    if (typeof(arg1) == "ref")
        arg1 = sprite_get_name(arg1);
    
    var _labelModified = arg0;
    
    if (arg2 == UnknownEnum.Value_1 || arg2 == UnknownEnum.Value_2 || arg2 == UnknownEnum.Value_3)
    {
        if (global.dayNightCycle.currentEvent == UnknownEnum.Value_4)
        {
            _labelModified = "";
            
            for (var _labelLength = 0; _labelLength < string_length(arg0); _labelLength++)
                _labelModified += "?";
        }
    }
    
    var _floatText = instance_create_depth(xUi + 32, yUi - 24, depth - 1, oFloatText, 
    {
        label: _labelModified,
        labelOriginal: arg0,
        sprSource: arg1,
        category: arg2,
        owner: id
    });
};

receive_damage = function(arg0 = 1, arg1, arg2 = -1, arg3 = false)
{
    execute_effect(id, UnknownEnum.Value_15);
    var _damagePartAmount = g_distribute(arg1, damagePartNbr);
    
    for (var _damagePart = 0; _damagePart < damagePartNbr; _damagePart++)
    {
        if (!is_alive() || hp <= 0 || _damagePartAmount[_damagePart] == 0)
            continue;
        
        damageIncoming = _damagePartAmount[_damagePart];
        damageSprSource = (arg2 != -1) ? sprite_get_name(arg2) : "";
        
        if (!arg3)
        {
            if (arg0)
            {
                execute_effect(id, UnknownEnum.Value_12);
                execute_effect(id, UnknownEnum.Value_13);
            }
            else
            {
                execute_effect(id, UnknownEnum.Value_14);
            }
            
            if (damageIncoming > 0 || damageMinimumIncoming > 0)
            {
                damageIncoming = max(damageIncoming, damageMinimumIncoming);
                execute_effect(id, UnknownEnum.Value_17);
            }
            
            damageIncoming = round(damageIncoming);
        }
        
        if (damageIncoming > 0)
        {
            if (arg0)
            {
                lastDirectDamage = damageIncoming;
                hpLostDuringTheMonster += damageIncoming;
                execute_effect(id, UnknownEnum.Value_18);
            }
            else
            {
                execute_effect(id, UnknownEnum.Value_19);
            }
            
            execute_effect(id, UnknownEnum.Value_20);
            var _applyDamageAbility = true;
            
            if (_applyDamageAbility)
            {
                create_float_text($"{damageIncoming}", damageSprSource, UnknownEnum.Value_1);
                apply_damage(damageIncoming, damageSprSource, UnknownEnum.Value_1);
                
                if (arg0)
                {
                    global.shader.update_shape();
                    var _vfxHit = instance_create_depth(xUi + 33, yUi + 24, global.depthManager.get_depth("ui"), oDieAfterAnimate, 
                    {
                        sprite_index: sprVfxHit
                    });
                    _vfxHit.image_xscale = choose(-1, 1);
                    _vfxHit.image_yscale = choose(-1, 1);
                }
            }
        }
        
        reset_fight_var();
    }
    
    damagePartNbr = 1;
};

apply_damage = function(arg0, arg1, arg2)
{
    hp = max(0, hp - arg0);
    audio_play_sound(choose(sndHit1, sndHit2, sndHit3), 10, 0, undefined, undefined, random_range(0.9, 1.1));
    global.chromaStrenght += min(25, map_value(arg0, 0, 100, 10, 30));
    global.camera.shakeTimer.reset();
    global.camera.shakeTimer.run();
    global.shake.add_element(global.camera.id, UnknownEnum.Value_2);
    token.shakeTimer.reset();
    token.shakeTimer.run();
    shakeTimer.reset();
    shakeTimer.run();
    
    if (hp == 0)
        audio_play_sound(sndDeath, 10, 0, undefined, undefined, random_range(0.9, 1.1));
    
    stateNext = UnknownEnum.Value_0;
    update_hp_txt();
    check_effect_activation();
};

miss = function()
{
    create_float_text("global._miss", undefined, UnknownEnum.Value_0);
    audio_play_sound(sndMissHit, 10, 0, undefined, undefined, random_range(0.9, 1.1));
};

receive_heal = function(arg0 = 1, arg1, arg2 = -1)
{
    healIncoming = arg1;
    healSprSource = (arg2 != -1) ? sprite_get_name(arg2) : "";
    
    if (healIncoming > 0)
        execute_effect(id, UnknownEnum.Value_21);
    
    if (arg0)
        execute_effect(id, UnknownEnum.Value_23);
    else
        execute_effect(id, UnknownEnum.Value_22);
    
    if (healIncoming > 0)
        execute_effect(id, UnknownEnum.Value_24);
    
    healIncoming = round(healIncoming);
    
    if (healIncoming > 0 && hp > 0)
    {
        if (arg0)
            lastDirectHeal = healIncoming;
        
        execute_effect(id, UnknownEnum.Value_25);
        apply_heal(healIncoming, healSprSource);
    }
    
    reset_fight_var();
};

apply_heal = function(arg0, arg1)
{
    if (!is_alive())
    {
        isAlive = true;
        stateNext = UnknownEnum.Value_1;
    }
    
    create_float_text($"{arg0}", arg1, UnknownEnum.Value_2);
    hp = min(hp + arg0, hpMax);
    update_hp_txt();
    check_effect_activation();
};

isAlive = true;

is_alive = function()
{
    return isAlive;
};

isDeadThisTurn = false;

is_dead_this_turn = function()
{
    return isDeadThisTurn;
};

isInFight = true;

is_in_fight = function()
{
    return isInFight;
};

spriteIllu = (asset_get_index($"sprIllu{spriteName}") == -1) ? undefined : asset_get_index($"sprIllu{spriteName}");
spriteHead = (asset_get_index($"spr{spriteName}Head") == -1) ? undefined : asset_get_index($"spr{spriteName}Head");
spriteHeadSmall = (asset_get_index($"spr{spriteName}HeadSmall") == -1) ? undefined : asset_get_index($"spr{spriteName}HeadSmall");
spriteIdle = asset_get_index($"spr{spriteName}");
spriteHit = (asset_get_index($"spr{spriteName}Hit") == -1) ? spriteIdle : asset_get_index($"spr{spriteName}Hit");
spriteDead = (asset_get_index($"sprDeadP{number + 1}") == -1) ? spriteIdle : asset_get_index($"sprDeadP{number + 1}");
sprite_index = spriteIdle;
spriteOffsetX = 0;
spriteOffsetY = 0;
spriteW = sprite_get_width(sprite_index);
spriteH = sprite_get_height(sprite_index);
spriteProfile = sprProfileCharacter;
spriteProfileDefault = sprProfileCharacter;
spriteProfileDead = sprProfileCharacterDisabled;
spriteProfileDeadTop = sprProfileCharacterDisabledTop;
spriteProfileMushroom = sprProfileCharacterMushroom;
spriteProfileLeaving = sprProfileCharacterLeft;
spriteProfileBoxGemDefault = sprProfileBoxGem;
spriteProfileBoxGemLeft = sprProfileBoxGemLeft;
spriteProfileBoxGemDead = sprProfileBoxGemDisabled;
spriteProfileBoxGemMushroom = sprProfileBoxGemMushroom;
spriteProfileBoxGem = spriteProfileBoxGemDefault;
spriteProfileHp = sprProfileHp;
spriteProfileGem = sprGemSmall;
spriteProfileHpHiddenDefault = sprUiPlayerHpEclipse;
spriteProfileHpHidden = spriteProfileHpHiddenDefault;
spriteProfileHpHiddenMushroom = sprUiPlayerHpEclipseMushroom;

set_sprite = function()
{
    spriteIllu = (asset_get_index($"sprIllu{spriteName}") == -1) ? undefined : asset_get_index($"sprIllu{spriteName}");
    spriteHead = (asset_get_index($"spr{spriteName}Head") == -1) ? undefined : asset_get_index($"spr{spriteName}Head");
    spriteHeadSmall = (asset_get_index($"spr{spriteName}HeadSmall") == -1) ? undefined : asset_get_index($"spr{spriteName}HeadSmall");
    spriteIdle = asset_get_index($"spr{spriteName}");
    spriteHit = (asset_get_index($"spr{spriteName}Hit") == -1) ? spriteIdle : asset_get_index($"spr{spriteName}Hit");
    spriteDead = (asset_get_index($"sprDeadP{number + 1}") == -1) ? spriteIdle : asset_get_index($"sprDeadP{number + 1}");
    sprite_index = spriteIdle;
    spriteOffsetX = 0;
    spriteOffsetY = 0;
    spriteW = sprite_get_width(sprite_index);
    spriteH = sprite_get_height(sprite_index);
    spriteProfile = sprProfileCharacter;
    spriteProfileDefault = sprProfileCharacter;
    spriteProfileDead = sprProfileCharacterDisabled;
    spriteProfileDeadTop = sprProfileCharacterDisabledTop;
    spriteProfileMushroom = sprProfileCharacterMushroom;
    spriteProfileLeaving = sprProfileCharacterLeft;
    spriteProfileBoxGemDefault = sprProfileBoxGem;
    spriteProfileBoxGemLeft = sprProfileBoxGemLeft;
    spriteProfileBoxGemDead = sprProfileBoxGemDisabled;
    spriteProfileBoxGemMushroom = sprProfileBoxGemMushroom;
    spriteProfileBoxGem = spriteProfileBoxGemDefault;
    spriteProfileHp = sprProfileHp;
    spriteProfileGem = sprGemSmall;
    spriteProfileHpHiddenDefault = sprUiPlayerHpEclipse;
    spriteProfileHpHidden = spriteProfileHpHiddenDefault;
    spriteProfileHpHiddenMushroom = sprUiPlayerHpEclipseMushroom;
};

hpMaxInit = hpMax;
hp = hpMaxInit;
hpPrev = hp;
hpProfileH = sprite_get_height(sprProfileHp);
hpProfileWMax = sprite_get_width(sprProfileHp);
hpProfileW = hpProfileWMax;
hpProfileWTo = hpProfileWMax;
timerHp = new myTimer(id, 0.25);
txtHp = scribble($"{hp}", $"{id}hp").scale(global.fontScaleTitle).starting_format("ftNbrBig", global.color.grey1).align(2, 0);
txtHpLabel = scribble($"/{hpMax}", $"{id}hpLabel").starting_format("ftNbrSmall", global.color.grey1).align(2, 0);

update_hp_max = function(arg0, arg1 = "", arg2 = true, arg3 = false, arg4 = 0, arg5 = false)
{
    if (token.theType == UnknownEnum.Value_11 && !arg5)
        exit;
    
    if (typeof(arg1) == "ref")
        arg1 = sprite_get_name(arg1);
    
    hpMax = max(1, hpMax + arg0);
    
    if (arg2)
        create_float_text(arg0, arg1, UnknownEnum.Value_0);
    
    if (arg3)
        update_hp_soft(arg4, "", false);
    
    if (hp > hpMax)
        update_hp_soft(hpMax - hp, "", false);
    
    update_hp_txt();
};

update_hp_soft = function(arg0, arg1 = "", arg2 = true)
{
    if (typeof(arg1) == "ref")
        arg1 = sprite_get_name(arg1);
    
    hp += arg0;
    hp = clamp(hp, 0, hpMax);
    update_hp_txt();
    
    if (arg2)
        create_float_text(arg0, arg1, UnknownEnum.Value_0);
};

update_hp_txt = function()
{
    var _textHp;
    
    if (global.dayNightCycle.currentEvent == UnknownEnum.Value_4)
    {
        _textHp = "???";
        
        if (hp >= 10 && hp <= 99)
            _textHp = "??";
        else if (hp < 10)
            _textHp = "?";
    }
    else
    {
        _textHp = hp;
    }
    
    if (scribble_is_text_element(txtHpLabel))
        txtHpLabel.flush();
    
    txtHpLabel = scribble($"/{hpMax}", $"{id}hpLabel").starting_format("ftNbrSmall", global.color.grey1).align(2, 2);
    
    if (scribble_is_text_element(txtHp))
        txtHp.flush();
    
    txtHp = scribble($"{_textHp}", $"{id}hp").starting_format("ftNbrBig", global.color.grey1).scale(global.fontScaleTitle).align(2, 2);
};

hpPreviousTurn = [100];

save_hp_previous_turn = function()
{
    hpPreviousTurn[global.fightManager.get_fight_counter()] = hp;
};

get_hp_previous_turn = function(arg0)
{
    arg0 -= 1;
    var _lengthTurnMax = array_length(hpPreviousTurn);
    arg0 = clamp(arg0, 0, _lengthTurnMax);
    return hpPreviousTurn[arg0];
};

xInit = x;
yInit = y;
xUi = x;
yUi = y;
xEffect = x + 64;
yEffect = y + 14;
currentChatbox = undefined;
gemSecured = 0;
gemSecureIncoming = 0;
gemSecuredTxt = scribble($"{gemSecured}", $"{id}gemSecuredPlayer").starting_format("ftNbrSmall").align(1, 1);

update_text_gem_secured = function()
{
    gemSecuredTxt = scribble($"{gemSecured}", $"{id}gemSecuredPlayer").starting_format("ftNbrSmall").align(1, 1);
};

get_gem_secured = function()
{
    return gemSecured;
};

gem = 0;
gemIncoming = 0;
gemTxt = scribble(gem, $"{id}gem").starting_format("ftNbrBig", global.color.grey1).scale(global.fontScaleTitle).align(2, 1);
peGem = part_emitter_create(global.particlesSys);
add_to_clean_up(peGem, UnknownEnum.Value_6);
var _size = 9;
var _xp = xUi + 45;
var _yp = yUi + 58;
part_emitter_region(global.particlesSys, peGem, _xp - _size, _xp + _size, _yp - _size, _yp + _size, 2, 2);

add_gem_secure_callback = function()
{
    gemSecured += 1;
    update_text_gem_secured();
    audio_play_sound(choose(sndGemStone1, sndGemStone2, sndGemStone3), 10, false);
};

add_gem_callback = function()
{
    gem += 1;
    update_text_gem();
    part_emitter_burst(global.particlesSys, peGem, global.particles.ptGem, 8);
    audio_play_sound(choose(sndGemStone1, sndGemStone2, sndGemStone3), 10, false);
    check_effect_activation();
};

delete_gem_callback = function()
{
    gem = max(0, gem - 1);
    update_text_gem();
};

update_text_gem = function()
{
    if (scribble_is_text_element(gemTxt))
        gemTxt.flush();
    
    gemTxt = scribble(gem, $"{id}gem").starting_format("ftNbrBig", global.color.grey1).scale(global.fontScaleTitle).align(2, 1);
};

get_gem = function()
{
    return gem;
};

state = undefined;
stateNext = undefined;
statePrev = undefined;
ability = instance_create_depth(xUi, yUi, global.depthManager.get_depth("token"), oAbilities, 
{
    number: number,
    theType: charType
});

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_6 = 6,
    Value_11 = 11,
    Value_12,
    Value_13,
    Value_14,
    Value_15,
    Value_17 = 17,
    Value_18,
    Value_19,
    Value_20,
    Value_21,
    Value_22,
    Value_23,
    Value_24,
    Value_25,
    Value_30 = 30
}
