function monster_catDead()
{
    global.cards.catDeadLeft = new cCards("cards._catDeadLeft", "cards._catDeadLeftDesc", sprItemCatDeadLeft, UnknownEnum.Value_2, [global.effect.attack, global.effect.attack], [UnknownEnum.Value_3, UnknownEnum.Value_4], [1, 15]);
    global.cards.catDeadRight = new cCards("cards._catDeadRight", "cards._catDeadRightDesc", sprItemCatDeadRight, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_8], [20]);
    global.monsters.catDead = new c_monster("catDead", "monster._catDead", "monster._catDeadDesc", "MonsterCatDead", UnknownEnum.Value_1, [[global.cards.catDeadLeft, global.cards.catDeadRight]]);
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_2,
    Value_3,
    Value_4,
    Value_8 = 8
}
