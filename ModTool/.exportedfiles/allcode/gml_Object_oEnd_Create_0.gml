isTalkFinished = false;

talk_finished = function()
{
    ini_open("settings.ini");
    global.gameCount++;
    ini_write_real("gameplay", "counter", global.gameCount);
    ini_close();
    isTalkFinished = true;
};

_stopParticles = function()
{
    if (part_system_exists(global.particlesSys))
    {
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiBlue, global.particles.ptConfettiBlue, 0);
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiRed, global.particles.ptConfettiRed, 0);
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiYellow, global.particles.ptConfettiYellow, 0);
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiGreen, global.particles.ptConfettiGreen, 0);
    }
};

var _alignY = UnknownEnum.Value_0;
var _alignX = UnknownEnum.Value_2;
var _sound = UnknownEnum.Value_2;
var _newTooltipList = [new cDialogue($"narrator._gameEnd1#{global.winner[0].name}", _alignX, _alignY, _sound), new cDialogue($"narrator._gameEnd2#{global.winner[0].scoreOrder}", _alignX, _alignY, _sound), new cDialogue("narrator._gameEnd3", _alignX, _alignY, _sound, undefined, undefined, [global.tvState.reward]), new cDialogue("narrator._gameEnd4", _alignX, _alignY, _sound, undefined, undefined, [global.tvState.off, global.tvState.evil], undefined, [_stopParticles, global.audio.fade_out]), new cDialogue("narrator._gameEnd5", _alignX, _alignY, _sound), new cDialogue("narrator._gameEnd6", _alignX, _alignY, _sound), new cDialogue("narrator._gameEnd7", _alignX, _alignY, _sound), new cDialogue("narrator._gameEnd8", _alignX, _alignY, _sound), new cDialogue("narrator._gameEnd9", _alignX, _alignY, _sound), new cDialogue("narrator._gameEnd10", _alignX, _alignY, _sound), new cDialogue("narrator._gameEnd11", _alignX, _alignY, _sound), new cDialogue("narrator._gameEnd12", _alignX, _alignY, _sound), new cDialogue($"narrator._gameEnd13#{global.gameCount}", _alignX, _alignY, _sound, undefined, undefined, [global.tvState.neutral]), new cDialogue("narrator._gameEnd14", _alignX, _alignY, _sound, undefined, undefined, undefined, undefined, [talk_finished])];
set_list_of_tooltip(_newTooltipList);
instance_create_depth(global.gameWidth / 2, room_height - 32, 0, oDialogue, _newTooltipList[0]);

with (oTv)
    screenStateNext = global.winner[0].screenState;

global.nextMusic = Another_Door;
global.audio.reset_effect();
global.audio.switch_music();

if (part_system_exists(global.particlesSys))
{
    part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiBlue, global.particles.ptConfettiBlue, -2);
    part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiRed, global.particles.ptConfettiRed, -2);
    part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiYellow, global.particles.ptConfettiYellow, -2);
    part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiGreen, global.particles.ptConfettiGreen, -2);
}

enum UnknownEnum
{
    Value_0,
    Value_2 = 2
}
