if (timerFadeInMusic.is_finished())
{
    timerFadeInMusic.stop();
    timerFadeInMusic.reset();
    play_callback(fadeInCallback);
}

if (timerFadeOutMusic.is_finished())
{
    timerFadeOutMusic.stop();
    timerFadeOutMusic.reset();
    fade_out_end();
}

if (timerMainTheme.is_finished())
{
    timerMainTheme.reset();
    timerMainTheme.stop();
    fade_in(-1, currentMusic);
}
