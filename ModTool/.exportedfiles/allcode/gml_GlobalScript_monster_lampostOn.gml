function monster_lampostOn()
{
    global.cards.lampostOnLeft = new cCards("cards._lampostOnLeft", "cards._lampostOnLeftDesc", sprItemLampostOnLeft, UnknownEnum.Value_2, [global.effect.healSoft], [UnknownEnum.Value_0], [1], undefined, [UnknownEnum.Value_15]);
    global.cards.lampostOnRight = new cCards("cards._lampostOnRight", "cards._lampostOnRightDesc", sprItemLampostOnRight, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_20], [30]);
    global.monsters.lampostOn = new c_monster("lampostOn", "monster._lampostOn", "monster._lampostOnDesc", "MonsterLampostOn", UnknownEnum.Value_1, [[global.cards.lampostOnLeft, global.cards.lampostOnRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_15 = 15,
    Value_20 = 20
}
