function monster_luckyChest()
{
    global.cards.luckyChestLeft = new cCards("cards._luckyChestLeft", "cards._luckyChestLeftDesc", sprItemLuckyChestLeft, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_8], [20]);
    global.cards.luckyChestRight = new cCards("cards._luckyChestRight", "cards._luckyChestRightDesc", sprItemLuckyChestRight, UnknownEnum.Value_2, [global.effect.poison, global.effect.gem], [UnknownEnum.Value_0, UnknownEnum.Value_0], [-1, 10], [1, -1], undefined, undefined, [50, 50], [UnknownEnum.Value_1, UnknownEnum.Value_1]);
    global.cards.luckyChestMushroom = new cCards("cards._luckyChestMushroom", "cards._luckyChestMushroomDesc", sprItemLuckyChestMushroom, UnknownEnum.Value_4, [global.effect.gem], [UnknownEnum.Value_22], [10]);
    global.monsters.luckyChest = new c_monster("luckyChest", "monster._luckyChest", "monster._luckyChestDesc", "MonsterLuckyChest", UnknownEnum.Value_0, [[global.cards.luckyChestLeft, global.cards.luckyChestRight]], [global.cards.luckyChestMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_4 = 4,
    Value_8 = 8,
    Value_22 = 22
}
