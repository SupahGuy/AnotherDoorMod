function monster_souillon()
{
    global.cards.souillonLeft = new cCards("cards._souillonLeft", "cards._souillonLeftDesc", sprItemSouillonLeft, UnknownEnum.Value_2, [global.effect.loyalty], [UnknownEnum.Value_0], [-1], [3], undefined, undefined, [33.333]);
    global.cards.souillonRight = new cCards("cards._souillonRight", "cards._souillonRightDesc", sprItemSouillonRight, UnknownEnum.Value_2, [global.effect.loyalty], [UnknownEnum.Value_0], [-1], [1]);
    global.monsters.souillon = new c_monster("souillon", "monster._souillon", "monster._souillonDesc", "MonsterSouillon", UnknownEnum.Value_1, [[global.cards.souillonLeft, global.cards.souillonRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
