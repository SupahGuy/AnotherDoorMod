prevEvent = UnknownEnum.Value_0;
currentEvent = prevEvent;
currentSprite = sprUiTopDay;
yuleDuration = 6;
yuleBarWidthCur = sprite_get_width(sprYuleTimerBar);
yuleBarWidthTo = sprite_get_width(sprYuleTimerBar);
timeToYule = new myTimer(id, yuleDuration, undefined, undefined, "ease-out");
global.bloodMoonMultiplier = 1;

reset = function()
{
    prevEvent = currentEvent;
    currentEvent = UnknownEnum.Value_0;
    currentSprite = sprUiTopNeutral;
    global.particles.reset_particles_around();
    
    switch (prevEvent)
    {
        case UnknownEnum.Value_2:
            global.bloodMoonMultiplier = 1;
            break;
        
        case UnknownEnum.Value_4:
            with (oEntitie)
                update_hp_txt();
            
            break;
    }
};

announce_event = function()
{
    reset();
    var _indexMoon = array_get_index(global.monsterList.moonPosition, global.loopManager.get_current_door());
    
    if (_indexMoon != -1)
    {
        var _alignX = UnknownEnum.Value_2;
        var _alignY = UnknownEnum.Value_1;
        var _sound = UnknownEnum.Value_2;
        var _close = UnknownEnum.Value_1;
        var _newTooltipList = [];
        
        talk_finished = function()
        {
            global.waitingList.remove("tooltipMoon");
        };
        
        global.tvState.neutral();
        
        switch (global.monsterList.moonType[_indexMoon])
        {
            case 1:
                currentEvent = UnknownEnum.Value_4;
                currentSprite = sprUiTopEclipse;
                array_push(_newTooltipList, new cDialogue("cycle._imbolcTitle", _alignX, _alignY, _sound, _close));
                array_push(_newTooltipList, new cDialogue("cycle._imbolcDesc", _alignX, _alignY, _sound, _close, undefined, undefined, undefined, undefined, [talk_finished]));
                
                with (oEntitie)
                    update_hp_txt();
                
                global.tvState.imbolc_moon();
                part_type_orientation(global.particles.pFloatAround, 45, 45, 0, 0, 0);
                part_type_color3(global.particles.pFloatAround, global.color.yellow1, global.color.yellow1, global.color.yellow1);
                part_type_life(global.particles.pFloatAround, 32, 32);
                part_type_speed(global.particles.pFloatAround, 0, 0, 0, 0);
                break;
            
            case 2:
                global.bloodMoonMultiplier = 2;
                currentEvent = UnknownEnum.Value_2;
                currentSprite = sprUiTopBloodMoon;
                array_push(_newTooltipList, new cDialogue("cycle._samainTitle", _alignX, _alignY, _sound, _close));
                array_push(_newTooltipList, new cDialogue("cycle._samainDesc", _alignX, _alignY, _sound, _close, undefined, undefined, undefined, [talk_finished]));
                global.tvState.samain_moon();
                part_type_color3(global.particles.pFloatAround, global.color.red1, global.color.red2, global.color.red1);
                break;
            
            case 3:
                currentEvent = UnknownEnum.Value_1;
                currentSprite = sprUiTopYule;
                array_push(_newTooltipList, new cDialogue("cycle._yuleTitle", _alignX, _alignY, _sound, _close));
                array_push(_newTooltipList, new cDialogue("cycle._yuleDesc", _alignX, _alignY, _sound, _close, undefined, undefined, undefined, [talk_finished]));
                global.tvState.yule_moon();
                part_type_color3(global.particles.pFloatAround, global.color.blue4, global.color.blue2, global.color.blue4);
                part_type_speed(global.particles.pFloatAround, 2, 4, 0, 0);
                part_type_direction(global.particles.pFloatAround, 350, 350, -0.1, 0);
                global.particles.emmiterFullScreenNbr = 13;
                part_emitter_region(global.particlesSys, global.particles.emmiterFullScreen, -room_width, room_width, -room_height, room_height, 0, 0);
                part_emitter_stream(global.particlesSys, global.particles.emmiterFullScreen, global.particles.pFloatAround, global.particles.emmiterFullScreenNbr);
                break;
            
            case 4:
                currentEvent = UnknownEnum.Value_5;
                currentSprite = sprUiTopRandom;
                array_push(_newTooltipList, new cDialogue("cycle._blueScreenTitle", _alignX, _alignY, _sound, _close));
                array_push(_newTooltipList, new cDialogue("cycle._blueScreenDesc", _alignX, _alignY, _sound, _close, undefined, undefined, undefined, [talk_finished]));
                global.tvState.blue_screen();
                global.particles.emmiterFullScreenNbr = 0;
                part_emitter_stream(global.particlesSys, global.particles.emmiterFullScreen, global.particles.pFloatAround, global.particles.emmiterFullScreenNbr);
                break;
            
            case 5:
                currentEvent = UnknownEnum.Value_6;
                currentSprite = sprUiTopCloneMoon;
                array_push(_newTooltipList, new cDialogue("cycle._mabonTitle", _alignX, _alignY, _sound, _close));
                array_push(_newTooltipList, new cDialogue("cycle._mabonDesc", _alignX, _alignY, _sound, _close, undefined, undefined, undefined, [talk_finished]));
                break;
            
            case 6:
                currentEvent = UnknownEnum.Value_7;
                currentSprite = sprUiTopConfusedMoon;
                array_push(_newTooltipList, new cDialogue("cycle._lithaTitle", _alignX, _alignY, _sound, _close));
                array_push(_newTooltipList, new cDialogue("cycle._lithaDesc", _alignX, _alignY, _sound, _close, undefined, undefined, undefined, [talk_finished]));
                global.tvState.litha_moon();
                part_type_color3(global.particles.pFloatAround, global.color.purple2, global.color.purple1, global.color.purple2);
                part_type_speed(global.particles.pFloatAround, 0.2, 0.2, 0, 0);
                part_type_direction(global.particles.pFloatAround, 0, 360, 2, 0);
                global.particles.emmiterFullScreenNbr = -8;
                part_emitter_stream(global.particlesSys, global.particles.emmiterFullScreen, global.particles.pFloatAround, global.particles.emmiterFullScreenNbr);
                break;
        }
        
        set_list_of_tooltip(_newTooltipList);
        instance_create_depth(global.gameWidth / 2, global.gameHeight / 2, 0, oDialogue, _newTooltipList[0]);
        audio_play_sound(sndBell, 1, false);
        return true;
    }
    
    return false;
};

