function forest_ratten()
{
    global.cards.rattenLeft = new cCards("cards._rattenLeft", "cards._rattenLeftDesc", sprItemRattenLeft, UnknownEnum.Value_1, [global.effect.poison], [UnknownEnum.Value_0], [-1], [3], undefined, undefined, [33.333]);
    global.cards.rattenRight = new cCards("cards._rattenRight", "cards._rattenRightDesc", sprItemRattenRight, UnknownEnum.Value_1, [global.effect.poison], [UnknownEnum.Value_0], [-1], [1]);
    global.cards.rattenMushroom = new cCards("cards._rattenMushroom", "cards._rattenMushroomDesc", sprItemRattenMushroom, UnknownEnum.Value_4, [global.effect.antidote], [UnknownEnum.Value_0], [-1], [1]);
    global.monsters.ratten = new c_monster("ratten", "monster._ratten", "monster._rattenDesc", "MonsterRat", UnknownEnum.Value_0, [[global.cards.rattenLeft, global.cards.rattenRight]], [global.cards.rattenMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4
}
