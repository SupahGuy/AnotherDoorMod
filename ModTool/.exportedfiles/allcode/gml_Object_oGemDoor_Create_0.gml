event_inherited();
state = UnknownEnum.Value_0;
statePrev = state;
stateNext = state;
set_disabled(true);
doorOffsetX = 0;
doorOffsetY = 0;
define_sprite(sprMainSceneExitBorder);
animDoor = new myTimer(id, undefined, undefined, -1, undefined, undefined, sprMainSceneDoorExit);

change_door_type = function(arg0 = -1)
{
    if (arg0 == -1)
    {
        switch (global.biomeCur)
        {
            case 1:
                doorType = UnknownEnum.Value_1;
                break;
            
            case 2:
                doorType = UnknownEnum.Value_2;
                break;
        }
    }
    else
    {
        doorType = arg0;
    }
    
    global.loopManager.update_level_name();
    
    switch (doorType)
    {
        case UnknownEnum.Value_0:
            x = global.uiPos.mainSceneDoors.bgExit.x;
            y = global.uiPos.mainSceneDoors.bgExit.y;
            define_sprite(sprMainSceneExitBorder);
            animDoor = new myTimer(id, undefined, undefined, -1, undefined, undefined, sprMainSceneDoorExit);
            doorOffsetX = global.uiPos.mainSceneDoors.doorExitOffset.x;
            doorOffsetY = global.uiPos.mainSceneDoors.doorExitOffset.y;
            break;
        
        case UnknownEnum.Value_1:
            x = global.uiPos.mainSceneDoors.bgForest.x;
            y = global.uiPos.mainSceneDoors.bgForest.y;
            define_sprite(sprMainSceneContinueBorderForest);
            animDoor = new myTimer(id, undefined, undefined, -1, undefined, undefined, sprMainSceneDoorForest);
            doorOffsetX = global.uiPos.mainSceneDoors.doorForestOffset.x;
            doorOffsetY = global.uiPos.mainSceneDoors.doorForestOffset.y;
            break;
        
        case UnknownEnum.Value_2:
            x = global.uiPos.mainSceneDoors.bgCity.x;
            y = global.uiPos.mainSceneDoors.bgCity.y;
            define_sprite(sprMainSceneContinueBorderCity);
            animDoor = new myTimer(id, undefined, undefined, -1, undefined, undefined, sprMainSceneDoorCity);
            doorOffsetX = global.uiPos.mainSceneDoors.doorCityOffset.x;
            doorOffsetY = global.uiPos.mainSceneDoors.doorCityOffset.y;
            break;
    }
};

change_door_type(doorType);
morseRunning = false;
morseCode = "";
morseCharStartTime = -1;
morseCharEndTime = -1;
morseDitLength = 300;
morseDahLength = morseDitLength * 3;
morseIntraLength = morseDitLength;
morseInterLength = morseDitLength * 3;
morseCharCur = 1;
morseLightOn = false;
lightExit = 0;

calculate_morse_time = function(arg0, arg1)
{
    var _char = string_char_at(arg0, arg1);
    
    if (string_length(arg0) < arg1)
    {
        morseCode = "";
        morseRunning = false;
        morseCharCur = 1;
        exit;
    }
    
    morseCharStartTime = current_time;
    var _lightTime = morseCharStartTime;
    var _endTime = morseCharStartTime;
    
    switch (_char)
    {
        case " ":
            _lightTime += 0;
            _endTime += morseInterLength;
            break;
        
        case ".":
        case "·":
            _lightTime += morseDitLength;
            _endTime = _lightTime + morseIntraLength;
            break;
        
        case "-":
        case "−":
            _lightTime += morseDahLength;
            _endTime = _lightTime + morseIntraLength;
            break;
    }
    
    morseLightTime = _lightTime;
    morseCharEndTime = _endTime;
};

