controller = global.__ElementController;

if (!variable_instance_exists(id, "value"))
    value = undefined;

if (!variable_instance_exists(id, "buttonLinked"))
    buttonLinked = 32769;

if (!variable_instance_exists(id, "name"))
    name = "";

define_sprite = function(arg0)
{
    spriteDefault = arg0;
    sprite_index = spriteDefault;
    spriteName = sprite_get_name(sprite_index);
    spriteHover = (asset_get_index($"{spriteName}Hover") == -1) ? spriteDefault : asset_get_index($"{spriteName}Hover");
    spriteActive = (asset_get_index($"{spriteName}Active") == -1) ? spriteDefault : asset_get_index($"{spriteName}Active");
    spriteActiveHover = (asset_get_index($"{spriteName}ActiveHover") == -1) ? spriteDefault : asset_get_index($"{spriteName}ActiveHover");
    spriteDisabled = (asset_get_index($"{spriteName}Disabled") == -1) ? spriteDefault : asset_get_index($"{spriteName}Disabled");
    spriteFocus = (asset_get_index($"{spriteName}Focus") == -1) ? spriteDefault : asset_get_index($"{spriteName}Focus");
    mask_index = spriteDefault;
    sprW = sprite_get_width(sprite_index);
    sprH = sprite_get_height(sprite_index);
};

if (sprite_index)
    define_sprite(sprite_index);
else
    define_sprite(sprMaskDisabled);

if (!variable_instance_exists(id, "isBlocking"))
    isBlocking = false;

is_blocking = function()
{
    return isBlocking;
};

set_blocking = function(arg0)
{
    isBlocking = arg0;
};

tooltip = [];
tooltipLength = 0;

set_tooltip = function(arg0)
{
    array_push(tooltip, arg0);
    tooltipLength++;
};

delete_tooltip = function()
{
    for (var _t = 0; _t < tooltipLength; _t++)
        instance_destroy(tooltip[_t]);
    
    tooltip = [];
    tooltipLength = 0;
};

if (!variable_instance_exists(id, "eventLinked"))
    eventLinked = undefined;

stateGui = UnknownEnum.Value_0;
stateGuiPrev = stateGui;
stateGuiNext = stateGui;
sprManagedByParent = true;

set_sprite_managed_by_parent = function(arg0)
{
    sprManagedByParent = arg0;
};

is_released = function()
{
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        if (controller.element_in_release[_i] == self.id)
            return true;
    }
    
    return false;
};

who_released = function()
{
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        if (controller.element_in_release[_i] == self.id)
            return _i;
    }
    
    return undefined;
};

released = function(arg0)
{
    remove_active(arg0);
    
    if (is_hover(arg0))
    {
        controller.element_in_release[arg0] = self.id;
        controller.release_any_element[arg0] = true;
        
        if (is_blocking())
            controller.release_any_blocking_element[arg0] = true;
        
        if (eventLinked != undefined)
            eventLinked();
    }
    
    if (!is_active() && !is_disabled())
    {
        if (is_hover())
            stateGuiNext = UnknownEnum.Value_1;
        else
            stateGuiNext = UnknownEnum.Value_0;
    }
};

interactionAllowedBy = [0, 1, 2, 3];

check_interaction_allowed_by = function(arg0)
{
    return array_contains(interactionAllowedBy, arg0);
};

set_interaction_allowed_by = function(arg0 = [0, 1, 2, 3])
{
    arg0 = is_array(arg0) ? arg0 : [arg0];
    interactionAllowedBy = arg0;
};

hoverSnd = [];
hoverSndRespectOrder = false;
hoverSndOrder = 0;

set_hover_sound = function(arg0, arg1 = false)
{
    hoverSndRespectOrder = arg1;
    var _snd = is_array(arg0) ? arg0 : [arg0];
    hoverSnd = _snd;
};

is_hover = function(arg0 = undefined)
{
    if (arg0 == undefined)
    {
        for (var _i = 0; _i < global.playersCount; _i++)
        {
            if (controller.element_in_hover[_i] == self.id)
                return true;
        }
        
        return false;
    }
    else
    {
        return controller.element_in_hover[arg0] == self.id;
    }
};

is_hover_enter = function()
{
    if (stateGui == UnknownEnum.Value_1 && stateGuiPrev != stateGui && stateGuiPrev != UnknownEnum.Value_3)
        return true;
    else
        return false;
};

is_hover_leave = function()
{
    if ((stateGui == UnknownEnum.Value_0 || stateGui == UnknownEnum.Value_6) && stateGuiPrev != stateGui)
        return true;
    else
        return false;
};

cursor_leave = function(arg0 = undefined)
{
    if (arg0 == undefined)
    {
        for (var _i = 0; _i < global.playersCount; _i++)
        {
            if (controller.element_in_hover[_i] == self.id)
            {
                controller.element_in_hover[_i] = undefined;
                controller.element_in_hover_leave[_i] = self.id;
            }
        }
    }
    else
    {
        controller.element_in_hover[arg0] = undefined;
        controller.element_in_hover_leave[arg0] = self.id;
    }
    
    if (stateGui == UnknownEnum.Value_6 || stateGuiNext == UnknownEnum.Value_6)
        exit;
    
    if (!is_hover())
    {
        if (is_active())
            stateGuiNext = UnknownEnum.Value_2;
        else
            stateGuiNext = UnknownEnum.Value_0;
    }
};

cursor_enter = function(arg0)
{
    controller.element_in_hover[arg0] = self.id;
    controller.element_in_hover_enter[arg0] = self.id;
    
    if (is_active())
        stateGuiNext = UnknownEnum.Value_3;
    else
        stateGuiNext = UnknownEnum.Value_1;
};

