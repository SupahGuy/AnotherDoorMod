if (live_call())
    return global.live_result;

if (mouse_check_button_pressed(mb_right) && room == roomStage && false)
{
    var _mouseX = global.playersManager.get_cursor(0).x;
    var _mouseY = global.playersManager.get_cursor(0).y;
    
    if (point_in_rectangle(_mouseX, _mouseY, 16, 16, 40, 40))
    {
        var _length = array_length(global.effectRandom);
        
        for (var _p = 0; _p < global.playersCount; _p++)
        {
            for (var _z = 0; _z < 1; _z++)
            {
                var _index = irandom(_length - 1);
                var _effect = global.effectRandom[_index];
                
                if (_effect == global.effect.murkyWater || _effect == global.effect.magnyfyingGlass || _effect == global.effect.ladybug || _effect == global.effect.mother)
                    continue;
                
                _effect = global.effect.armor;
                
                if (global.playersManager.get_characters(_p).is_alive())
                    global.playersManager.get_characters(_p).receive_effect(_effect, 1, 10, 10);
            }
        }
    }
    
    if (point_in_rectangle(_mouseX, _mouseY, 16, 48, 40, 72))
    {
        for (var _p = 0; _p < global.playersCount; _p++)
        {
            if (array_length(global.playersManager.get_characters(_p).effects) > 0)
                global.playersManager.get_characters(_p).delete_effect(undefined, undefined, 0);
        }
    }
    
    if (point_in_rectangle(_mouseX, _mouseY, 16, 80, 40, 104))
    {
        var _p = 0;
        
        while (_p < global.playersCount)
            _p++;
        
        for (_p = 0; _p < global.playersCount; _p++)
        {
            var _char = global.playersManager.get_characters(_p);
            
            if (_char.is_alive() && _p == 0)
            {
                _char.receive_damage(true, 60, sprPoisonSmall, false);
                execute_effect(_char, UnknownEnum.Value_1);
            }
        }
    }
    
    if (point_in_rectangle(_mouseX, _mouseY, 16, 112, 40, 136))
    {
        for (var _p = 0; _p < global.playersCount; _p++)
        {
            if (global.playersManager.get_characters(_p).is_alive())
                global.playersManager.get_characters(_p).receive_heal(true, 100);
        }
    }
    
    if (point_in_rectangle(_mouseX, _mouseY, 16, 144, 40, 168))
    {
        for (var _p = 0; _p < global.playersCount; _p++)
            g_exchange_gem(irandom_range(0, room_width), irandom_range(0, room_height), room_width / 2, room_height / 2, 1, UnknownEnum.Value_2, undefined, UnknownEnum.Value_0, _p);
    }
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
