depth = global.depthManager.get_depth("mainScene");
global.isLightOn = false;
spriteMainScene = sprMainSceneBackgroundOff;

switch_light = function(arg0)
{
    if (global.isLightOn != arg0)
    {
        audio_play_sound(sndSwitchLightOn, 1, false, undefined, undefined, random_range(0.9, 1.1));
        global.isLightOn = arg0;
        spriteMainScene = global.isLightOn ? sprMainSceneBackground : sprMainSceneBackgroundOff;
        
        with (oGemDoor)
            lightExit = global.isLightOn;
    }
};
