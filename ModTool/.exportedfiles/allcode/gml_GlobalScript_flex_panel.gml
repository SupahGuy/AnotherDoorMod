function ik_flex_panel_draw_layout(arg0, arg1 = 0)
{
    var _pos = flexpanel_node_layout_get_position(arg0, false);
    var _name = flexpanel_node_get_name(arg0);
    var _data = flexpanel_node_get_data(arg0);
    
    if (_data.type == UnknownEnum.Value_1 || _data.type == UnknownEnum.Value_0)
    {
        if (_data.element.__starting_halign == 0)
            _data.element.draw(_data.x * global.zoom, (_data.y - arg1) * global.zoom);
        else if (_data.element.__starting_halign == 1)
            _data.element.draw((_data.x + round(_pos.width / 2)) * global.zoom, (_data.y - arg1) * global.zoom);
        else
            _data.element.draw((_data.x + _pos.width) * global.zoom, (_data.y - arg1) * global.zoom);
    }
    else if (_data.type == UnknownEnum.Value_2)
    {
        draw_set_font(global.fontOpenEnded);
        draw_set_color(global.color.grey1);
        draw_text_transformed(_data.x * global.zoom, _data.y * global.zoom, _data.element, global.fontScaleOpenEnded, global.fontScaleOpenEnded, 0);
        draw_set_alpha(1);
    }
    else if (_data.type == UnknownEnum.Value_4)
    {
        upscale_pixelart_start();
        draw_sprite_stretched(sprUiBgTableRow, 0, _data.x, _data.y - arg1, _pos.width, _pos.height);
        upscale_pixelart_end();
    }
    else if (_data.type == UnknownEnum.Value_5)
    {
        upscale_pixelart_start();
        draw_sprite_stretched(sprUiBgTableHead, 0, _data.x, _data.y - arg1, _pos.width, _pos.height);
        upscale_pixelart_end();
    }
    else if (_data.type == UnknownEnum.Value_6)
    {
        upscale_pixelart_start();
        draw_sprite(_data.element, current_time / 25, _data.x + (_pos.width / 2), (_data.y - arg1) + (_pos.height / 2));
        upscale_pixelart_end();
    }
    else if (_data.type == UnknownEnum.Value_7)
    {
        upscale_pixelart_start();
        draw_sprite_stretched(_data.element, 0, _data.x, _data.y - arg1, _pos.width, _pos.height);
        upscale_pixelart_end();
    }
    
    var _children_count = flexpanel_node_get_num_children(arg0);
    
    for (var i = 0; i < _children_count; i++)
    {
        var _child = flexpanel_node_get_child(arg0, i);
        ik_flex_panel_draw_layout(_child, arg1);
    }
}

function ik_flex_panel_generate_instance(arg0)
{
    var _pos = flexpanel_node_layout_get_position(arg0, false);
    var _name = flexpanel_node_get_name(arg0);
    var _data = flexpanel_node_get_data(arg0);
    
    if (_data.type == UnknownEnum.Value_3)
        _data.element.set_position(round(_pos.left), round(_pos.top));
    
    _data.x = round(_pos.left);
    _data.y = round(_pos.top);
    var _children_count = flexpanel_node_get_num_children(arg0);
    
    for (var i = 0; i < _children_count; i++)
    {
        var _child = flexpanel_node_get_child(arg0, i);
        ik_flex_panel_generate_instance(_child);
    }
}

function cFlexStruct(arg0, arg1, arg2 = undefined, arg3 = undefined, arg4 = undefined) constructor
{
    name = arg0;
    
    if (arg1 == UnknownEnum.Value_1)
    {
        height = (arg3 == undefined) ? (arg2.get_height() / global.zoom) : arg3;
        width = (arg4 == undefined) ? (arg2.get_width() / global.zoom) : arg4;
    }
    else if (arg1 == UnknownEnum.Value_2)
    {
        draw_set_font(global.fontOpenEnded);
        height = (arg3 == undefined) ? ((string_height(arg2) * global.fontScaleOpenEnded) / global.zoom) : arg3;
        width = (arg4 == undefined) ? ((string_width(arg2) * global.fontScaleOpenEnded) / global.zoom) : arg4;
    }
    else if (arg1 == UnknownEnum.Value_3)
    {
        height = (arg3 == undefined) ? arg2.get_height() : arg3;
        width = (arg4 == undefined) ? arg2.get_width() : arg4;
    }
    else if (arg1 == UnknownEnum.Value_6)
    {
        height = (arg3 == undefined) ? sprite_get_height(arg2) : arg3;
        width = (arg4 == undefined) ? sprite_get_width(arg2) : arg4;
    }
    else
    {
        height = (arg3 == undefined) ? 0 : arg3;
        width = (arg4 == undefined) ? 0 : arg4;
    }
    
    data = 
    {
        type: arg1,
        element: arg2,
        x: 0,
        y: 0
    };
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_7
}
