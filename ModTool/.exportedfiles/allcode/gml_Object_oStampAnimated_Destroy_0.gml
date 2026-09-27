with (oIntro)
{
    array_push(stampToDraw, 
    {
        x: other.x,
        y: other.yInit,
        sprite: other.sprite_index
    });
    
    if (array_length(stampToDraw) > 400)
        array_delete(stampToDraw, 0, 1);
}

with (oStampAnimated)
{
    if (number == other.number)
        depth++;
}
