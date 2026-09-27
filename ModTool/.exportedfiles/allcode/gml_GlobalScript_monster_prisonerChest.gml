function monster_prisonerChest()
{
    global.cards.prisonerChestLeft = new cCards("cards._prisonerChestLeft", "cards._prisonerChestLeftDesc", sprItemPrisonerChestLeft, UnknownEnum.Value_2, [global.effect.gem, global.effect.gem], [UnknownEnum.Value_8, UnknownEnum.Value_9], [16, 4]);
    global.cards.prisonerChestRight = new cCards("cards._prisonerChestRight", "cards._prisonerChestRightDesc", sprItemPrisonerChestRight, UnknownEnum.Value_2, [global.effect.gem, global.effect.gem], [UnknownEnum.Value_6, UnknownEnum.Value_7], [24, 8]);
    global.monsters.prisonerChest = new c_monster("prisonerChest", "monster._prisonerChest", "monster._prisonerChestDesc", "MonsterPrisonerChest", UnknownEnum.Value_1, [[global.cards.prisonerChestLeft, global.cards.prisonerChestRight]]);
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_2,
    Value_6 = 6,
    Value_7,
    Value_8,
    Value_9
}
