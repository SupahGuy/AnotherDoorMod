event_inherited();
controller = global.__ElementController;
var _padY = round((sprH - (labelH / global.zoom)) / 2);
set_padding(_padY, 8, _padY, 24);
radioLinkedTo = [];

set_radio_linked = function(arg0)
{
    arg0 = is_array(arg0) ? arg0 : [arg0];
    
    for (var _i = 0; _i < array_length(arg0); _i++)
        array_push(radioLinkedTo, arg0[_i]);
};

radioChecked = false;

set_radio_checked = function(arg0 = true)
{
    radioChecked = arg0;
    
    if (arg0)
    {
        for (var _i = 0; _i < array_length(radioLinkedTo); _i++)
            radioLinkedTo[_i].set_radio_checked(false);
        
        stateGuiNext = UnknownEnum.Value_2;
    }
    else
    {
        sprite_index = spriteDefault;
        stateGuiNext = UnknownEnum.Value_0;
    }
};

enum UnknownEnum
{
    Value_0,
    Value_2 = 2
}
