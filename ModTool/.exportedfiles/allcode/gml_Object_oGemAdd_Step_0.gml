if (timerAppear.is_running() && !timerAppear.is_delay_running())
{
    var _norm = timerAppear.get_cur_length_normalize();
    x = (power(1 - _norm, 2) * xInit) + (2 * (1 - _norm) * _norm * x3) + (power(_norm, 2) * xTo);
    y = (power(1 - _norm, 2) * yInit) + (2 * (1 - _norm) * _norm * y3) + (power(_norm, 2) * yTo);
    image_angle = 0;
}

if (timerAppear.is_finished())
{
    if (idReceiver != -1)
    {
        if (instance_exists(idReceiver))
        {
            if (typeReceiver == UnknownEnum.Value_1)
                idReceiver.add_gem_secure_callback();
            else
                idReceiver.add_gem_callback();
        }
    }
    else
    {
        audio_play_sound(choose(sndGemBreak_01, sndGemBreak_02, sndGemBreak_03, sndGemBreak_04), 1, false, undefined, undefined, random_range(0.9, 1.1));
        part_emitter_burst(global.particlesSys, peGemAdd, global.particles.ptGemBreak, irandom_range(1, 3));
    }
    
    instance_destroy();
}

part_emitter_region(global.particlesSys, peGemAdd, x - 1, x + 1, y - 1, y + 1, 0, 0);

enum UnknownEnum
{
    Value_1 = 1
}
