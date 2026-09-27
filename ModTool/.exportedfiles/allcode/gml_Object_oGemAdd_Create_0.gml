var _multiCalc = min(1, numberMax / 100);
timerAppear = new myTimer(id, 1.5 / global.vfxEffectSpeed, undefined, undefined, "ease-in-out");
timerAppear.run();
xInit = x;
yInit = y;
var _rangeMaxOffset = 64;
var _xOffset = irandom_range(-_rangeMaxOffset * _multiCalc, _rangeMaxOffset * _multiCalc);
var _yOffset = irandom_range(-_rangeMaxOffset * _multiCalc, _rangeMaxOffset * _multiCalc);
x3 = ((xInit + xTo) / 2) + _xOffset;
y3 = ((yInit + yTo) / 2) + _yOffset;

if (idSender != -1)
{
    if (instance_exists(idSender))
        idSender.delete_gem_callback();
}

peGemAdd = part_emitter_create(global.particlesSys);
add_to_clean_up(peGemAdd, UnknownEnum.Value_5, global.particlesSys);
part_emitter_region(global.particlesSys, peGemAdd, x - 1, x + 1, y - 1, y + 1, 0, 0);
part_emitter_stream(global.particlesSys, peGemAdd, global.particles.ptGemAdd, -2);

enum UnknownEnum
{
    Value_5 = 5
}
