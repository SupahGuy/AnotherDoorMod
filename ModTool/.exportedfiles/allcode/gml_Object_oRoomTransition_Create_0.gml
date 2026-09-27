if (!variable_instance_exists(id, "leaveCallback"))
    leaveCallback = undefined;

if (!variable_instance_exists(id, "enterCallback"))
    enterCallback = undefined;

leaveCallbackActivated = false;

open = function()
{
    global.waitingList.set(id);
    stateNext = UnknownEnum.Value_1;
};

timerLeave = new myTimer(id, 0.75, 0, 1, "ease-out");
timerEnter = new myTimer(id, 0.75, 0.25, 1, "ease-in");
global.waitingList.set(id);
heightR1 = 0;
heightR2 = global.gameHeight;
state = undefined;
stateNext = UnknownEnum.Value_0;
statePrev = undefined;

enum UnknownEnum
{
    Value_0,
    Value_1
}
