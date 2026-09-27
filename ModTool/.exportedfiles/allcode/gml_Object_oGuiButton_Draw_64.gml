if (live_call())
    return global.live_result;

if (!is_visible())
    exit;

event_inherited();
var _offset = 0;

switch (stateGui)
{
    case UnknownEnum.Value_2:
    case UnknownEnum.Value_3:
        _offset = 1;
        break;
}

if (label != undefined)
    labelDraw.draw((x + (theWidth / 2)) * global.zoom, (y + _offset + (theHeight / 2)) * global.zoom);

enum UnknownEnum
{
    Value_2 = 2,
    Value_3
}
