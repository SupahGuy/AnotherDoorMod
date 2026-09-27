function monster_keyMaster()
{
    global.cards.keyMasterLeft = new cCards("cards._keyMasterLeft", "cards._keyMasterLeftDesc", sprItemKeyMasterRight, UnknownEnum.Value_2, [global.effect.redPill], [UnknownEnum.Value_0], [4]);
    global.cards.keyMasterRight = new cCards("cards._keyMasterRight", "cards._keyMasterRightDesc", sprItemKeyMasterLeft, UnknownEnum.Value_2, [global.effect.redPill], [UnknownEnum.Value_7], [8]);
    global.monsters.keyMaster = new c_monster("keyMaster", "monster._keyMaster", "monster._keyMasterDesc", "MonsterKeyMaster", UnknownEnum.Value_1, [[global.cards.keyMasterLeft, global.cards.keyMasterRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_7 = 7
}
