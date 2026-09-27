function forest_dolly()
{
    global.cards.dollyLeft = new cCards("cards._dollyLeft", "cards._dollyLeftDesc", sprItemDollyLeft, UnknownEnum.Value_1, [global.effect.beeeh], [UnknownEnum.Value_0], [-1], [[[2], [1, 4], [1, 2, 4], [1, 2, 3, 4]]], undefined, [UnknownEnum.Value_2]);
    global.cards.dollyRight = new cCards("cards._dollyRight", "cards._dollyRightDesc", sprItemDollyRight, UnknownEnum.Value_1, [global.effect.beeeh], [UnknownEnum.Value_0], [-1], [[[2], [8, 0], [8, 1, 0], [8, 2, 1, 0]]], undefined, [UnknownEnum.Value_2]);
    global.cards.dollyMushroom = new cCards("cards._dollyMushroom", "cards._dollyMushroomDesc", sprItemDollyMushroom, UnknownEnum.Value_4, [global.effect.beeeh], [UnknownEnum.Value_0], [-1], [4]);
    global.monsters.dolly = new c_monster("dolly", "monster._dolly", "monster._dollyDesc", "MonsterDolly", UnknownEnum.Value_0, [[global.cards.dollyLeft, global.cards.dollyRight]], [global.cards.dollyMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_4 = 4
}
