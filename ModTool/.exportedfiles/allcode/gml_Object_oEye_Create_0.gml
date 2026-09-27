if (!variable_instance_exists(id, "number"))
    number = 0;

state = "close";
prevState = state;
image_speed = 0;
blinkDurationMin = 3 * room_speed;
blinkDurationMax = 9 * room_speed;
blinkCounter = 0;
nextBlink = irandom_range(blinkDurationMin, blinkDurationMax);
pupileX = 0;
pupileY = 0;
pupileXTo = 0;
pupileYTo = 0;
eyeW = sprite_get_width(sprite_index);
eyeH = sprite_get_height(sprite_index);
pupileMaxX = 4;
pupileMaxY = 4.5;
pupileRad = 8;
linkedCursor = undefined;

with (oCursor)
{
    if (number == other.number)
        other.linkedCursor = id;
}
