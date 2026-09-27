function forest_shepherdess()
{
    global.cards.shepherdessLeft = new cCards("cards._shepherdessLeft", "cards._shepherdessLeftDesc", sprItemShepherdessLeft, UnknownEnum.Value_1, [global.effect.beeehToHeal, global.effect.beeeh], [UnknownEnum.Value_0, UnknownEnum.Value_23], [5, -1]);
    global.cards.shepherdessRight = new cCards("cards._shepherdessRight", "cards._shepherdessRightDesc", sprItemShepherdessRight, UnknownEnum.Value_1, [global.effect.beeehToGem, global.effect.beeeh], [UnknownEnum.Value_0, UnknownEnum.Value_23], [5, -1]);
    global.cards.shepherdessMushroom = new cCards("cards._shepherdessMushroom", "cards._shepherdessMushroomDesc", sprItemShepherdessMushroom, UnknownEnum.Value_4, [global.effect.beeehToHeal, global.effect.beeehToGem, global.effect.beeeh], [UnknownEnum.Value_0, UnknownEnum.Value_0, UnknownEnum.Value_0, UnknownEnum.Value_23], [[1, 15], [1, 8], -1, [-1, -1]], undefined, [UnknownEnum.Value_7, UnknownEnum.Value_7, UnknownEnum.Value_0, UnknownEnum.Value_7]);
    global.monsters.shepherdess = new c_monster("shepherdess", "monster._shepherdess", "monster._shepherdessDesc", "MonsterShepherdess", UnknownEnum.Value_0, [[global.cards.shepherdessLeft, global.cards.shepherdessRight]], [global.cards.shepherdessMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_7 = 7,
    Value_23 = 23
}
