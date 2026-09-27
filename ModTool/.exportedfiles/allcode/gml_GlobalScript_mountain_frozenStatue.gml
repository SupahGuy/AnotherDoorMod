function mountain_frozenStatue()
{
    global.cards.frozenStatueLeft = new cCards("cards._statueLeft", "cards._statueLeftDesc", sprItemFrozenStatueLeft, UnknownEnum.Value_3, [global.effect.rezurrection], [UnknownEnum.Value_5], [5]);
    global.cards.frozenStatueRight = new cCards("cards._frozenStatueRight", "cards._frozenStatueRightDesc", sprItemFrozenStatueRight, UnknownEnum.Value_3, [global.effect.frostbite], [UnknownEnum.Value_0], [-1], [1]);
    global.monsters.frozenStatue = new c_monster("frozenStatue", "monster._frozenStatue", "monster._frozenStatueDesc", "MonsterFrozenStatue", UnknownEnum.Value_2, [[global.cards.frozenStatueLeft, global.cards.frozenStatueRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_2 = 2,
    Value_3,
    Value_5 = 5
}
