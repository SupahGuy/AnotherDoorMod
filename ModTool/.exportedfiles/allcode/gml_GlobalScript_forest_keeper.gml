function forest_keeper()
{
    global.cards.keeperLeft = new cCards("cards._keeperLeft", "cards._keeperLeftDesc", sprItemKeeperLeft, UnknownEnum.Value_1, [global.effect.gem, global.effect.attack], [UnknownEnum.Value_0, UnknownEnum.Value_0], [10, 20], undefined, undefined, undefined, [80, 20], [UnknownEnum.Value_1, UnknownEnum.Value_1]);
    global.cards.keeperRight = new cCards("cards._keeperRight", "cards._keeperRightDesc", sprItemKeeperRight, UnknownEnum.Value_1, [global.effect.gem, global.effect.attack], [UnknownEnum.Value_0, UnknownEnum.Value_0], [5, [1, 10]], undefined, [UnknownEnum.Value_0, UnknownEnum.Value_7]);
    global.cards.keeperMushroom = new cCards("cards._keeperMushroom", "cards._keeperMushroomDesc", sprItemKeeperMushroom, UnknownEnum.Value_4, [global.effect.gem, global.effect.attack], [UnknownEnum.Value_0, UnknownEnum.Value_0], [10, 1]);
    global.monsters.keeper = new c_monster("keeper", "monster._keeper", "monster._keeperDesc", "MonsterKeeper", UnknownEnum.Value_0, [[global.cards.keeperLeft, global.cards.keeperRight]], [global.cards.keeperMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_7 = 7
}
