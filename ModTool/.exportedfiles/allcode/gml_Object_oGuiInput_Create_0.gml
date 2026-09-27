event_inherited();

if (!variable_instance_exists(id, "inputType"))
    inputType = UnknownEnum.Value_0;

clipMaskSurface = undefined;
lastKeyPressed = undefined;
keyPressed = undefined;

if (!variable_instance_exists(id, "charLimit"))
    charLimit = -1;

value = (value == undefined) ? "" : value;
textOffsetX = 0;
draw_set_font(global.fontOpenEnded);
textWidth = string_width(value) * global.fontScaleOpenEnded;

update_value = function()
{
    switch (keyboard_key)
    {
        case vk_left:
        case vk_right:
        case vk_up:
        case vk_down:
        case vk_escape:
        case vk_shift:
        case vk_lshift:
        case vk_lalt:
        case vk_rshift:
        case vk_ralt:
        case vk_alt:
        case vk_tab:
        case vk_home:
        case vk_end:
        case vk_control:
        case vk_lcontrol:
        case vk_rcontrol:
        case vk_enter:
            break;
        
        case vk_backspace:
        case vk_delete:
            if (keyboard_lastkey == vk_backspace)
            {
                if (string_length(value) > 0)
                    value = string_delete(value, -1, 1);
                
                update_value_text();
            }
            else if (keyboard_lastkey == vk_delete)
            {
            }
            
            break;
        
        default:
            var _defaultValue = keyboard_lastchar;
            
            if (charLimit != -1 && string_length(value) >= charLimit)
                exit;
            
            if (_defaultValue == "")
                exit;
            
            if ((keyboard_check(vk_control) || keyboard_check(vk_lcontrol) || keyboard_check(vk_rcontrol)) && keyboard_key == ord("V"))
            {
                if (clipboard_has_text())
                {
                    if (string_length(value) >= charLimit)
                        exit;
                    else
                        _defaultValue = string_copy(clipboard_get_text(), 1, charLimit - string_length(value));
                }
                else
                {
                    exit;
                }
            }
            
            var _theValue = "";
            
            for (var _k = 1; _k < (string_length(_defaultValue) + 1); _k++)
            {
                var _char = string_char_at(_defaultValue, _k);
                
                if (array_contains(global.disabledCharacters, _char))
                    continue;
                
                _theValue += _char;
            }
            
            value = string_concat(value, _theValue);
            update_value_text();
            break;
    }
};

update_value_text = function()
{
    draw_set_font(global.fontOpenEnded);
    textWidth = string_width(value) * global.fontScaleOpenEnded;
    textOffsetX = min(((theWidth - padX) * global.zoom) - textWidth, 0);
    audio_play_sound(choose(sndCard1, sndCard2, sndCard3), 1, false, undefined, undefined, random_range(0.9, 1.1));
};

backspaceFirstTime = true;
backspaceTimerFirst = new myTimer(id, 0.4);
backspaceTimer = new myTimer(id, 0.05);

set_on_value_change = function(arg0)
{
    on_value_change = arg0;
};

enum UnknownEnum
{
    Value_0
}