who_hover_enter = function()
{
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        if (controller.element_in_hover_enter[_i] == self.id)
            return _i;
    }
    
    return -1;
};

is_active = function()
{
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        if (controller.element_in_active[_i] == self.id)
            return true;
    }
    
    return false;
};

remove_active = function(arg0 = undefined)
{
    if (arg0 == undefined)
    {
        for (var _i = 0; _i < global.playersCount; _i++)
        {
            if (controller.element_in_active[_i] == self.id)
                controller.element_in_active[_i] = undefined;
        }
    }
    else
    {
        controller.element_in_active[arg0] = undefined;
    }
};

active = function(arg0)
{
    controller.element_in_active[arg0] = self.id;
};

is_focus = function(arg0 = undefined)
{
    if (arg0 == undefined)
    {
        for (var _i = 0; _i < global.playersCount; _i++)
        {
            if (controller.element_in_focus[_i] == self.id)
                return true;
        }
        
        return false;
    }
    else
    {
        return controller.element_in_focus[arg0] == self.id;
    }
};

remove_focus = function(arg0 = undefined)
{
    if (arg0 == undefined)
    {
        for (var _i = 0; _i < global.playersCount; _i++)
        {
            if (controller.element_in_focus[_i] == self.id)
                controller.element_in_focus[_i] = undefined;
        }
    }
    else
    {
        controller.element_in_focus[arg0] = undefined;
    }
};

focus = function(arg0)
{
    controller.element_in_focus[arg0] = self.id;
};

get_value = function()
{
    return value;
};

get_group_value = function()
{
    if (array_length(radioLinkedTo) > 0)
    {
        for (var _i = 0; _i < array_length(radioLinkedTo); _i++)
        {
            if (radioLinkedTo[_i].radioChecked)
                return radioLinkedTo[_i].get_value();
        }
    }
    
    return value;
};

set_value = function(arg0)
{
    value = arg0;
};

soundOnClick = undefined;

set_sound_on_click = function(arg0)
{
    soundOnClick = !is_array(arg0) ? [arg0] : arg0;
};

callbackOnClick = undefined;

set_callback_on_click = function(arg0)
{
    callbackOnClick = arg0;
};

click = function(arg0)
{
    controller.element_in_click[arg0] = self.id;
    controller.element_in_focus[arg0] = self.id;
    focus(arg0);
    active(arg0);
    stateGuiNext = UnknownEnum.Value_3;
    
    if (callbackOnClick != undefined)
        callbackOnClick();
    
    if (soundOnClick != undefined)
    {
        var _soundsToPlay = array_length(soundOnClick);
        var _randomSndIndex = irandom(_soundsToPlay - 1);
        audio_play_sound(soundOnClick[_randomSndIndex], 1, false, undefined, undefined, random_range(0.9, 1.1));
    }
};

is_pressed = function()
{
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        if (controller.element_in_click[_i] == self.id)
            return true;
    }
    
    return false;
};

has_number_clicked = function(arg0)
{
    return controller.element_in_click[arg0] == self.id;
};

who_clicked = function()
{
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        if (controller.element_in_click[_i] == self.id)
            return _i;
    }
    
    return undefined;
};

if (!variable_instance_exists(id, "isVisible"))
    isVisible = true;

is_visible = function()
{
    return isVisible;
};

show = function()
{
    isVisible = true;
    
    if (stateGui == UnknownEnum.Value_6)
    {
        mask_index = sprMaskDisabled;
        
        if (sprManagedByParent)
            sprite_index = spriteDisabled;
    }
    else
    {
        mask_index = spriteDefault;
        sprite_index = spriteDefault;
    }
};

hide = function()
{
    isVisible = false;
    sprite_index = spriteDefault;
    mask_index = sprMaskDisabled;
    cursor_leave();
    
    for (var _t = 0; _t < tooltipLength; _t++)
        tooltip[_t].hide();
};

set_disabled = function(arg0 = false)
{
    isDisabled = arg0;
    
    if (arg0)
        stateGuiNext = UnknownEnum.Value_6;
    else
        stateGuiNext = UnknownEnum.Value_0;
};

is_disabled = function()
{
    return isDisabled;
};

if (!variable_instance_exists(id, "isDisabled"))
    isDisabled = false;

if (is_disabled())
{
    stateGui = UnknownEnum.Value_6;
    set_disabled(isDisabled);
}

isPaused = false;

set_paused = function(arg0)
{
    isPaused = arg0;
    
    if (isPaused)
    {
        mask_index = sprMaskDisabled;
        
        if (is_focus())
            remove_focus();
        
        if (is_active())
            remove_active();
        
        if (is_hover())
            cursor_leave();
        
        if (!is_disabled())
        {
            sprite_index = spriteDefault;
            stateGuiNext = UnknownEnum.Value_0;
        }
    }
    else if (!is_disabled())
    {
        mask_index = spriteDefault;
    }
};

is_paused = function()
{
    return isPaused;
};

if (game_is_paused())
    set_paused(true);

reset_default_state = function()
{
    sprite_index = spriteDefault;
    stateGui = UnknownEnum.Value_0;
    stateGuiPrev = stateGui;
    stateGuiNext = stateGui;
    
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        if (controller.element_in_hover[_i] == self.id)
            controller.element_in_hover[_i] = undefined;
        
        if (controller.element_in_focus[_i] == self.id)
            controller.element_in_focus[_i] = undefined;
        
        if (controller.element_in_active[_i] == self.id)
            controller.element_in_active[_i] = undefined;
        
        if (controller.element_in_click[_i] == self.id)
            controller.element_in_click[_i] = undefined;
        
        if (controller.element_in_release[_i] == self.id)
            controller.element_in_release[_i] = undefined;
    }
};

with (oCursor)
    check_hover();

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_6 = 6
}
