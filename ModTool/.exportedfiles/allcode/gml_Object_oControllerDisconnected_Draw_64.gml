if (room != roomStart && is_paused_controller())
{
    upscale_pixelart_start();
    draw_set_alpha(0.88);
    draw_rectangle_color(0, 0, global.gameWidth, room_height, global.color.blue6, global.color.blue6, global.color.blue6, global.color.blue6, false);
    draw_set_alpha(1);
    var _y = 100;
    var _xMid, _width, _spacing, _height;
    
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        var _state = InputPlayerGetStatus(_i);
        _width = sprite_get_width(sprBorderController);
        _height = sprite_get_height(sprBorderController);
        _spacing = 16;
        _xMid = (global.gameWidth - ((_width * global.playersCount) + (_spacing * (global.playersCount - 1)))) / 2;
        var _xBox = _xMid + ((_width + _spacing) * _i);
        var _yBox = _y + titleH + txtSpacing + descH + controllerSpacing;
        
        if (_state == UnknownEnum.Value_3)
        {
            draw_sprite(sprBorderController, 0, _xBox, _yBox);
            draw_sprite(sprController, 0, _xBox, _yBox);
        }
        else
        {
            draw_sprite(sprBorderController, 0, _xBox, _yBox);
        }
    }
    
    upscale_pixelart_end();
    title.draw((global.gameWidth / 2) * global.zoom, _y * global.zoom);
    desc.draw((global.gameWidth / 2) * global.zoom, (_y + titleH + txtSpacing) * global.zoom);
    
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        var _state = InputPlayerGetStatus(_i);
        var _xBox = _xMid + ((_width + _spacing) * _i);
        var _yBox = _y + titleH + txtSpacing + descH + controllerSpacing;
        
        if (_state == UnknownEnum.Value_3)
        {
            scribble("[p{_i}]settings._connected[/c]").align(1, 0).draw(_xBox * global.zoom, ((_yBox + 2) * global.zoom) + _height);
        }
        else
        {
            scribble("settings._disconnected").align(1, 0).draw(_xBox * global.zoom, ((_yBox + 2) * global.zoom) + _height);
            scribble($"player._p#{_i + 1}").align(1, 1).draw(_xBox * global.zoom, _yBox * global.zoom);
        }
    }
}

enum UnknownEnum
{
    Value_3 = 3
}
