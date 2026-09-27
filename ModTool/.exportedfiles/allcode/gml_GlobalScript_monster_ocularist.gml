function monster_ocularist()
{
    global.cards.ocularistLeft = new cCards("cards._ocularistLeft", "cards._ocularistLeftDesc", sprItemOcularistLeft, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_12], [20]);
    global.cards.ocularistRight = new cCards("cards._ocularistRight", "cards._ocularistRightDesc", sprItemOcularistRight, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_12], [20]);
    global.monsters.ocularist = new c_monster("ocularist", "monster._ocularist", "monster._ocularistDesc", "MonsterOcularist", UnknownEnum.Value_1, [[global.cards.ocularistLeft, global.cards.ocularistRight]]);
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_2,
    Value_12 = 12
}
