function monster_townCrier()
{
    global.cards.townCrierLeft = new cCards("cards._townCrierLeft", "cards._townCrierLeftDesc", sprItemTownCrierLeft, UnknownEnum.Value_2, [global.effect.badBlood], [UnknownEnum.Value_0], undefined, [1]);
    global.cards.townCrierRight = new cCards("cards._townCrierRight", "cards._townCrierRightDesc", sprItemTownCrierRight, UnknownEnum.Value_2, [global.effect.badBlood], [UnknownEnum.Value_6], undefined, [2]);
    global.monsters.townCrier = new c_monster("townCrier", "monster._townCrier", "monster._townCrierDesc", "MonsterTownCrier", UnknownEnum.Value_1, [[global.cards.townCrierLeft, global.cards.townCrierRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_6 = 6
}
