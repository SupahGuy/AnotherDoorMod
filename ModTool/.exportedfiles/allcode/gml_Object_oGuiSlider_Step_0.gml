event_inherited();

if (is_active())
{
    with (oCursor)
    {
        var _xMin = other.x;
        var _xMax = other.x + other.theSpriteWidth;
        var _x = clamp(x + 3, _xMin, _xMax);
        other.newValueVisual = map_value(_x, _xMin, _xMax, other.minRangeVisualValue, other.maxRangeVisualValue);
        other.newValueVisual -= (other.newValueVisual % other.rangeStep);
        
        if (other.newValueVisual != other.valueVisual)
        {
            if (other.is_pressed())
                other.update_value(other.newValueVisual, true);
            else
                other.update_value(other.newValueVisual);
        }
    }
}

sliderDotX = lerp(sliderDotX, sliderDotXTo, 0.5);
