draw_gui();
draw_self();
draw_sprite(sprSelectionEyePupil, image_index, x + (eyeW / 2) + pupileX, y + (eyeH / 2) + pupileY);

if (prevState != state)
{
    if (state == "open")
        image_speed = 1;
    else if (state == "close")
        image_speed = -1;
    else if (state == "blinkClose")
        image_speed = -1;
}

if ((state == "open" || state == "close") && image_speed != 0)
{
    if (animation_end())
        image_speed = 0;
}

if (state == "blinkClose")
{
    if (animation_end())
    {
        image_speed = 1;
        state = "blinkOpen";
    }
}

if (state == "blinkOpen")
{
    if (animation_end())
    {
        image_speed = 0;
        state = "open";
    }
}

prevState = state;
draw_gui_end();
