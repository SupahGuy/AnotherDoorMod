function forest_sheep()
{
    global.cards.sheepLeft = new cCards("cards._sheepLeft", "cards._sheepLeftDesc", sprItemSheepLeft, UnknownEnum.Value_1, [global.effect.beeeh], [UnknownEnum.Value_0], [-1], [1]);
    global.cards.sheepRight = new cCards("cards._sheepRight", "cards._sheepRightDesc", sprItemSheepRight, UnknownEnum.Value_1, [global.effect.gem], [UnknownEnum.Value_0], [5]);
    global.cards.sheepMushroom = new cCards("cards._sheepMushroom", "cards._sheepMushroomDesc", sprItemSheepMushroom, UnknownEnum.Value_4, [global.effect.beeeh], [UnknownEnum.Value_7], [-1], [4]);
    global.monsters.sheep = new c_monster("sheep", "monster._sheep", "monster._sheepDesc", "MonsterSheep", UnknownEnum.Value_0, [[global.cards.sheepLeft, global.cards.sheepRight]], [global.cards.sheepMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_7 = 7
}
