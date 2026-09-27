function forest_maybeSheep()
{
    global.cards.maybeSheepLeft = new cCards("cards._maybeSheepLeft", "cards._maybeSheepLeftDesc", sprItemMaybeSheepLeft, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [[[20], [40, 0], [40, 20, 0], [40, 30, 20, 0]]], undefined, [UnknownEnum.Value_5]);
    global.cards.maybeSheepRight = new cCards("cards._maybeSheepRight", "cards._maybeSheepRightDesc", sprItemMaybeSheepRight, UnknownEnum.Value_1, [global.effect.attackMaybeSheep, global.effect.beeeh], [UnknownEnum.Value_0, UnknownEnum.Value_23], [5, -1]);
    global.cards.maybeSheepMushroom = new cCards("cards._maybeSheepMushroom", "cards._maybeSheepMushroomDesc", sprItemMaybeSheepMushroom, UnknownEnum.Value_4, [global.effect.attack], [UnknownEnum.Value_0], [[[20], [0, 40], [0, 40, 0], [0, 40, 0, 0]]], undefined, [UnknownEnum.Value_5]);
    global.monsters.maybeSheep = new c_monster("maybeSheep", "monster._maybeSheep", "monster._maybeSheepDesc", "MonsterWolf", UnknownEnum.Value_0, [[global.cards.maybeSheepLeft, global.cards.maybeSheepRight]], [global.cards.maybeSheepMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_5,
    Value_23 = 23
}
