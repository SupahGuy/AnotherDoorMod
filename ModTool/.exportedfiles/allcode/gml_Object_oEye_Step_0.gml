var _collide = point_in_circle(linkedCursor.x, linkedCursor.y, x + (eyeW / 2), y + (eyeH / 2), pupileRad * 4);
var _dir = point_direction(x + (eyeW / 2), y + (eyeH / 2), linkedCursor.x, linkedCursor.y);

if (_collide)
{
    pupileXTo = -lengthdir_x(pupileMaxX, _dir);
    pupileYTo = -lengthdir_y(pupileMaxY, _dir);
}
else
{
    pupileXTo = lengthdir_x(pupileMaxX, _dir);
    pupileYTo = lengthdir_y(pupileMaxY, _dir);
}

pupileX = lerp(pupileX, pupileXTo, 0.1);
pupileY = lerp(pupileY, pupileYTo, 0.1);

if (state == "open" && nextBlink <= blinkCounter)
{
    nextBlink = irandom_range(blinkDurationMin, blinkDurationMax);
    blinkCounter = 0;
    state = "blinkClose";
}

if (state == "open")
    blinkCounter++;
