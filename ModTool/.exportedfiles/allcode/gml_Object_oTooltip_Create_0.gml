if (!variable_instance_exists(id, "idParent"))
    idParent = -4;

idChild = -4;

if (idParent != -4)
{
    with (idParent)
        idChild = other.id;
}

maxWidth = 144;
clipMaskSurface = undefined;
minWidth = 16;
isVisible = false;
timerShow = new myTimer(id, 0.15, undefined, undefined, "ease-out");
image_alpha = 0;

show = function()
{
    if (!isVisible)
    {
        isVisible = true;
        timerShow.run();
        wiggle.run();
    }
};

hide = function()
{
    if (isVisible)
    {
        image_alpha = 0;
        y = yInit;
        isVisible = false;
        timerShow.reset();
        timerShow.stop();
    }
};

wiggle = new WiggleEffect(id);
xOrigin = x;
yOrigin = y;
xTo = x;
yTo = y;
xInit = x;
yInit = y + 4;
width = 0;
height = 0;
halfWidth = 0;
halfHeight = 0;
depth = global.depthManager.get_depth("tooltip");
paddingX = 10;
paddingTop = 8;
paddingBottom = 8;
titlePaddingBottom = 2;
bgDialogueSprite = sprBgDialogue1;
imgW = (img == -1) ? 0 : sprite_get_width(img);
imgH = (img == -1) ? 0 : sprite_get_height(img);
imgOffsetX = (img == -1) ? 0 : sprite_get_xoffset(img);
imgOffsetY = (img == -1) ? 0 : sprite_get_yoffset(img);
imgSpacing = (img == -1) ? 0 : 2;

inverse_order_parent = function()
{
    if (idParent != -4)
    {
        var _oldParent = idParent;
        
        with (idParent)
        {
            idParent = other.id;
            idChild = -4;
        }
        
        idParent = -4;
        idChild = _oldParent;
        reposition();
    }
};

calculate_size = function()
{
    if (title != -1)
    {
        textTitleW = textTitle.get_width() / global.zoom;
        textTitleH = textTitle.get_height() / global.zoom;
        
        if (img != -1)
            imgOffsetY = round(textTitleH / 2) - titlePaddingBottom;
    }
    else
    {
        textTitleW = 0;
        textTitleH = 0;
    }
    
    textBodyW = textBody.get_width() / global.zoom;
    textBodyH = textBody.get_height() / global.zoom;
    
    if (effect != -1)
    {
        width = maxWidth;
        halfWidth = round(width / 2);
    }
    else
    {
        width = round(clamp(max(textTitleW + imgW, textBodyW), minWidth, maxWidth));
        halfWidth = round(width / 2);
    }
    
    height = round(paddingTop + (textTitleH + textBodyH) + paddingBottom);
    halfHeight = round(height / 2);
};

reposition = function(arg0 = xOrigin, arg1 = yOrigin, arg2 = alignX, arg3 = alignY, arg4 = false)
{
    if (idParent != -4 && !arg4)
        exit;
    
    xOrigin = arg0;
    yOrigin = arg1;
    alignX = arg2;
    alignY = arg3;
    x = xOrigin;
    y = yOrigin;
    
    switch (alignX)
    {
        case UnknownEnum.Value_0:
            if (idParent != -4)
            {
            }
            else
            {
                x -= width;
            }
            
            break;
        
        case UnknownEnum.Value_1:
            break;
        
        case UnknownEnum.Value_2:
            if (idParent != -4)
            {
            }
            else
            {
                x -= halfWidth;
            }
            
            break;
    }
    
    switch (alignY)
    {
        case UnknownEnum.Value_0:
            y -= height;
            break;
        
        case UnknownEnum.Value_1:
            if (idParent != -4)
                y += idParent.height;
            
            break;
        
        case UnknownEnum.Value_2:
            if (idParent != -4)
            {
                y -= height;
            }
            else if (idChild != -4)
            {
                y -= height;
                y += ((height + idChild.height) / 2);
            }
            else
            {
                y -= halfHeight;
            }
            
            break;
    }
    
    x = clamp(x, 0, room_width - width);
    xTo = x;
    xInit = x;
    var _clampY = 0;
    
    if (y < 0)
        _clampY = -y;
    else if (y > (room_height - height))
        _clampY = room_height - height - y;
    
    y += _clampY;
    yTo = y;
    yInit = y + 4;
    
    if (idParent != -4)
    {
        idParent.y += _clampY;
        idParent.yTo += _clampY;
        idParent.yInit += _clampY;
    }
    
    if (idChild != -4)
    {
        with (idChild)
        {
            reposition(other.x, other.y, arg2, arg3, true);
            break;
        }
    }
};

textTitle = undefined;
textBody = undefined;

updateTxt = function(arg0 = title, arg1 = body)
{
    if (arg0 != -1)
    {
        if (scribble_is_text_element(textTitle))
            textTitle.flush();
        
        textTitle = scribble($"[yellow1]{arg0}[/c]", $"{id}title").padding(paddingX * global.zoom, 0, paddingX * global.zoom, titlePaddingBottom * global.zoom).wrap((maxWidth - imgW - imgSpacing - paddingX) * global.zoom);
    }
    
    if (scribble_is_text_element(textBody))
        textBody.flush();
    
    textBody = scribble(arg1, $"{id}tooltip").padding(paddingX * global.zoom, 0, paddingX * global.zoom, 0).wrap(maxWidth * global.zoom);
    calculate_size();
    reposition();
};

updateTxt(title, body);

if (isDialbox)
{
    var _string = LocPreprocessor(body);
    var _wordCount = string_count(" ", _string) + 1;
    var _length = _wordCount * 0.75;
    _length = max(1.75, _length);
    timerClose = new myTimer(id, _length);
    timerClose.run();
    typist = scribble_typist();
    typist.in(1 * global.dialogueTextSpeed, 0);
    typist.sound([sndNarrator1, sndNarrator2, sndNarrator3, sndNarrator4], 10, 1, 1, 1);
}

if (idParent != -4)
{
    with (idParent)
        reposition();
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
