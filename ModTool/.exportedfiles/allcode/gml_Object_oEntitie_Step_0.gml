hpProfileWTo = round(map_value(hp, 0, hpMax, 0, hpProfileWMax));
hpProfileW = lerp(hpProfileW, hpProfileWTo, 0.1);
hpPrev = hp;

if (statePrev != state)
{
}

if (state == UnknownEnum.Value_1)
{
    if (statePrev != state)
        sprite_index = spriteIdle;
}
else if (state == UnknownEnum.Value_0)
{
    if (statePrev != state)
    {
        damageTimer = new myTimer(id, 0.2 / global.vfxEffectSpeed);
        damageTimer.reset();
        damageTimer.run();
        image_index = 0;
        sprite_index = spriteHit;
    }
    
    if (damageTimer.is_finished())
        stateNext = UnknownEnum.Value_1;
}
else if (state == UnknownEnum.Value_2)
{
    if (statePrev != state)
    {
        delete_effect();
        g_exchange_gem(undefined, undefined, undefined, undefined, gem, UnknownEnum.Value_0, number, UnknownEnum.Value_2);
        sprite_index = spriteDead;
        spriteProfile = spriteProfileDead;
        spriteProfileBoxGem = spriteProfileBoxGemDead;
        
        if (token.theType != UnknownEnum.Value_17)
        {
            global.playersManager.apply_action(number, UnknownEnum.Value_14);
            token.change_type(UnknownEnum.Value_1);
        }
    }
}
else if (state == UnknownEnum.Value_3)
{
    if (statePrev != state)
    {
        delete_effect();
        spriteProfile = spriteProfileLeaving;
        spriteProfileBoxGem = spriteProfileBoxGemLeft;
        token.change_type(UnknownEnum.Value_2);
    }
}

statePrev = state;
state = stateNext;

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_14 = 14,
    Value_17 = 17
}
