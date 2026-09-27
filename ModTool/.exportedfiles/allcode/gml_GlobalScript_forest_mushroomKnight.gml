function forest_mushroomKnight()
{
    global.cards.mushroomKnightLeft = new cCards("cards._mushroomKnightLeft", "cards._mushroomKnightLeftDesc", sprItemMushroomKnightLeft, UnknownEnum.Value_1, [global.effect.badTrip], [UnknownEnum.Value_0], [-1], [1]);
    global.cards.mushroomKnightRight = new cCards("cards._mushroomKnightRight", "cards._mushroomKnightRightDesc", sprItemMushroomKnightRight, UnknownEnum.Value_1, [global.effect.nothing]);
    global.cards.mushroomKnightMushroom = new cCards("cards._mushroomKnightMushroom", "cards._mushroomKnightMushroomDesc", sprItemMushroomKnightMushroom, UnknownEnum.Value_4, [global.effect.badTrip], [UnknownEnum.Value_0], [-1], [2]);
    global.monsters.mushroomKnight = new c_monster("mushroomKnight", "monster._mushroomKnight", "monster._mushroomKnightDesc", "MonsterMushroomKnight", UnknownEnum.Value_0, [[global.cards.mushroomKnightLeft, global.cards.mushroomKnightRight]], [global.cards.mushroomKnightMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4
}
