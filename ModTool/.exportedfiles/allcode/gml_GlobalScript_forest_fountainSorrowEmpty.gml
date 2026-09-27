function forest_fountainSorrowEmpty()
{
    global.cards.fountainSorrowEmptyLeft = new cCards("cards._fountainSorrowEmptyLeft", "cards._fountainSorrowEmptyLeftDesc", sprItemFountainSorrowLeft, UnknownEnum.Value_1, [global.effect.heal], [UnknownEnum.Value_0], [[5, 25]], undefined, [UnknownEnum.Value_7]);
    global.cards.fountainSorrowEmptyRight = new cCards("cards._fountainSorrowEmptyRight", "cards._fountainSorrowEmptyRightDesc", sprItemFountainSorrowEmptyRight, UnknownEnum.Value_1, [global.effect.fountainFilled], [UnknownEnum.Value_8]);
    global.cards.fountainSorrowEmptyMushroom = new cCards("cards._fountainSorrowEmptyMushroom", "cards._fountainSorrowEmptyMushroomDesc", sprItemFountainSorrowMushroom, UnknownEnum.Value_4, [global.effect.removeEffect], [UnknownEnum.Value_0], undefined, undefined, undefined, undefined, [50]);
    global.monsters.fountainSorrowEmpty = new c_monster("fountainSorrowEmpty", "monster._fountainSorrow", "monster._fountainSorrowDesc", "UtilityFountainEmpty", UnknownEnum.Value_3, [[global.cards.fountainSorrowEmptyLeft, global.cards.fountainSorrowEmptyRight]], [global.cards.fountainSorrowEmptyMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_3 = 3,
    Value_4,
    Value_7 = 7,
    Value_8
}
