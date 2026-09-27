function forest_forgottenSlime()
{
    global.cards.slimeLeft = new cCards("cards._slimeLeft", "cards._slimeLeftDesc", sprItemSlimeLeft, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_13], [20]);
    global.cards.slimeRight = new cCards("cards._slimeRight", "cards._slimeRightDesc", sprItemSlimeRight, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_12], [20]);
    global.cards.slimeMushroom = new cCards("cards._slimeMushroom", "cards._slimeMushroomDesc", sprItemSlimeMushroom, UnknownEnum.Value_4, [global.effect.gem, global.effect.attack], [UnknownEnum.Value_6, UnknownEnum.Value_7], [10, 20]);
    global.monsters.forgottenSlime = new c_monster("forgottenSlime", "monster._forgottenSlime", "monster._forgottenSlimeDesc", "MonsterSlime", UnknownEnum.Value_0, [[global.cards.slimeLeft, global.cards.slimeRight]], [global.cards.slimeMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_6 = 6,
    Value_7,
    Value_12 = 12,
    Value_13
}
