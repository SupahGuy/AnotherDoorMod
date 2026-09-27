global.waitingList.set(id);
title = scribble("online._someoneHasLeftTitle").align(1, 0);
titleH = title.get_bbox(0, 0).height;
desc = scribble("online._someoneHasLeftDesc").wrap(192 * global.zoom).align(1, 0);
descH = desc.get_bbox(0, 0).height;
txtSpacing = 8;
controllerSpacing = 16;
wannaWait = [];
wannaContinueCounter = 0;

for (var _i = 0; _i < global.playersCount; _i++)
    wannaWait[_i] = true;

numberPlayersConnected = 0;

for (var _i = 0; _i < global.playersCount; _i++)
{
    if (global.playersManager.is_connected(_i))
        numberPlayersConnected++;
}

update_text = function()
{
    title = scribble("online._someoneHasLeftTitle").align(1, 0);
    titleH = title.get_bbox(0, 0).height;
    desc = scribble("online._someoneHasLeftDesc").wrap(192 * global.zoom).align(1, 0);
    descH = desc.get_bbox(0, 0).height;
};

btnWannaLeave = instance_create_depth(x, global.gameHeight - 32, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "global._doNotWait",
    alignH: UnknownEnum.Value_2,
    alignV: UnknownEnum.Value_1
});

check_counter_no_wait = function()
{
    var _someoneWantToWait = false;
    wannaContinueCounter = numberPlayersConnected;
    
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        var _state = global.playersManager.is_connected(_i);
        
        if (_state == true && wannaWait[_i] == true)
        {
            _someoneWantToWait = true;
            wannaContinueCounter--;
        }
    }
    
    if (!_someoneWantToWait)
        instance_destroy();
};

enum UnknownEnum
{
    Value_1 = 1,
    Value_2
}
