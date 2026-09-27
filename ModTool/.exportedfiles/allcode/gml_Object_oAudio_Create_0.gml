global.audio = self;

if (!audio_group_is_loaded(music))
    audio_group_load(music);

if (!audio_group_is_loaded(secondaryMusic))
    audio_group_load(secondaryMusic);

if (!audio_group_is_loaded(sfx))
    audio_group_load(sfx);

timerNextMusic = new myTimer(id, 3);
timerMainTheme = new myTimer(id, 15, undefined, 1);
currentMusic = global.nextMusic;
previousTimer = 0;
lp_emitter = audio_emitter_create();
add_to_clean_up(lp_emitter, UnknownEnum.Value_7);
lp_bus = audio_bus_create();
audio_emitter_bus(lp_emitter, lp_bus);
timerFadeInMusic = new myTimer(id, 1);
fadeInCallback = [];
timerFadeOutMusic = new myTimer(id, 1);
fadeOutPause = true;
fadeOutCallback = [];

fade_in = function(arg0 = 1, arg1 = global.nextMusic, arg2 = true, arg3 = [])
{
    if (audio_is_playing(currentMusic) && !audio_is_paused(currentMusic))
        exit;
    
    currentMusic = arg1;
    fadeInCallback = is_array(arg3) ? arg3 : [arg3];
    
    if (arg2 || !audio_is_paused(currentMusic))
        audio_play_sound_on(lp_emitter, arg1, 0, 1);
    else
        audio_resume_sound(currentMusic);
    
    if (arg0 == -1)
    {
        audio_sound_gain(currentMusic, 1, 0);
        play_callback(fadeInCallback);
    }
    else
    {
        timerFadeInMusic.change_param(arg0, undefined, 1);
        timerFadeInMusic.reset();
        timerFadeInMusic.run();
        audio_sound_gain(currentMusic, 1, (timerFadeInMusic.maxLength / game_get_speed(gamespeed_fps)) * 1000);
    }
};

fade_out = function(arg0 = 1, arg1 = true, arg2 = [])
{
    fadeOutPause = arg1;
    fadeOutCallback = is_array(arg2) ? arg2 : [arg2];
    
    if (arg0 == -1)
    {
        audio_sound_gain(currentMusic, 0, 0);
        fade_out_end();
    }
    else
    {
        timerFadeOutMusic.change_param(arg0, undefined, 1);
        timerFadeOutMusic.reset();
        timerFadeOutMusic.run();
        audio_sound_gain(currentMusic, 0, (timerFadeOutMusic.maxLength / game_get_speed(gamespeed_fps)) * 1000);
    }
};

fade_out_end = function()
{
    if (fadeOutPause)
        audio_pause_sound(currentMusic);
    else
        audio_stop_sound(currentMusic);
    
    play_callback(fadeOutCallback);
};

play_callback = function(arg0 = [])
{
    if (array_length(arg0) > 0)
    {
        for (var _i = 0; _i < array_length(arg0); _i++)
            arg0[_i]();
    }
};

switch_music = function(arg0 = true, arg1 = false)
{
    if (global.nextMusic == currentMusic)
        exit;
    
    var _callback = method(
    {
        callback: global.audio.fade_in,
        args: [-1, global.nextMusic, arg0]
    }, function()
    {
        method_call(callback, args);
    });
    fade_out(undefined, arg1, _callback);
};

get_music_of_situation = function()
{
    if (global.dayNightCycle.currentEvent != UnknownEnum.Value_0)
    {
        switch (global.dayNightCycle.currentEvent)
        {
            case UnknownEnum.Value_4:
                return Blind_Spot;
                break;
            
            case UnknownEnum.Value_2:
                return Blood_Moon;
                break;
            
            case UnknownEnum.Value_1:
                return Death_Waits_For_No_One;
                break;
            
            case UnknownEnum.Value_5:
                return Blind_Spot;
                break;
            
            case UnknownEnum.Value_7:
                return Blind_Spot;
                break;
        }
    }
    else
    {
        var _tensionMusic = false;
        var _fighters = global.playersManager.get_fighters();
        
        if (array_length(_fighters) == 1 && global.playersCount != 1)
        {
            _tensionMusic = true;
        }
        else
        {
            var _hpThresold = 25;
            var _hpMaxTotal = 0;
            var _hpTotal = 0;
            
            for (var _i = 0; _i < array_length(_fighters); _i++)
            {
                _hpMaxTotal += _fighters[_i].hpMax;
                _hpTotal += _fighters[_i].hp;
            }
            
            if (((100 * _hpTotal) / _hpMaxTotal) <= _hpThresold)
                _tensionMusic = true;
        }
        
        if (_tensionMusic && global.isTutorialDone)
        {
            return Until_The_Last_One;
        }
        else
        {
            switch (global.biomeCur)
            {
                case 1:
                default:
                    if (global.fightManager.encounter != -4 && global.fightManager.encounter.structMonster == global.monsters.faun)
                        return The_Chamber_Of_Vows;
                    else
                        return No_Matter_What;
                    
                    break;
                
                case 2:
                    return No_Matter_What;
                    break;
            }
        }
    }
};

effectReverb = audio_effect_create(AudioEffectType.Reverb1);
effectLowpass = audio_effect_create(AudioEffectType.LPF2);

update_effect = function(arg0 = 0.4, arg1 = 400)
{
    effectReverb.bypass = (arg0 == -1) ? true : false;
    effectReverb.mix = arg0;
    lp_bus.effects[0] = effectReverb;
    effectLowpass.bypass = (arg1 == -1) ? true : false;
    effectLowpass.cutoff = arg1;
    lp_bus.effects[1] = effectLowpass;
};

set_door_effect = function()
{
    update_effect();
};

reset_effect = function()
{
    update_effect(-1, -1);
};

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_4 = 4,
    Value_5,
    Value_7 = 7
}

enum AudioEffectType
{
    Bitcrusher,
    Delay,
    Gain,
    HPF2,
    LPF2,
    Reverb1,
    Tremolo,
    PeakEQ,
    HiShelf,
    LoShelf,
    EQ,
    Compressor
}
