if (instance_exists(global.__ElementController))
{
    for (var _p = 0; _p < global.playersCount; _p++)
    {
        if (global.__ElementController.element_in_focus[_p] == id)
            global.__ElementController.element_in_focus[_p] = undefined;
        
        if (global.__ElementController.element_in_hover[_p] == id)
            global.__ElementController.element_in_hover[_p] = undefined;
        
        if (global.__ElementController.element_in_release[_p] == id)
            global.__ElementController.element_in_release[_p] = undefined;
        
        if (global.__ElementController.element_in_active[_p] == id)
            global.__ElementController.element_in_active[_p] = undefined;
        
        if (global.__ElementController.element_in_click[_p] == id)
            global.__ElementController.element_in_click[_p] = undefined;
    }
}

if (tooltipLength > 0)
{
    for (var _i = 0; _i < tooltipLength; _i++)
        instance_destroy(tooltip[_i]);
}
