switch (stateGui)
{
    case UnknownEnum.Value_0:
        if (stateGuiPrev != stateGui)
        {
            if (radioChecked)
                sprite_index = spriteActive;
            else
                sprite_index = spriteDefault;
            
            for (var _i = 0; _i < tooltipLength; _i++)
                tooltip[_i].hide();
        }
        
        break;
    
    case UnknownEnum.Value_1:
        if (stateGuiPrev != stateGui)
        {
            sprite_index = spriteHover;
            
            for (var _i = 0; _i < tooltipLength; _i++)
                tooltip[_i].show();
        }
        
        break;
    
    case UnknownEnum.Value_2:
        if (stateGuiPrev != stateGui)
            sprite_index = spriteActive;
        
        break;
    
    case UnknownEnum.Value_3:
        if (stateGuiPrev != stateGui)
            sprite_index = spriteActiveHover;
        
        break;
    
    case UnknownEnum.Value_6:
        if (stateGuiPrev != stateGui)
            sprite_index = spriteDisabled;
        
        break;
}

stateGuiPrev = stateGui;
stateGui = stateGuiNext;

if (is_active())
    set_radio_checked();

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_6 = 6
}
