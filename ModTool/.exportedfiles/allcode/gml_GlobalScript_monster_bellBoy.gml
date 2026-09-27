function monster_bellBoy()
{
    global.cards.bellBoyLeft = new cCards("cards._bellBoyLeft", "cards._bellBoyLeftDesc", sprItemBellBoyLeft, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_0], [15]);
    global.cards.bellBoyRight = new cCards("cards._bellBoyRight", "cards._bellBoyRightDesc", sprItemBellBoyRight, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_9], [75]);
    global.monsters.bellBoy = new c_monster("bellBoy", "monster._bellBoy", "monster._bellBoyDesc", "MonsterBellBoy", UnknownEnum.Value_1, [[global.cards.bellBoyLeft, global.cards.bellBoyRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_9 = 9
}
