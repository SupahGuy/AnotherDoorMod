event_inherited();
set_disabled(true);
var _newSprite = sprAbilityFlynt;
var _tooltipName, _tooltipDesc;

switch (theType)
{
    case UnknownEnum.Value_0:
        _newSprite = sprAbilityFlynt;
        _tooltipName = "";
        _tooltipDesc = "";
        break;
    
    default:
        _newSprite = sprAbilityFlynt;
        _tooltipName = "";
        _tooltipDesc = "";
        break;
}

define_sprite(_newSprite);
imgIndex = 0;
var _structTooltip = new cTooltip(id, _tooltipName, _tooltipDesc, UnknownEnum.Value_2, UnknownEnum.Value_0);
var _tooltip = instance_create_depth(x, y - 16, 0, oTooltip, _structTooltip);
_tooltip.persistent = true;
set_tooltip(_tooltip);
state = UnknownEnum.Value_0;
stateNext = undefined;
statePrev = undefined;

enum UnknownEnum
{
    Value_0,
    Value_2 = 2
}
