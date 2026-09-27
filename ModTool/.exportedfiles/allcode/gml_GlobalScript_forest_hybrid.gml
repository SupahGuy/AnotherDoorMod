function forest_hybrid()
{
    global.cards.hybridLeft = new cCards("cards._hybridLeft", "cards._hybridLeftDesc", sprItemHybridLeft, UnknownEnum.Value_1, [global.effect.beeeh, global.effect.hybridExchange, global.effect.tutorial], [UnknownEnum.Value_0, UnknownEnum.Value_0, UnknownEnum.Value_0], [-1, 10, -1], [1, -1, -1], undefined, undefined, [90, 10, 100], [UnknownEnum.Value_1, UnknownEnum.Value_1, UnknownEnum.Value_1]);
    global.cards.hybridRight = new cCards("cards._hybridRight", "cards._hybridRightDesc", sprItemHybridRight, UnknownEnum.Value_1, [global.effect.nothing], [UnknownEnum.Value_0], [-1]);
    global.cards.hybridMushroom = new cCards("cards._hybridMushroom", "cards._hybridMushroomDesc", sprItemHybridMushroom, UnknownEnum.Value_4, [global.effect.beeeh], [UnknownEnum.Value_0], [-1], [5], undefined, undefined, [50]);
    global.monsters.hybrid = new c_monster("hybrid", "monster._hybrid", "monster._hybridDesc", "MonsterHybrid", UnknownEnum.Value_0, [[global.cards.hybridLeft, global.cards.hybridRight]], [global.cards.hybridMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4
}
