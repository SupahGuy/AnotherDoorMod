event_inherited();
controller = global.__ElementController;
valueVisual = 100;
newValueVisual = 100;
value = 100;
minRangeValue = 0;
maxRangeValue = 100;
minRangeVisualValue = 0;
maxRangeVisualValue = 100;
rangeStep = 5;
sliderDotX = 0;
sliderDotXTo = sliderDotX;
valueTxt = scribble(valueVisual).align(2, 1);
soundOnChange = undefined;

override_range_value = function(arg0 = 0, arg1 = 100)
{
    minRangeValue = arg0;
    maxRangeValue = arg1;
};

update_value = function(arg0, arg1 = false)
{
    valueVisual = arg0;
    value = map_value(valueVisual, minRangeVisualValue, maxRangeVisualValue, minRangeValue, maxRangeValue);
    
    if (arg1)
    {
        sliderDotXTo = map_value(valueVisual, minRangeVisualValue, maxRangeVisualValue, 0, theSpriteWidth);
    }
    else
    {
        sliderDotX = map_value(valueVisual, minRangeVisualValue, maxRangeVisualValue, 0, theSpriteWidth);
        sliderDotXTo = sliderDotX;
    }
    
    on_value_change(value);
    valueTxt = scribble(round(valueVisual)).align(2, 1);
    
    if (soundOnChange != undefined)
    {
        var _soundsToPlay = array_length(soundOnChange);
        var _randomSndIndex = irandom(_soundsToPlay - 1);
        audio_play_sound(soundOnChange[_randomSndIndex], 1, false, undefined, undefined, random_range(0.9, 1.1));
    }
};

on_value_change = function()
{
};

set_on_value_change = function(arg0)
{
    on_value_change = arg0;
};

set_sound_on_change = function(arg0)
{
    soundOnChange = arg0;
};

var _labelWidth = scribble(100).get_width() / global.zoom;
