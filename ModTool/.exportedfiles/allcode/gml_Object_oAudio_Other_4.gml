if (room == roomStart)
{
    global.nextMusic = Down_The_Rabbit_Hole;
    global.audio.reset_effect();
    global.audio.switch_music();
}

if (room == roomScore)
{
    timerMainTheme.stop();
    timerMainTheme.reset();
}
