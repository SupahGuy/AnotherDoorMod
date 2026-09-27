global.__ElementController = self;

set = function(arg0 = global.playersCount)
{
    element_in_focus = array_create(arg0, undefined);
    element_in_hover = array_create(arg0, undefined);
    element_in_release = array_create(arg0, undefined);
    element_in_active = array_create(arg0, undefined);
    element_in_click = array_create(arg0, undefined);
    element_in_hover_enter = array_create(arg0, undefined);
    element_in_hover_leave = array_create(arg0, undefined);
    can_click = array_create(arg0, true);
    can_hover = array_create(arg0, true);
    release_any_element = array_create(arg0, false);
    release_any_blocking_element = array_create(arg0, false);
};

set(4);

reset = function(arg0 = -1)
{
    if (arg0 == -1)
    {
        for (var _i = 0; _i < global.playersCount; _i++)
        {
            element_in_focus[_i] = undefined;
            element_in_hover[_i] = undefined;
            element_in_release[_i] = undefined;
            element_in_active[_i] = undefined;
            element_in_click[_i] = undefined;
            element_in_hover_enter[_i] = undefined;
            element_in_hover_leave[_i] = undefined;
            can_click[_i] = true;
            can_hover[_i] = true;
            release_any_element[_i] = false;
            release_any_blocking_element[_i] = false;
        }
    }
    else
    {
        element_in_focus[arg0] = undefined;
        
        if (element_in_hover[arg0] != undefined)
            element_in_hover[arg0].cursor_leave(arg0);
        
        element_in_release[arg0] = undefined;
        element_in_active[arg0] = undefined;
        element_in_click[arg0] = undefined;
        element_in_hover_enter[arg0] = undefined;
        element_in_hover_leave[arg0] = undefined;
        can_click[arg0] = true;
        can_hover[arg0] = true;
    }
};
