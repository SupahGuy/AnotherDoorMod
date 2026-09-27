function monster_catUndead()
{
    global.cards.catUndeadLeft = new cCards("cards._catUndeadLeft", "cards._catUndeadLeftDesc", sprItemCatUndeadLeft, UnknownEnum.Value_2, [global.effect.aliveBox], [UnknownEnum.Value_6], [-1], [1]);
    global.cards.catUndeadRight = new cCards("cards._catUndeadRight", "cards._catUndeadRightDesc", sprItemCatUndeadRight, UnknownEnum.Value_2, [global.effect.deadBox], [UnknownEnum.Value_6], [-1], [1]);
    global.monsters.catUndead = new c_monster("catUndead", "monster._catUndead", "monster._catUndeadDesc", "MonsterCatUndead", UnknownEnum.Value_1, [[global.cards.catUndeadLeft, global.cards.catUndeadRight]]);
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_2,
    Value_6 = 6
}
