if (!variable_instance_exists(id, "number"))
    number = 0;

if (!variable_instance_exists(id, "owner"))
    owner = undefined;

offsetMaskX = 1;
offsetMaskY = 1;
theSpeedMax = 7;
theSpeedDecOrigin = 0.7;
theSpeedDec = theSpeedDecOrigin;
theSpeed = 7;
xVel = 0;
yVel = 0;
prevX = x;
prevY = y;
hasMovedThisStep = false;
depth = global.depthManager.get_depth("cursor");
txtPlayer = scribble($"[p{number}]player._p[/c]#{number + 1}", $"txtCursor{number + 1}").align(0, 0);

update_text = function()
{
    txtPlayer = scribble($"[p{number}]player._p[/c]#{number + 1}", $"txtCursor{number + 1}").align(0, 0);
};

chatBoxCreatedThisStep = false;

funfair_init = function()
{
    angleFunfair = number * 90;
    angleFunfairNext = angleFunfair;
    angleFunfairSound = 0;
    alphaFunfair = 1;
};

funfair_define_action = function()
{
    var _modAngle = angleFunfairNext;
    
    if (sign(_modAngle) == 1)
        _modAngle = _modAngle % 360;
    else if (sign(_modAngle) == -1)
        _modAngle = 360 - abs(_modAngle % 360);
    
    if (_modAngle > 45 && _modAngle <= 135)
        global.playersManager.apply_action(number, UnknownEnum.Value_3);
    else if (_modAngle > 135 && _modAngle <= 225)
        global.playersManager.apply_action(number, UnknownEnum.Value_4);
    else if (_modAngle > 225 && _modAngle <= 315)
        global.playersManager.apply_action(number, UnknownEnum.Value_6);
    else
        global.playersManager.apply_action(number, UnknownEnum.Value_5);
};

angleFunfair = number * 90;
angleFunfairNext = angleFunfair;
angleFunfairSound = 0;
alphaFunfair = 1;

funfair_send_angle = function(arg0)
{
    if (global.networkingManager.isNetworkGame)
        global.networkingManager.funfair_send_angle(number, arg0);
    
    funfair_apply_angle(arg0);
};

funfair_apply_angle = function(arg0)
{
    angleFunfairNext = arg0;
};

funfair_move_arrow = function()
{
    var _diff = angle_difference(angleFunfairNext, angleFunfair);
    angleFunfair += (_diff * 0.1);
    angleFunfairSound += abs(_diff * 0.1);
    angleFunfair = ((angleFunfair % 360) + 360) % 360;
    
    if (angleFunfairSound >= 15)
    {
        audio_play_sound(choose(sndFunfairTick1, sndFunfairTick2, sndFunfairTick3, sndFunfairTick4), 10, false, undefined, undefined, random_range(0.9, 1.1));
        angleFunfairSound = 0;
    }
};

funfair_movement_finished = function()
{
    var _diff = angle_difference(angleFunfairNext, angleFunfair);
    
    if (abs(_diff) < 0.1)
        return true;
    else
        return false;
};

statePrev = undefined;
state = UnknownEnum.Value_0;
stateNext = state;

check_hover = function()
{
    if (InputPlayerGetGhost(number))
        exit;
    
    if (global.__ElementController.element_in_hover[number] != undefined)
    {
        if (!instance_exists(global.__ElementController.element_in_hover[number]))
            global.__ElementController.element_in_hover[number] = undefined;
        else if (global.__ElementController.element_in_hover[number].is_disabled())
            global.__ElementController.element_in_hover[number].cursor_leave(number);
    }
    
    if (global.__ElementController.can_hover[number])
    {
        if (position_meeting(x + offsetMaskX, y + offsetMaskY, oGuiElement))
        {
            var _listOfInstances = ds_list_create();
            instance_position_list(x + offsetMaskX, y + offsetMaskY, oGuiElement, _listOfInstances, false);
            var _arrayOfDepths = [];
            
            for (var _j = 0; _j < ds_list_size(_listOfInstances); _j++)
            {
                var _struct = 
                {
                    id: ds_list_find_value(_listOfInstances, _j),
                    depth: ds_list_find_value(_listOfInstances, _j).depth
                };
                array_push(_arrayOfDepths, _struct);
            }
            
            array_sort(_arrayOfDepths, function(arg0, arg1)
            {
                return arg0.depth - arg1.depth;
            });
            ds_list_destroy(_listOfInstances);
            
            for (var _k = 0; _k < array_length(_arrayOfDepths); _k++)
            {
                var _inst = _arrayOfDepths[_k].id;
                
                if (_inst.check_interaction_allowed_by(number) && !_inst.is_disabled())
                {
                    if (global.__ElementController.element_in_hover[number] != _inst.id)
                    {
                        if (global.__ElementController.element_in_hover[number] != undefined)
                            global.__ElementController.element_in_hover[number].cursor_leave(number);
                        
                        global.__ElementController.can_hover[number] = false;
                        _inst.cursor_enter(number);
                    }
                    
                    break;
                }
            }
        }
        else if (global.__ElementController.element_in_hover[number] != undefined)
        {
            global.__ElementController.element_in_hover[number].cursor_leave(number);
        }
    }
};

