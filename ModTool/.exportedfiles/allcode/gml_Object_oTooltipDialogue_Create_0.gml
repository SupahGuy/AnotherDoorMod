clipMaskSurface = undefined;
add_to_clean_up(clipMaskSurface, UnknownEnum.Value_3);
isVisible = false;
timerShow = new myTimer(id, 0.15, undefined, undefined, "ease-out");
image_alpha = 0;
wiggle = new WiggleEffect(id);
timerShow.run();
wiggle.run();
depth = global.depthManager.get_depth("tooltip");
paddingX = 10;
paddingY = 8;
bgDialogueSprite = sprBgDialogue1;
maxWidth = 113;
var _toto = body;
body = string_wordwrap_width(_toto, maxWidth * global.zoom, "\n", true, global.fontOpenEnded);
width = round((paddingX * 2) + ((string_width(body) * global.fontScaleOpenEnded) / global.zoom));
width = max(25, width);
halfWidth = round(width / 2);
height = round((paddingY * 2) + ((string_height(body) * global.fontScaleOpenEnded) / global.zoom));
halfHeight = round(height / 2);
xOrigin = x;
yOrigin = y;
y -= height;
x = clamp(x, 0, room_width - width);
y = clamp(y, 0, room_height - height);
xTo = x;
yTo = y;
xInit = x;
yInit = y + 4;
var _wordCount = string_count(" ", body) + 1;
var _length = _wordCount * 0.75;
_length = max(2, _length);
timerClose = new myTimer(id, _length);
timerClose.run();

enum UnknownEnum
{
    Value_3 = 3
}
