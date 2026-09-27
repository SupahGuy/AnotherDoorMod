function monster_banker()
{
    global.cards.bankerLeft = new cCards("cards._bankerLeft", "cards._bankerLeftDesc", sprItemBankerLeft, UnknownEnum.Value_2, [global.effect.gem], [UnknownEnum.Value_0], [[1, 20]], undefined, [UnknownEnum.Value_7]);
    global.cards.bankerRight = new cCards("cards._bankerRight", "cards._bankerRightDesc", sprItemPlaceholder, UnknownEnum.Value_2, [global.effect.gem, global.effect.trapped], [UnknownEnum.Value_7, UnknownEnum.Value_6], [25, -1], [-1, 1]);
    global.monsters.banker = new c_monster("banker", "monster._banker", "monster._bankerDesc", "MonsterBanker", UnknownEnum.Value_1, [[global.cards.bankerLeft]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_6 = 6,
    Value_7
}
