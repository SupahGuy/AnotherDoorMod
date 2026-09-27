upscale_pixelart_start();
draw_set_alpha(0.9);
draw_rectangle_color(0, 0, global.gameWidth, room_height, global.color.blue6, global.color.blue6, global.color.blue6, global.color.blue6, false);
draw_set_alpha(1);
draw_sprite(sprMonsterRatIdle, oSyncAnimation.frameSynchEight.get_current_frame(), x, y - sprite_get_yoffset(sprMonsterRatIdle) - 24);
upscale_pixelart_end();
title.draw((global.gameWidth / 2) * global.zoom, y * global.zoom);
desc.draw((global.gameWidth / 2) * global.zoom, (y * global.zoom) + titleH + 8);

for (var _i = 0; _i < global.playersCount; _i++)
{
    var _state = global.playersManager.is_connected(_i);
    var _y = ((y + (controllerSpacing * _i)) * global.zoom) + titleH + descH + 32;
    var _color, _label;
    
    if (_state == true)
    {
        _label = "settings._connected";
        _color = $"p{_i}";
    }
    else
    {
        _label = "settings._disconnected";
        _color = "grey1";
    }
    
    scribble($"[{_color}]{_label}#P{_i + 1}[/c]").align(1, 0).draw(x * global.zoom, _y);
}

scribble($"online._voteContinue#{wannaContinueCounter}#{numberPlayersConnected}").align(1, 0).draw(x * global.zoom, (global.gameHeight - 80) * global.zoom);
