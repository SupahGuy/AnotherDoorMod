global.chromaStrenght = lerp(global.chromaStrenght, 0, 0.18);

if ((shakeTimer.is_running() || shakeTimer.is_finished()) && !shakeTimer.is_delay_running())
{
    var _mult = map_value(shakeTimer.get_cur_length_normalize(), 0, 1, 1, 0);
    var _incr = global.shake.get_intensity(id);
    var _values = global.shake.get_values();
    shakeX = _values[0] * _incr * _mult;
    shakeY = _values[1] * _incr * _mult;
}
else
{
    shakeX = 0;
    shakeY = 0;
}

if (shakeTimer.is_finished())
{
    shakeTimer.reset();
    global.shake.remove_element(id);
}

newX = x + xVel;
newY = y + yVel;
x = newX;
y = newY;
xView = (x - (global.gameWidth / 2)) + shakeX;
yView = (y - (global.gameHeight / 2)) + shakeY;
