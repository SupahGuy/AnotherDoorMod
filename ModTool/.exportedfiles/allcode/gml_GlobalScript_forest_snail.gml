function forest_snail()
{
    global.cards.snailLeft = new cCards("cards._snailLeft", "cards._snailLeftDesc", sprItemSnailLeft, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [[[15], [1, 30], [1, 15, 30], [1, 5, 15, 30]]], undefined, [UnknownEnum.Value_5]);
    global.cards.snailRight = new cCards("cards._snailRight", "cards._snailRightDesc", sprItemSnailRight, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [[[15], [30, 1], [30, 15, 1], [30, 15, 5, 1]]], undefined, [UnknownEnum.Value_5]);
    global.cards.snailMushroom = new cCards("cards._snailMushroom", "cards._snailMushroomDesc", sprItemSnailMushroom, UnknownEnum.Value_4, [global.effect.attack], [UnknownEnum.Value_0], [[[99], [0, 99], [0, 0, 99], [0, 0, 0, 99]]], undefined, [UnknownEnum.Value_5]);
    global.monsters.snail = new c_monster("snail", "monster._snail", "monster._snailDesc", "MonsterSnail", UnknownEnum.Value_0, [[global.cards.snailLeft, global.cards.snailRight]], [global.cards.snailMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_5
}
