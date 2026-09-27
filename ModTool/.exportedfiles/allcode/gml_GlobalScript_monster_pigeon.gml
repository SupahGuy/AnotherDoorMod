function monster_pigeon()
{
    global.cards.pigeonLeft = new cCards("cards._pigeonLeft", "cards._pigeonLeftDesc", sprItemPigeonRight, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_0], [30], undefined, [UnknownEnum.Value_12]);
    global.cards.pigeonRight = new cCards("cards._pigeonRight", "cards._pigeonRightDesc", sprItemPigeonLeft, UnknownEnum.Value_2, [global.effect.pigeonEgg], [UnknownEnum.Value_0], [-1], [1]);
    global.monsters.pigeon = new c_monster("pigeon", "monster._pigeon", "monster._pigeonDesc", "MonsterPigeon", UnknownEnum.Value_1, [[global.cards.pigeonLeft, global.cards.pigeonRight]], []);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_12 = 12
}
