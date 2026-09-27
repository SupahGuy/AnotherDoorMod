event_inherited();

if (!variable_instance_exists(id, "label"))
    label = undefined;

if (!variable_instance_exists(id, "labelAlignH"))
    labelAlignH = 1;

if (!variable_instance_exists(id, "heightFixed"))
    heightFixed = -1;

if (!variable_instance_exists(id, "widthFixed"))
    widthFixed = -1;

labelDraw = scribble(label, $"{id}Button").align(labelAlignH, 1);
labelW = labelDraw.get_width();
labelH = labelDraw.get_height();

update_label = function(arg0 = label)
{
    label = arg0;
    
    if (scribble_is_text_element(labelDraw))
        labelDraw.flush();
    
    labelDraw = scribble(label, $"{id}Button").align(labelAlignH, 1);
    labelW = labelDraw.get_width();
    labelH = labelDraw.get_height();
    set_width();
    set_height();
    set_position();
};

xInit = x;
yInit = y;

set_position = function(arg0 = xInit, arg1 = yInit)
{
    xInit = arg0;
    yInit = arg1;
    x = xInit + offsetH;
    y = yInit + offsetV;
};

padLeft = 0;
padTop = 0;
padRight = 0;
padBottom = 0;
padX = padLeft + padRight;
padY = padTop + padBottom;

set_padding = function(arg0, arg1, arg2, arg3)
{
    padLeft = arg3;
    padTop = arg0;
    padRight = arg1;
    padBottom = arg2;
    padX = padLeft + padRight;
    padY = padTop + padBottom;
    set_width();
    set_height();
    set_position();
};

if (!variable_instance_exists(id, "alignH"))
    alignH = UnknownEnum.Value_0;

if (!variable_instance_exists(id, "alignV"))
    alignV = UnknownEnum.Value_0;

set_align_h = function(arg0)
{
    alignH = arg0;
    
    if (alignH == UnknownEnum.Value_2)
        offsetH = -get_width() / 2;
    else if (alignH == UnknownEnum.Value_0)
        offsetH = 0;
    else if (alignH == UnknownEnum.Value_1)
        offsetH = -get_width();
};

set_align_v = function(arg0)
{
    alignV = arg0;
    
    if (alignV == UnknownEnum.Value_2)
        offsetV = -get_height() / 2;
    else if (alignV == UnknownEnum.Value_0)
        offsetV = 0;
    else if (alignV == UnknownEnum.Value_1)
        offsetV = -get_height();
};

theWidth = 0;
theHeight = 0;
sprW = sprite_get_width(sprite_index);
sprH = sprite_get_height(sprite_index);

set_height = function()
{
    if (heightFixed != -1)
    {
        theHeight = heightFixed;
        image_yscale = heightFixed / sprH;
    }
    else
    {
        theHeight = (label == undefined) ? sprH : (round(labelH / global.zoom) + (padTop + padBottom));
        image_yscale = (label == undefined) ? 1 : (theHeight / sprH);
    }
    
    set_align_v(alignV);
};

get_height = function()
{
    return theHeight;
};

set_width = function()
{
    if (widthFixed != -1)
    {
        theWidth = widthFixed;
        image_xscale = widthFixed / sprW;
    }
    else
    {
        theWidth = (label == undefined) ? sprW : (round(labelW / global.zoom) + (padLeft + padRight));
        image_xscale = (label == undefined) ? 1 : (theWidth / sprW);
    }
    
    set_align_h(alignH);
};

get_width = function()
{
    return theWidth;
};

set_width();
set_height();

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
