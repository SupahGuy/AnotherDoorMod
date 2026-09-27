xInit = x;
yInit = y;
var _spriteSpeed = sprite_get_speed(sprite_index);
var _spriteLength = sprite_get_number(sprite_index);
var _totalTime = _spriteLength / _spriteSpeed;
deleteTimer = new myTimer(id, _totalTime, 0, 1, "ease-out");
deleteTimer.run();
