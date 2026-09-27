function generate_tooltip(arg0, arg1, arg2, arg3, arg4, arg5, arg6 = -1, arg7 = -1, arg8 = UnknownEnum.Value_0, arg9 = false, arg10 = -4)
{
    if (arg8 == UnknownEnum.Value_1)
    {
        var _lastY = arg3;
        var _theIdParent = arg10;
        
        for (var _i = 0; _i < array_length(arg1.actionType); _i++)
        {
            var _tooltip = generate_tooltip(arg0, arg1.actionType[_i], arg2, _lastY, arg4, arg5, arg6, arg7, UnknownEnum.Value_0, undefined, _theIdParent);
            _lastY = _tooltip.posY;
            _theIdParent = _tooltip.idParent;
        }
        
        return 
        {
            idParent: arg10,
            posY: _lastY
        };
    }
    else if (arg8 == UnknownEnum.Value_2)
    {
        var _body = add_var_to_text(arg1, arg6, arg7);
        var _structTooltip = new cTooltip(arg0, arg1.name, _body, arg4, arg5, undefined, arg1, undefined, undefined, arg10);
        var _tooltip = instance_create_depth(arg2, arg3 - 2, 0, oTooltip, _structTooltip);
        set_tooltip(_tooltip);
        return 
        {
            idParent: _tooltip,
            posY: _tooltip.y
        };
    }
    else if (arg8 == UnknownEnum.Value_0)
    {
        if (arg1.condition[0] == UnknownEnum.Value_0)
        {
            return 
            {
                idParent: noone,
                posY: arg3
            };
        }
        
        var _lastY = arg3;
        var _theIdParent = arg10;
        var _linkedEffect = arg1.linkedEffectTooltip;
        
        for (var _i = 0; _i < array_length(_linkedEffect); _i++)
        {
            var _tooltipEffect = generate_tooltip(arg0, _linkedEffect[_i], arg2, _lastY, arg4, arg5, -1, -1, UnknownEnum.Value_0, true, _theIdParent);
            _lastY = _tooltipEffect.posY;
            _theIdParent = _tooltipEffect.idParent;
        }
        
        var _body = add_var_to_text(arg1, arg6, arg7);
        var _structTooltip = new cTooltip(arg0, arg1.name, _body, arg4, arg5, arg1.sprite, arg1, arg9, undefined, _theIdParent);
        var _offsetY = (array_length(_linkedEffect) == 0) ? 0 : 2;
        var _tooltip = instance_create_depth(arg2, _lastY - _offsetY, 0, oTooltip, _structTooltip);
        set_tooltip(_tooltip);
        return 
        {
            idParent: _tooltip,
            posY: _tooltip.y
        };
    }
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
