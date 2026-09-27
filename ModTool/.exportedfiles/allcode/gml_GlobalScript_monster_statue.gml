function monster_statue()
{
    global.cards.statueLeft = new cCards("cards._statueLeft", "cards._statueLeftDesc", sprItemStatueLeft, UnknownEnum.Value_2, [global.effect.rezurrection], [UnknownEnum.Value_5], [10]);
    global.cards.statueRight = new cCards("cards._statueRight", "cards._statueRightDesc", sprItemStatueRight, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_0], [50], undefined, [UnknownEnum.Value_1]);
    global.monsters.statue = new c_monster("statue", "monster._statue", "monster._statueDesc", "MonsterStatue", UnknownEnum.Value_1, [[global.cards.statueLeft, global.cards.statueRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_5 = 5
}
