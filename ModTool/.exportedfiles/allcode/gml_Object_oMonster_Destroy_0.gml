if (structMonster == global.monsters.platonia)
{
    for (var _i = 0; _i < array_length(slotsFaces); _i++)
        instance_destroy(slotsFaces[_i]);
    
    for (var _i = 0; _i < array_length(slotsPrice); _i++)
        instance_destroy(slotsPrice[_i]);
    
    for (var _i = 0; _i < array_length(playersButtons); _i++)
        instance_destroy(playersButtons[_i]);
}
else if (structMonster == global.monsters.blackMarket)
{
    with (oGlass)
        instance_destroy();
    
    with (oPendulum)
        instance_destroy();
    
    with (oMirror)
        instance_destroy();
}
