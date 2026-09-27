function monster_madScientist()
{
    global.cards.madScientistLeft = new cCards("cards._madScientistLeft", "cards._madScientistLeftDesc", sprItemMadScientistLeft, UnknownEnum.Value_2, [global.effect.badBlood], [UnknownEnum.Value_0], [-1], [1]);
    global.cards.madScientistRight = new cCards("cards._madScientistRight", "cards._madScientistRightDesc", sprItemMadScientistRight, UnknownEnum.Value_2, [global.effect.badBlood], [UnknownEnum.Value_0], [-1], [4], undefined, undefined, [25]);
    global.monsters.madScientist = new c_monster("madScientist", "monster._madScientist", "monster._madScientistDesc", "MonsterMadScientist", UnknownEnum.Value_1, [[global.cards.madScientistLeft, global.cards.madScientistRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
