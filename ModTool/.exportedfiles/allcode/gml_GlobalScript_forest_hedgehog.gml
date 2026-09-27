function forest_hedgehog()
{
    global.cards.hedgehogLeft = new cCards("cards._hedgehogLeft", "cards._hedgehogLeftDesc", sprItemHedgehogLeft, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [[1, 30]], [1], [UnknownEnum.Value_7]);
    global.cards.hedgehogRight = new cCards("cards._hedgehogRight", "cards._hedgehogRightDesc", sprItemHedgehogRight, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [15]);
    global.cards.hedgehogMushroom = new cCards("cards._hedgehogMushroom", "cards._hedgehogMushroomDesc", sprItemHedgehogMushroom, UnknownEnum.Value_4, [global.effect.attack], [UnknownEnum.Value_0], [[1, 15]], undefined, [UnknownEnum.Value_7]);
    global.monsters.hedgehog = new c_monster("hedgehog", "monster._hedgehog", "monster._hedgehogDesc", "MonsterHedgehog", UnknownEnum.Value_0, [[global.cards.hedgehogLeft, global.cards.hedgehogRight]], [global.cards.hedgehogMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_7 = 7
}
