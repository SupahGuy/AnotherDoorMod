function forest_starMole()
{
    global.cards.starMoleLeft = new cCards("cards._starMoleLeft", "cards._starMoleLeftDesc", sprItemStarMoleLeft, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [1], undefined, [UnknownEnum.Value_10]);
    global.cards.starMoleRight = new cCards("cards._starMoleRight", "cards._starMoleRightDesc", sprItemStarMoleRight, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_11], [30]);
    global.cards.starMoleMushroom = new cCards("cards._starMoleMushroom", "cards._starMoleMushroomDesc", sprItemStarMoleMushroom, UnknownEnum.Value_4, [global.effect.attack], [UnknownEnum.Value_7], [2], undefined, [UnknownEnum.Value_10]);
    global.monsters.starMole = new c_monster("starMole", "monster._starMole", "monster._starMoleDesc", "MonsterStarMole", UnknownEnum.Value_0, [[global.cards.starMoleLeft, global.cards.starMoleRight]], [global.cards.starMoleMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_7 = 7,
    Value_10 = 10,
    Value_11
}