send_morse_code = function(arg0)
{
    morseCode = arg0;
    morseCode = string_concat("  ", morseCode, "  ");
    morseRunning = true;
    morseCharCur = 1;
    calculate_morse_time(morseCode, morseCharCur);
};

doorFrame = 0;
doorFrameTo = 0;
sprite_prefetch(sprMainSceneDoorExit);

openDoor = function(arg0 = 100)
{
    var _nbrImg = map_value(arg0, 0, 100, 0, sprite_get_number(animDoor.get_sprite()) - 1);
    doorFrameTo = _nbrImg;
};

closeDoor = function(arg0 = 100)
{
    var _nbrImg = map_value(arg0, 0, 100, sprite_get_number(animDoor.get_sprite()) - 1, 0);
    doorFrameTo = _nbrImg;
};

var _alignY = UnknownEnum.Value_0;
var _alignX = UnknownEnum.Value_2;
gamepadBtnLinked = undefined;

if (doorType == UnknownEnum.Value_0)
{
    gamepadBtnLinked = UnknownEnum.Value_7;
    var _spriteButton = sprBtnLeft;
    _tooltip = new cTooltip(id, "endchoice._leaveTitle", "endchoice._leaveDesc", _alignX, _alignY);
}
else
{
    gamepadBtnLinked = UnknownEnum.Value_8;
    var _spriteButton = sprBtnRight;
    _tooltip = new cTooltip(id, "endchoice._continueTitle", $"endchoice._continueDesc#{global.loopManager.get_gem_reward()}", _alignX, _alignY);
}

var _tooltip = instance_create_depth(x, global.uiPos.mainSceneDoors.bgExit.y - 8 - sprite_get_yoffset(sprite_index), global.depthManager.get_depth("tooltip"), oTooltip, _tooltip);
_tooltip.persistent = true;
set_tooltip(_tooltip);

update_rewards_tooltip = function()
{
    if (doorType == UnknownEnum.Value_0)
        tooltip[0].updateTxt("endchoice._leaveTitle", "endchoice._leaveDesc");
    else
        tooltip[0].updateTxt("endchoice._continueTitle", $"endchoice._continueDesc#{global.loopManager.get_gem_reward()}");
};

barCompletionWidth = 0;
barCompletionWidthTo = 0;

if (doorType != UnknownEnum.Value_0)
    sprCompletionDoor = sprDoorProgress;

shouldReplace = true;

replace_door = function(arg0 = true)
{
    shouldReplace = arg0;
    countClamp = 0;
    clampFrame = 0;
    clampTightenTimer.set_direction(1);
    global.waitingList.set("doorClamp");
    stateNext = UnknownEnum.Value_1;
};

isClampVisible = false;
clampDownTimer = new myTimer(id, 3, 0, 1, "ease-out");
clampTightenTimer = new myTimer(id, 1, 0, 1, undefined, undefined, sprTvClampFront);
clampUpTimer = new myTimer(id, 3, 0, 1, "ease-in");
clampAngle = 0;
clampX = 0;
clampY = 0;
clampYInit = -140;
clampFrame = 0;
clampYOffsetInit = -(32 + sprite_get_height(sprMainSceneContinueBorderForestTop) + sprite_get_yoffset(sprMainSceneContinueBorderForestTop));
clampYOffsetTo = sprite_get_height(sprTvClampFront);
clampOffsetY = clampYInit;
doorClampOffsetY = y;
countClamp = 0;

reset_state = function()
{
    barCompletionWidth = 0;
    barCompletionWidthTo = 0;
    clampYOffsetInit = -(32 + sprite_get_height(sprMainSceneContinueBorderForestTop) + sprite_get_yoffset(sprMainSceneContinueBorderForestTop));
    clampYOffsetTo = sprite_get_height(sprTvClampFront);
    clampOffsetY = clampYInit;
    doorClampOffsetY = y;
};

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_7 = 7,
    Value_8
}