get_event = function()
{
    return currentEvent;
};

check_cycle_event = function(arg0 = 0)
{
    switch (arg0)
    {
        case 0:
            switch (get_event())
            {
                case UnknownEnum.Value_1:
                    yuleBarWidthCur = sprite_get_width(sprYuleTimerBar);
                    yuleBarWidthTo = sprite_get_width(sprYuleTimerBar);
                    timeToYule.reset();
                    timeToYule.run();
                    break;
            }
            
            break;
        
        case 1:
            switch (get_event())
            {
                case UnknownEnum.Value_1:
                    if (global.playersManager.has_every_fighters_acted())
                        timeToYule.stop();
                    
                    if (timeToYule.is_finished())
                    {
                        timeToYule.reset();
                        sent_yule();
                    }
                    
                    break;
            }
            
            break;
    }
};

sent_yule = function()
{
    if (global.isClient)
        exit;
    
    if (global.networkingManager.isNetworkGame)
        global.networkingManager.yule();
    
    apply_yule();
};

apply_yule = function()
{
    var _fighters = global.playersManager.get_characters(-1);
    
    for (var _f = 0; _f < array_length(_fighters); _f++)
    {
        if (!global.playersManager.has_acted(_fighters[_f].number))
        {
            if (_fighters[_f].is_alive())
                _fighters[_f].receive_damage(true, 666, -1, true);
            
            global.playersManager.apply_action(_fighters[_f].number, UnknownEnum.Value_13, true, true);
        }
    }
};

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_4 = 4,
    Value_5,
    Value_6,
    Value_7,
    Value_13 = 13
}