cursorType = UnknownEnum.Value_0;
spriteCursor = asset_get_index($"sprCursor{number + 1}");
spriteCursorClick = asset_get_index($"sprCursor{number + 1}Click");
spriteStamp = asset_get_index($"sprCursorStamp{number + 1}");
spriteStampClick = asset_get_index($"sprCursorStamp{number + 1}");
spriteInvisible = asset_get_index("sprCursorInvisible");
spriteInvisibleClick = asset_get_index("sprCursorInvisible");
spriteDisabled = asset_get_index("sprCursorDisabled");
spriteDisabledClick = asset_get_index("sprCursorDisabledClick");
sprHand = asset_get_index($"sprCursorHand{number + 1}");
sprHandClick = asset_get_index($"sprCursorHand{number + 1}");
spriteDefault = spriteCursor;
spriteActive = spriteCursorClick;
sprite_index = spriteDefault;

set_sprite = function(arg0 = UnknownEnum.Value_0)
{
    spriteCursor = asset_get_index($"sprCursor{number + 1}");
    spriteCursorClick = asset_get_index($"sprCursor{number + 1}Click");
    spriteStamp = asset_get_index($"sprCursorStamp{number + 1}");
    spriteStampClick = asset_get_index($"sprCursorStamp{number + 1}");
    spriteInvisible = asset_get_index("sprCursorInvisible");
    spriteInvisibleClick = asset_get_index("sprCursorInvisible");
    spriteDisabled = asset_get_index("sprCursorDisabled");
    spriteDisabledClick = asset_get_index("sprCursorDisabledClick");
    sprHand = asset_get_index($"sprCursorHand{number + 1}");
    sprHandClick = asset_get_index($"sprCursorHand{number + 1}");
    image_alpha = 1;
    cursorType = arg0;
    var _newSprite = spriteCursor;
    var _newSpriteClick = spriteCursorClick;
    
    if (arg0 == UnknownEnum.Value_0)
    {
        _newSprite = spriteCursor;
        _newSpriteClick = spriteCursorClick;
        mask_index = sprCursorMask;
    }
    else if (arg0 == UnknownEnum.Value_1)
    {
        _newSprite = spriteStamp;
        _newSpriteClick = spriteStampClick;
        mask_index = sprCursorStamp1;
    }
    
    spriteDefault = _newSprite;
    spriteActive = _newSpriteClick;
    sprite_index = spriteDefault;
};

set_sprite();
var _colorCursorShow = global.color.blue1;

switch (number)
{
    case 0:
        _colorCursorShow = global.color.blue1;
        break;
    
    case 1:
        _colorCursorShow = global.color.orange1;
        break;
    
    case 2:
        _colorCursorShow = global.color.green1;
        break;
    
    case 3:
        _colorCursorShow = global.color.purple1;
        break;
    
    default:
        _colorCursorShow = global.color.blue1;
        break;
}

outlineColorValue = hex_to_vec3(_colorCursorShow);
textureSpr = sprite_get_texture(sprite_index, 0);
textureW = texture_get_texel_width(textureSpr);
textureH = texture_get_texel_height(textureSpr);
pixelW = shader_get_uniform(shOutline, "u_pixel_w");
pixelH = shader_get_uniform(shOutline, "u_pixel_h");
outlineColor = shader_get_uniform(shOutline, "u_outline_color");
isCursorVisible = false;

show_cursor = function(arg0, arg1 = -1, arg2 = false)
{
    isCursorVisible = arg0;
    
    if (instance_exists(oUi.btnCursor))
    {
        if (isCursorVisible)
            oUi.btnCursor.tooltip[0].updateTxt(undefined, "global._topCursorHide");
        else
            oUi.btnCursor.tooltip[0].updateTxt(undefined, "global._topCursorShow");
    }
    
    if (arg2)
    {
        global.networkingManager.mouse_coordinate(number, x, y, UnknownEnum.Value_2);
        global.networkingManager.show_cursor(arg0, arg1);
    }
};

isCursorVisibilityForced = true;

set_cursor_visibility_forced = function(arg0)
{
    isCursorVisibilityForced = arg0;
};

verbsToSet = [];

set_verbs = function(arg0, arg1 = 1, arg2)
{
    array_push(verbsToSet, 
    {
        verb: arg0,
        value: arg1,
        type: arg2
    });
};

verbActive = [];

add_verb_active = function(arg0, arg1, arg2)
{
    array_push(verbActive, 
    {
        verb: arg0,
        value: arg1,
        type: arg2
    });
};

is_verb_active = function(arg0, arg1)
{
    if (!InputPlayerGetGhost(number))
    {
        if (arg1 == UnknownEnum.Value_1)
            return InputPressed(arg0, number);
        else if (arg1 == UnknownEnum.Value_0)
            return InputReleased(arg0, number);
        else if (arg1 == UnknownEnum.Value_2)
            return InputCheck(arg0, number);
    }
    else
    {
        for (var _i = 0; _i < array_length(verbActive); _i++)
        {
            if (verbActive[_i].verb == arg0 && verbActive[_i].type == arg1)
                return true;
        }
    }
    
    return false;
};

buttonTimer = new myTimer(id, 0.05);
buttonTimer.run();
networkSendInterval = 50;
lastNetworkSend = 0;
networkTargetX = x;
networkTargetY = y;

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6
}
