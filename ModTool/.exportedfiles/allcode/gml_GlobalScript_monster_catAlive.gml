function monster_catAlive()
{
    global.cards.catAliveLeft = new cCards("cards._catAliveLeft", "cards._catAliveLeftDesc", sprItemCatAliveLeft, UnknownEnum.Value_2, [global.effect.attack, global.effect.attack], [UnknownEnum.Value_1, UnknownEnum.Value_2], [1, 15]);
    global.cards.catAliveRight = new cCards("cards._catAliveRight", "cards._catAliveRightDesc", sprItemCatAliveRight, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_6], [20]);
    global.monsters.catAlive = new c_monster("catAlive", "monster._catAlive", "monster._catAliveDesc", "MonsterCatAlive", UnknownEnum.Value_1, [[global.cards.catAliveLeft, global.cards.catAliveRight]]);
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_2,
    Value_6 = 6
}
