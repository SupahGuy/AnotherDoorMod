if (room == roomStart)
    btnLeaveParty.hide();
else
    btnLeaveParty.show();

if (room == roomStart)
{
    if (global.isTutorialDone)
    {
        gameplayTutorialLeft.set_disabled(true);
        gameplayTutorialRight.set_disabled(false);
    }
    else
    {
        gameplayTutorialRight.set_disabled(true);
        gameplayTutorialLeft.set_disabled(false);
    }
}
else
{
    gameplayTutorialLeft.set_disabled(true);
    gameplayTutorialRight.set_disabled(true);
}

switch_off();
