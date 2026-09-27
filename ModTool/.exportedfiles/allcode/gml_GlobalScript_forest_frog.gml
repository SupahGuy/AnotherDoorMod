function forest_frog()
{
    global.cards.frogLeft = new cCards("cards._frogLeft", "cards._frogLeftDesc", sprItemFrogLeft, UnknownEnum.Value_1, [global.effect.poison], [UnknownEnum.Value_0], [-1], [1]);
    global.cards.frogRight = new cCards("cards._frogRight", "cards._frogRightDesc", sprItemFrogRight, UnknownEnum.Value_1, [global.effect.poison], [UnknownEnum.Value_9], [-1], [3]);
    global.cards.frogMushroom = new cCards("cards._frogMushroom", "cards._frogMushroomDesc", sprItemFrogMushroom, UnknownEnum.Value_4, [global.effect.allPoisonToGem], [UnknownEnum.Value_0], [2]);
    global.monsters.frog = new c_monster("frog", "monster._frog", "monster._frogDesc", "MonsterFrog", UnknownEnum.Value_0, [[global.cards.frogLeft, global.cards.frogRight]], [global.cards.frogMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_9 = 9
}
