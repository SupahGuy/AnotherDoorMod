function monster_shoeshiner()
{
    global.cards.shoeshinerLeft = new cCards("cards._shoeshinerLeft", "cards._shoeshinerLeftDesc", sprItemShoeshinerLeft, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_0], [[[15], [1, 30], [1, 30, 1], [1, 30, 30, 1]], -1], undefined, [UnknownEnum.Value_5]);
    global.cards.shoeshinerRight = new cCards("cards._shoeshinerRight", "cards._shoeshinerRightDesc", sprItemShoeshinerRight, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_0], [[[15], [30, 1], [30, 1, 30], [30, 1, 1, 30]], -1], undefined, [UnknownEnum.Value_5]);
    global.monsters.shoeshiner = new c_monster("shoeshiner", "monster._shoeshiner", "monster._shoeshinerDesc", "MonsterShoeshiner", UnknownEnum.Value_1, [[global.cards.shoeshinerLeft, global.cards.shoeshinerRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_5 = 5
}
