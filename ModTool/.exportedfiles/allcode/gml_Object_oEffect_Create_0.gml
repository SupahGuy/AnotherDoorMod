event_inherited();

increase_props = function(arg0, arg1, arg2, arg3 = false)
{
    stack += arg0;
    var _theDepth, _theStateNext;
    
    if (sign(arg0) == 1)
    {
        _theStateNext = UnknownEnum.Value_0;
        _theDepth = global.depthManager.get_depth("effect") - 1;
    }
    else if (sign(arg0) == -1)
    {
        _theStateNext = UnknownEnum.Value_2;
        _theDepth = global.depthManager.get_depth("effect") + 1;
    }
    else
    {
        exit;
    }
    
    for (var _i = 0; _i < abs(arg0); _i++)
    {
        instance_create_depth(arg1, arg2, _theDepth, oEffectAnimated, 
        {
            sprite_index: sprite_index,
            linkedTo: id,
            appearDelay: _i * 0.08333333333333333,
            stateNext: _theStateNext,
            xTo: x,
            yTo: y
        });
    }
};

update_txt = function()
{
    var _stackText = stackVisual;
    
    if (sign(stackVisual) == -1)
        _stackText = 0;
    
    stackTxt = scribble(_stackText, $"{id}").starting_format("ftNbrSmall", global.color.grey1).align(2, 0);
    
    for (var _i = 0; _i < array_length(tooltip); _i++)
    {
        if (!instance_exists(tooltip[_i]))
            continue;
        
        var _desc;
        
        if (tooltip[_i].effectIsLinked)
            _desc = add_var_to_text(tooltip[_i].effect, -1, -1, -1);
        else
            _desc = add_var_to_text(tooltip[_i].effect, stack, amount, chance);
        
        tooltip[_i].updateTxt(tooltip[_i].effect.name, _desc);
    }
};

if (!variable_instance_exists(id, "theStruct"))
    theStruct = undefined;

if (!variable_instance_exists(id, "stack"))
    stack = 1;

if (!variable_instance_exists(id, "amount"))
    amount = -1;

if (!variable_instance_exists(id, "chance"))
    chance = -1;

if (!variable_instance_exists(id, "number"))
    number = undefined;

stackVisual = 0;
firstCreationVisual = true;
image_alpha = 0;

get_modal_x = function()
{
    return x;
};

get_modal_y = function()
{
    return y - sprite_get_yoffset(sprite_index) - 2;
};

generate_tooltip(id, theStruct, get_modal_x(), get_modal_y(), UnknownEnum.Value_2, UnknownEnum.Value_0, stack, amount, UnknownEnum.Value_0);
update_txt();
wiggle = new WiggleEffect(id, UnknownEnum.Value_1);
width = sprite_get_width(sprite_index);
height = sprite_get_height(sprite_index);
vfxActivation = false;
pNoiseActivated = random(100);
pNoiseInc = 0.3;

check_vfx_activation = function()
{
    vfxActivation = false;
    var _charLinked = global.playersManager.get_characters(number);
    
    if (_charLinked != -4)
    {
        switch (theStruct)
        {
            case global.effect.powerlessShot:
                if (_charLinked.hp >= ((_charLinked.hpMax * amount[0]) / 100))
                    vfxActivation = true;
                
                break;
            
            case global.effect.goldenSap:
            case global.effect.predatoryInstinct:
                if (_charLinked.hp <= ((_charLinked.hpMax * amount[0]) / 100))
                    vfxActivation = true;
                
                break;
            
            case global.effect.pigeonHead:
                if (_charLinked.hp == amount[0] || _charLinked.hp == amount[1])
                    vfxActivation = true;
                
                break;
            
            case global.effect.damagedShell:
            case global.effect.hazelnut:
                if (global.loopManager.is_first_monster() && global.fightManager.isFightActive)
                    vfxActivation = true;
                
                break;
            
            case global.effect.slimeBall:
                if (_charLinked.get_gem() < _charLinked.hp)
                    vfxActivation = true;
                
                break;
            
            case global.effect.badTrip:
            case global.effect.confusion:
            case global.effect.hallucinogenicVision:
                if (global.fightManager.isFightActive)
                    vfxActivation = true;
                
                break;
            
            case global.effect.mother:
                if (global.loopManager.state == UnknownEnum.Value_3 && global.playersCount > 1)
                    vfxActivation = true;
                
                break;
        }
    }
};

check_vfx_activation();

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3
}
