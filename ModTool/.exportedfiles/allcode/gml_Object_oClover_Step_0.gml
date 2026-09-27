offsetCloverX = cos(current_time / 1200) * 40;
offsetCloverY = sin(current_time / 600) * 16;

for (var _i = 0; _i < global.playersCount; _i++)
{
    var _cursor = global.playersManager.get_cursor(_i);
    
    if (_cursor != -4)
    {
        if (!InputPlayerGetGhost(_i) || (InputPlayerGetGhost(_i) && _cursor.isCursorVisible))
        {
            var _distance = point_distance(_cursor.x, _cursor.y, x, y);
            
            if (_distance < distanceMax)
            {
                var _dir = point_direction(x, y, _cursor.x, _cursor.y);
                var _force = 8 * (1 - (_distance / distanceMax));
                offsetMouseX += lengthdir_x(_force, _dir + 180);
                offsetMouseY += lengthdir_y(_force, _dir + 180);
            }
        }
    }
}

offsetMouseX *= 0.9;
offsetMouseY *= 0.9;
x = xInit + offsetCloverX + offsetMouseX;
y = yInit + offsetCloverY + offsetMouseY;
part_emitter_region(particlesSystem, particlesEmmiter, x - 8, x + 8, y - 8, y + 8, 1, 0);
part_emitter_stream(particlesSystem, particlesEmmiter, particlesType, -1);
