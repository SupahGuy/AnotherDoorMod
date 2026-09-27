function monster_minstrel()
{
    global.cards.minstrelLeft = new cCards("cards._minstrelLeft", "cards._minstrelLeftDesc", sprItemMinstrelLeft, UnknownEnum.Value_2, [global.effect.attack, global.effect.gem, global.effect.tutorial], [UnknownEnum.Value_0, UnknownEnum.Value_0, UnknownEnum.Value_0], [30, 2, -1], undefined, undefined, undefined, [10, 90, 100], [UnknownEnum.Value_1, UnknownEnum.Value_1, UnknownEnum.Value_1]);
    global.cards.minstrelRight = new cCards("cards._minstrelRight", "cards._minstrelRightDesc", sprItemMinstrelRight, UnknownEnum.Value_2, [global.effect.nothing], [UnknownEnum.Value_0]);
    global.monsters.minstrel = new c_monster("minstrel", "monster._minstrel", "monster._minstrelDesc", "MonsterMinstrel", UnknownEnum.Value_1, [[global.cards.minstrelLeft, global.cards.minstrelRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
