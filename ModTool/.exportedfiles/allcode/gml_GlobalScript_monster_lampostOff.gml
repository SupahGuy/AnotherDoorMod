function monster_lampostOff()
{
    global.cards.lampostOffLeft = new cCards("cards._lampostOffLeft", "cards._lampostOffLeftDesc", sprItemLampostOffLeft, UnknownEnum.Value_2, [global.effect.healSoft], [UnknownEnum.Value_0], [1], undefined, [UnknownEnum.Value_14]);
    global.cards.lampostOffRight = new cCards("cards._lampostOffRight", "cards._lampostOffRightDesc", sprItemLampostOffRight, UnknownEnum.Value_2, [global.effect.heal], [UnknownEnum.Value_19], [30]);
    global.monsters.lampostOff = new c_monster("lampostOff", "monster._lampostOff", "monster._lampostOffDesc", "MonsterLampostOff", UnknownEnum.Value_1, [[global.cards.lampostOffLeft, global.cards.lampostOffRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_14 = 14,
    Value_19 = 19
}
