if (!variable_instance_exists(id, "linkedTo"))
    linkedTo = -4;

if (!variable_instance_exists(id, "appearDelay"))
    appearDelay = 0;

timerAppear = new myTimer(id, 0.5 / global.vfxEffectSpeed, appearDelay / global.vfxEffectSpeed, undefined, "ease-in-out");
animationExecute = new myTimer(id, 0.5 / global.vfxEffectSpeed, undefined, undefined, "ease-out");
executeScale = 1;
executeScaleInit = 1;
executeScaleMax = 3;
executeAlpha = 1;
timerDecrease = new myTimer(id, 0.75 / global.vfxEffectSpeed, appearDelay / global.vfxEffectSpeed, undefined, "ease-in-out");
decreaseYInit = y;
decreaseYTo = y + 12;
decreaseAlpha = 1;
xInit = x;
yInit = y;
x3 = ((xInit + xTo) / 2) - 128;
y3 = ((yInit + yTo) / 2) - 128;
delayActionPlayed = false;
global.waitingList.set(id);
image_alpha = 0;
state = undefined;
statePrev = undefined;

if (!variable_instance_exists(id, "stateNext"))
    stateNext = UnknownEnum.Value_0;

enum UnknownEnum
{
    Value_0
}
