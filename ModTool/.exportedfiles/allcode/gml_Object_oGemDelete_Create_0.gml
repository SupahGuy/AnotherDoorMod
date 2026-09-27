x += irandom_range(-8, 8);
y += irandom_range(-8, 8);
sprite_index = choose(sprGemHit1, sprGemHit2, sprGemHit3);
image_angle = choose(0, 90, 180, 270);
peGemAdd = part_emitter_create(global.particlesSys);
add_to_clean_up(peGemAdd, UnknownEnum.Value_5, global.particlesSys);
part_emitter_region(global.particlesSys, peGemAdd, x - 1, x + 1, y - 1, y + 1, 0, 0);
part_emitter_burst(global.particlesSys, peGemAdd, global.particles.ptGemBreak, irandom_range(2, 3));

if (idSender != -1)
{
    if (instance_exists(idSender))
        idSender.delete_gem_callback();
}

audio_play_sound(choose(sndGemBreak_01, sndGemBreak_02, sndGemBreak_03, sndGemBreak_04), 1, false, undefined, undefined, random_range(0.9, 1.1));
global.camera.shakeTimer.reset();
global.camera.shakeTimer.run();
global.shake.add_element(global.camera.id, UnknownEnum.Value_0);

enum UnknownEnum
{
    Value_0,
    Value_5 = 5
}
