if (live_call())
    return global.live_result;

event_inherited();

if (keyboard_check_released(vk_anykey))
{
    backspaceTimerFirst.reset();
    backspaceTimerFirst.run();
    backspaceTimer.reset();
}

if (is_focus() && keyboard_check_pressed(vk_anykey))
{
    backspaceTimerFirst.reset();
    backspaceTimerFirst.run();
    backspaceTimer.reset();
    lastKeyPressed = keyboard_key;
    update_value();
}

if (is_focus() && keyboard_check(vk_anykey))
{
    if (lastKeyPressed == keyboard_key && backspaceTimerFirst.is_finished())
    {
        if (backspaceTimer.is_finished() || !backspaceTimer.is_running())
        {
            backspaceTimer.reset();
            backspaceTimer.run();
        }
        else
        {
            update_value();
        }
    }
}
