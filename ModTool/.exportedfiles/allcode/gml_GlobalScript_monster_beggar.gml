function monster_beggar()
{
    global.cards.beggarLeft = new cCards("cards._beggarLeft", "cards._beggarLeftDesc", sprItemBeggarLeft, UnknownEnum.Value_2, [global.effect.loyalty], [UnknownEnum.Value_9], [-1], [3]);
    global.cards.beggarRight = new cCards("cards._beggarRight", "cards._beggarRightDesc", sprItemBeggarRight, UnknownEnum.Value_2, [global.effect.loyalty], [UnknownEnum.Value_9], [-1], [3]);
    global.monsters.beggar = new c_monster("beggar", "monster._beggar", "monster._beggarDesc", "MonsterBeggar", UnknownEnum.Value_1, [[global.cards.beggarLeft, global.cards.beggarRight]]);
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_2,
    Value_9 = 9
}
