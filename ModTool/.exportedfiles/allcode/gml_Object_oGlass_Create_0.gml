event_inherited();
isBreak = false;

break_glass = function()
{
    global.camera.shakeTimer.reset();
    global.camera.shakeTimer.run();
    global.shake.add_element(global.camera.id, UnknownEnum.Value_2);
    isBreak = true;
    audio_play_sound(sndGlassBreak, 10, false, undefined, undefined, random_range(0.9, 1.1));
};

enum UnknownEnum
{
    Value_2 = 2
}
