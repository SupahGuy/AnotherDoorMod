function forest_innkeeper()
{
    global.cards.innkeeperLeft = new cCards("cards._innKeeperLeft", "cards._innKeeperLeftDesc", sprItemInnkeeperLeft, UnknownEnum.Value_2, [global.effect.multiplyEffect], [UnknownEnum.Value_0], [[[2], [1, 2], [1, 2, 3], [1, 2, 2, 3]]], undefined, [UnknownEnum.Value_5]);
    global.cards.innkeeperRight = new cCards("cards._innKeeperRight", "cards._innKeeperRightDesc", sprItemInnkeeperRight, UnknownEnum.Value_2, [global.effect.multiplyEffect], [UnknownEnum.Value_0], [[[2], [2, 1], [3, 2, 1], [3, 2, 2, 1]]], undefined, [UnknownEnum.Value_5]);
    global.monsters.innkeeper = new c_monster("innkeeper", "monster._innKeeper", "monster._innKeeperDesc", "MonsterInnkeeper", UnknownEnum.Value_1, [[global.cards.innkeeperLeft, global.cards.innkeeperRight]], []);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_5 = 5
}
