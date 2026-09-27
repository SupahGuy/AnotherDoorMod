function forest_hunter()
{
    global.cards.hunterLeft = new cCards("cards._hunterLeft", "cards._hunterLeftDesc", sprItemHunterLeft, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_6], [25]);
    global.cards.hunterRight = new cCards("cards._hunterRight", "cards._hunterRightDesc", sprItemHunterRight, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_14], [15]);
    global.cards.hunterMushroom = new cCards("cards._hunterMushroom", "cards._hunterMushroomDesc", sprItemHunterMushroom, UnknownEnum.Value_4, [global.effect.attack], [UnknownEnum.Value_0], [5]);
    global.monsters.hunter = new c_monster("hunter", "monster._hunter", "monster._hunterDesc", "MonsterHunter", UnknownEnum.Value_0, [[global.cards.hunterLeft, global.cards.hunterRight]], [global.cards.hunterMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_6 = 6,
    Value_14 = 14
}
