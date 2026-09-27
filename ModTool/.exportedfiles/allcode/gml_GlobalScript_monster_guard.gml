function monster_guard()
{
    global.cards.guardLeft = new cCards("cards._guardLeft", "cards._guardLeftDesc", sprItemGuardLeft, UnknownEnum.Value_2, [global.effect.loyalty], [UnknownEnum.Value_0], [-1], [2]);
    global.cards.guardRight = new cCards("cards._guardRight", "cards._guardRightDesc", sprItemGuardRight, UnknownEnum.Value_2, [global.effect.loyalty], [UnknownEnum.Value_0], [-1], [4], undefined, undefined, [50], [UnknownEnum.Value_1]);
    global.monsters.guard = new c_monster("guard", "monster._guard", "monster._guardDesc", "MonsterGuard", UnknownEnum.Value_1, [[global.cards.guardLeft, global.cards.guardRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
