if (!variable_instance_exists(id, "label"))
    label = "";

if (!variable_instance_exists(id, "labelOriginal"))
    labelOriginal = "1";

if (!variable_instance_exists(id, "sprSource"))
    sprSource = -1;

if (!variable_instance_exists(id, "category"))
    category = UnknownEnum.Value_1;

if (!variable_instance_exists(id, "owner"))
    owner = undefined;

if (owner != undefined)
{
    with (owner)
    {
        for (var _i = 0; _i < array_length(fightText); _i++)
        {
            if (instance_exists(fightText[_i]))
            {
                var _offset = 16;
                fightText[_i].yTo -= _offset;
                fightText[_i].yInitTo -= _offset;
            }
        }
    }
    
    array_push(owner.fightText, id);
}

state = undefined;
stateNext = UnknownEnum.Value_0;
statePrev = undefined;
depth = global.depthManager.get_depth("floatText");
shakeStrenght = undefined;
theSprite = (sprSource != "") ? asset_get_index(sprSource) : -1;

if (sprSource != -1)
    sprW = sprite_get_width(theSprite);
else
    sprW = 0;

yInit = y;
yInitTo = y;
yTo = y - 16;
var _offsetXto;

if (owner != undefined)
{
    _offsetXto = (owner.fightTextPosition % 2) ? -16 : 16;
    owner.fightTextPosition++;
}
else
{
    _offsetXto = choose(-16, 16);
}

var _offsetX = (category != UnknownEnum.Value_3) ? 0 : 0;
xInit = x + _offsetX;
xTo = xInit + _offsetXto;
scaleInit = 1;
scaleCur = 1;
scaleTo = 1;
var _easeAppear = "damage";
var _timerAppear = 0.2;
var _easeWait = "ease-in-out";
var _timerWait = 2.5;
var _easeDisappear = "ease-in";
var _timerDisappear = 0.5;
var _easeAll = "ease-out";
var _easeAll2 = "ease-out";
var _color, _font;

if (category == UnknownEnum.Value_2)
{
    label = $"+{label}";
    _color = "green1";
    var _cache = "floatHeal";
    _font = "ftNbrBig";
    _easeAppear = "pingpong-ease-inout";
    scaleTo = 2;
}
else if (category == UnknownEnum.Value_0)
{
    _color = "grey1";
    var _cache = "floatInfo";
    _easeAppear = "pingpong-ease-inout";
    scaleTo = 2;
    
    if (is_numeric(label))
        _font = "ftNbrBig";
    else
        _font = "ftAlkhemikalSh";
}
else if (category == UnknownEnum.Value_1)
{
    _color = "grey1";
    var _cache = "floatDamage";
    _font = "ftNbrBig";
    _timerAppear = 0.2;
    scaleTo = min(max(1.5, map_value(labelOriginal, 1, 50, 1, 2)), 2);
    peText = part_emitter_create(global.particlesSys);
    part_emitter_region(global.particlesSys, peText, x, x, y, y, 0, 0);
    part_emitter_burst(global.particlesSys, peText, global.particles.ptHit, min(ceil(labelOriginal / 2), 50));
    part_emitter_destroy(global.particlesSys, peText);
}
else if (category == UnknownEnum.Value_3)
{
    _color = "grey1";
    var _cache = "floatEffect";
    _font = "ftNbrSmall";
}

var _timerAll = _timerAppear + _timerWait + _timerDisappear;
typist = scribble_typist();
labelDraw = scribble($"[{_color}]{label}[/c]").scale(global.fontScaleTitle).align(1, 1).starting_format(_font, global.color.grey1);
labelDrawW = labelDraw.get_width();
labelDrawH = labelDraw.get_height();
timerAll = new myTimer(id, _timerAll / global.vfxEffectSpeed, undefined, undefined, _easeAll);
timerAll.run();
timerAll2 = new myTimer(id, _timerAll / global.vfxEffectSpeed, undefined, undefined, _easeAll2);
timerAll2.run();
timerAppear = new myTimer(id, _timerAppear / global.vfxEffectSpeed, undefined, undefined, _easeAppear);
timerWait = new myTimer(id, _timerWait / global.vfxEffectSpeed, undefined, undefined, _easeWait);
timerDisappear = new myTimer(id, _timerDisappear / global.vfxEffectSpeed, undefined, undefined, _easeDisappear);
timerWaitinglist = new myTimer(id, 0.75 / global.vfxEffectSpeed);
timerWaitinglist.run();
global.waitingList.set(id);

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3
}
