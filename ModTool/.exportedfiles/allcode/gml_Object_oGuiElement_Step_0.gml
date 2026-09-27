if (!is_visible())
    exit;

switch (stateGui)
{
    case UnknownEnum.Value_0:
        if (stateGuiPrev != stateGui)
        {
            if (!isPaused)
                mask_index = spriteDefault;
            
            if (sprManagedByParent)
                sprite_index = spriteDefault;
            
            for (var _i = 0; _i < tooltipLength; _i++)
                tooltip[_i].hide();
            
            if (stateGuiPrev == UnknownEnum.Value_6)
            {
                with (oCursor)
                    check_hover();
            }
        }
        
        break;
    
    case UnknownEnum.Value_1:
        if (stateGuiPrev != stateGui)
        {
            if (sprManagedByParent)
                sprite_index = spriteHover;
            
            if (array_length(hoverSnd) > 0 && stateGuiPrev == UnknownEnum.Value_0)
            {
                var _soundToPlay = hoverSndRespectOrder ? hoverSnd[hoverSndOrder] : hoverSnd[irandom(array_length(hoverSnd) - 1)];
                audio_play_sound(_soundToPlay, 1, false, undefined, undefined, random_range(0.9, 1.1));
                hoverSndOrder = (hoverSndOrder + 1) % array_length(hoverSnd);
            }
            
            for (var _i = 0; _i < tooltipLength; _i++)
                tooltip[_i].show();
        }
        
        break;
    
    case UnknownEnum.Value_2:
        if (stateGuiPrev != stateGui)
        {
            if (sprManagedByParent)
                sprite_index = spriteActive;
            
            for (var _i = 0; _i < tooltipLength; _i++)
                tooltip[_i].hide();
        }
        
        break;
    
    case UnknownEnum.Value_3:
        if (stateGuiPrev != stateGui)
        {
            if (sprManagedByParent)
                sprite_index = spriteActiveHover;
            
            if (array_length(hoverSnd) > 0 && stateGuiPrev == UnknownEnum.Value_2)
            {
                var _soundToPlay = hoverSndRespectOrder ? hoverSnd[hoverSndOrder] : hoverSnd[irandom(array_length(hoverSnd) - 1)];
                audio_play_sound(_soundToPlay, 1, false, undefined, undefined, random_range(0.9, 1.1));
                hoverSndOrder = (hoverSndOrder + 1) % array_length(hoverSnd);
            }
            
            for (var _i = 0; _i < tooltipLength; _i++)
                tooltip[_i].show();
        }
        
        break;
    
    case UnknownEnum.Value_6:
        if (stateGuiPrev != stateGui)
        {
            cursor_leave();
            mask_index = sprMaskDisabled;
            
            if (sprManagedByParent)
                sprite_index = spriteDisabled;
            
            for (var _t = 0; _t < tooltipLength; _t++)
                tooltip[_t].hide();
        }
        
        break;
}

stateGuiPrev = stateGui;
stateGui = stateGuiNext;

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_6 = 6
}
