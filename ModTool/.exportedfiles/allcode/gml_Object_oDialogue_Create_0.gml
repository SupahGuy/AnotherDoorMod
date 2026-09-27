if (!is_array(callBackStart))
    callBackStart = [callBackStart];

var _callBackStartLength = array_length(callBackStart);

if (_callBackStartLength > 0)
{
    for (var _c = 0; _c < _callBackStartLength; _c++)
        callBackStart[_c]();
}

if (!is_array(callBackTextEnd))
    callBackTextEnd = [callBackTextEnd];

if (!is_array(callBackDestroy))
    callBackDestroy = [callBackDestroy];

callBackTextActivated = false;
image_alpha = 0;
timerShow = new myTimer(id, 0.2, undefined, undefined, "ease-out");
timerShow.run();
wiggle = new WiggleEffect(id);
wiggle.run();
xOrigin = x;
yOrigin = y;
depth = global.depthManager.get_depth("dialogue");
bgDialogueSprite = sprBgDialogue1;
textBgWidth = 0;
textBgMaxWidth = 204;
width = 0;
height = 0;
halfHeight = 0;
halfWidth = 0;
paddingLeft = 12;
paddingRight = 12;
paddingTop = 10;
paddingBottom = 10;
caretSprite = sprCaret;
caretW = (closeType == UnknownEnum.Value_1) ? sprite_get_width(caretSprite) : 0;
caretH = (closeType == UnknownEnum.Value_1) ? sprite_get_height(caretSprite) : 0;
caretSpace = (closeType == UnknownEnum.Value_1) ? 8 : 0;
checkWidth = sprite_get_width(sprCheckEmpty);
xCheck = 0;
yCheck = 0;
xTo = x;
yTo = y;
xInit = x;
yInit = y + 8;

reposition = function(arg0 = xOrigin, arg1 = yOrigin, arg2 = alignX, arg3 = alignY)
{
    xOrigin = arg0;
    yOrigin = arg1;
    alignX = arg2;
    alignY = arg3;
    x = xOrigin;
    y = yOrigin;
    
    switch (alignX)
    {
        case UnknownEnum.Value_0:
            x -= width;
            break;
        
        case UnknownEnum.Value_1:
            break;
        
        case UnknownEnum.Value_2:
            x -= (round(width) / 2);
            break;
    }
    
    switch (alignY)
    {
        case UnknownEnum.Value_0:
            y -= height;
            break;
        
        case UnknownEnum.Value_1:
            break;
        
        case UnknownEnum.Value_2:
            y -= (round(height) / 2);
            break;
    }
    
    x = clamp(x, 0, room_width - width);
    y = clamp(y, 0, room_height - height);
    xTo = x;
    yTo = y;
    xInit = x;
    yInit = y + 8;
};

textBody = undefined;

updateTxt = function(arg0 = body)
{
    if (scribble_is_text_element(textBody))
        textBody.flush();
    
    textBody = scribble(arg0).align(0, 0).padding(paddingLeft * global.zoom, paddingTop * global.zoom, (paddingRight + caretW + caretSpace) * global.zoom, paddingBottom * global.zoom).wrap(textBgMaxWidth * global.zoom);
    textBodyW = textBody.get_width();
    textBodyH = textBody.get_height();
    var _dialBgWidth = min(textBodyW / global.zoom, textBgMaxWidth);
    textBgWidth = _dialBgWidth;
    width = round(textBgWidth);
    height = round(textBodyH / global.zoom);
    xCheck = width - (checkWidth * global.playersCount) - 1;
    yCheck = height + 2;
    reposition();
};

updateTxt(body);

if (closeType == UnknownEnum.Value_2)
{
    var _length;
    
    if (closeTimer == -1)
    {
        var _string = LocPreprocessor(body);
        var _wordCount = string_count(" ", _string) + 1;
        _length = _wordCount * 0.75;
        _length = max(1.75, _length);
    }
    else
    {
        _length = closeTimer;
    }
    
    timerClose = new myTimer(id, _length);
    timerClose.run();
}
else if (closeType == UnknownEnum.Value_1)
{
    animBtn = new myTimer(id, undefined, undefined, -1, undefined, undefined, caretSprite);
    animBtn.run();
    var _animCheck0 = new myTimer(id, undefined, undefined, 1, undefined, undefined, sprCheck0);
    var _animCheck1 = new myTimer(id, undefined, undefined, 1, undefined, undefined, sprCheck1);
    var _animCheck2 = new myTimer(id, undefined, undefined, 1, undefined, undefined, sprCheck2);
    var _animCheck3 = new myTimer(id, undefined, undefined, 1, undefined, undefined, sprCheck3);
    animCheckArray = [_animCheck0, _animCheck1, _animCheck2, _animCheck3];
    animCheckCounter = array_create(4, 0);
    global.waitingList.set(id);
}

