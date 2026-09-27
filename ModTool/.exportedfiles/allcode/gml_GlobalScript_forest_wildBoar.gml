function forest_wildBoar()
{
    global.cards.wildBoarLeft = new cCards("cards._wildBoarLeft", "cards._wildBoarLeftDesc", sprItemBoarLeft, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_7], [10]);
    global.cards.wildBoarRight = new cCards("cards._wildBoarRight", "cards._wildBoarRightDesc", sprItemBoarRight, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_7], [30]);
    global.cards.wildBoarMushroom = new cCards("cards._wildBoarMushroom", "cards._wildBoarMushroomDesc", sprItemBoarMushroom, UnknownEnum.Value_4, [global.effect.attack], [UnknownEnum.Value_7], [20]);
    global.monsters.wildBoar = new c_monster("wildBoar", "monster._wildBoar", "monster._wildBoarDesc", "MonsterWildBoar", UnknownEnum.Value_0, [[global.cards.wildBoarLeft, global.cards.wildBoarRight]], [global.cards.wildBoarMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_7 = 7
}
