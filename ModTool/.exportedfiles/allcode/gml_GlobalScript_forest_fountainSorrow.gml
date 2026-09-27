function forest_fountainSorrow()
{
    global.cards.fountainSorrowLeft = new cCards("cards._fountainSorrowLeft", "cards._fountainSorrowLeftDesc", sprItemFountainSorrowLeft, UnknownEnum.Value_1, [global.effect.heal], [UnknownEnum.Value_0], [30]);
    global.cards.fountainSorrowMushroom = new cCards("cards._fountainSorrowMushroom", "cards._fountainSorrowMushroomDesc", sprItemFountainSorrowMushroom, UnknownEnum.Value_4, [global.effect.removeEffect], [UnknownEnum.Value_0]);
    global.monsters.fountainSorrow = new c_monster("fountainSorrow", "monster._fountainSorrow", "monster._fountainSorrowDesc", "UtilityFountain", UnknownEnum.Value_3, [[global.cards.fountainSorrowLeft]], [global.cards.fountainSorrowMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_3 = 3,
    Value_4
}