typist = scribble_typist();
typist.in(1 * global.dialogueTextSpeed, 0);

switch (whoIsSpeaking)
{
    case UnknownEnum.Value_5:
    default:
        break;
    
    case UnknownEnum.Value_0:
        typist.sound([sndFunfairDialogue1, sndFunfairDialogue2, sndFunfairDialogue3, sndFunfairDialogue4], 1, 1, 1, 1);
        break;
    
    case UnknownEnum.Value_1:
        typist.sound([sndIsba_01, sndIsba_02, sndIsba_03, sndIsba_04], 1, 0.6, 0.8, 1);
        break;
    
    case UnknownEnum.Value_3:
        typist.sound([sndFaun_01, sndFaun_02, sndFaun_03, sndFaun_04], 1, 1, 1, 1);
        break;
    
    case UnknownEnum.Value_2:
        typist.sound([sndNarrator1, sndNarrator2, sndNarrator3, sndNarrator4], 1, 1, 1, 1);
        break;
    
    case UnknownEnum.Value_4:
        typist.sound([sndShop_01, sndShop_02, sndShop_03, sndShop_04], 1, 1, 1, 1);
        break;
}

global.dialogueValidated = array_create(4, false);
global.dialogueCounter++;
partSysDial = part_system_create();
part_system_depth(partSysDial, depth);
partEmitDial = part_emitter_create(partSysDial);
part_emitter_region(partSysDial, partEmitDial, 0, 0, 0, 0, 0, 0);
part_system_automatic_draw(partSysDial, false);
add_to_clean_up(partSysDial, UnknownEnum.Value_6);
add_to_clean_up(partEmitDial, UnknownEnum.Value_5, partSysDial);

check_if_destroyable = function()
{
    var _canDestroy = true;
    
    for (var _j = 0; _j < global.playersCount; _j++)
    {
        var _char = global.playersManager.get_characters(_j);
        
        if (_char != -4 && room == roomStage)
        {
            if (_char.is_in_fight() && global.dialogueValidated[_j] == false)
            {
                _canDestroy = false;
                break;
            }
        }
        else if (global.dialogueValidated[_j] == false)
        {
            _canDestroy = false;
            break;
        }
    }
    
    if (_canDestroy)
    {
        instance_destroy();
        
        if (global.networkingManager.isNetworkGame)
            global.networkingManager.destroy_dialogue();
    }
};

generate_particle = function(arg0)
{
    if (!part_system_exists(partSysDial) || !part_emitter_exists(partSysDial, partEmitDial))
        exit;
    
    if (animCheckCounter[arg0] == 0)
    {
        animCheckArray[arg0].reset();
        animCheckArray[arg0].run();
    }
    
    animCheckCounter[arg0]++;
    
    if (animCheckCounter[arg0] > 1)
    {
        var _nbrPart = min(map_value(animCheckCounter[arg0], 2, 100, 1, 16), 100);
        var _x = x + xCheck + (arg0 * 8) + 4;
        var _y = y + yCheck + 3;
        var _partType;
        
        switch (arg0)
        {
            case 0:
                _partType = global.particles.partTypeDial0;
                break;
            
            case 1:
                _partType = global.particles.partTypeDial1;
                break;
            
            case 2:
                _partType = global.particles.partTypeDial2;
                break;
            
            case 3:
                _partType = global.particles.partTypeDial3;
                break;
        }
        
        part_emitter_region(partSysDial, partEmitDial, _x, _x, _y, _y, 0, 0);
        part_emitter_burst(partSysDial, partEmitDial, _partType, _nbrPart);
    }
};

update_counter_dialogue = function(arg0, arg1, arg2 = false)
{
    var _channel;
    
    if (global.dialogueValidated[arg0] != arg1)
        _channel = UnknownEnum.Value_0;
    else
        _channel = UnknownEnum.Value_1;
    
    global.dialogueValidated[arg0] = arg1;
    
    if (arg1)
        generate_particle(arg0);
    
    if (arg2 && global.networkingManager.isNetworkGame)
        global.networkingManager.update_counter_dialogue(arg0, arg1, undefined, _channel);
    
    if (global.dialogueValidated[arg0] && global.isHost)
        check_if_destroyable();
};

if (global.networkingManager.isNetworkGame)
    global.networkingManager.ask_dialogue_status(global.dialogueCounter);

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6
}
