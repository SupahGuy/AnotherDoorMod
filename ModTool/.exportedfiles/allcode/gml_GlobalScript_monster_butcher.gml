function monster_butcher()
{
    global.cards.butcherLeft = new cCards("cards._butcherLeft", "cards._butcherLeftDesc", sprItemButcherLeft, UnknownEnum.Value_2, [global.effect.attackMultiple], [UnknownEnum.Value_0], [2], undefined, undefined, undefined, [90], undefined, undefined, undefined, [5]);
    global.cards.butcherRight = new cCards("cards._butcherRight", "cards._butcherRightDesc", sprItemButcherRight, UnknownEnum.Value_2, [global.effect.attackMultiple], [UnknownEnum.Value_0], [18], undefined, undefined, undefined, [10], undefined, undefined, undefined, [5]);
    global.monsters.butcher = new c_monster("butcher", "monster._butcher", "monster._butcherDesc", "MonsterButcher", UnknownEnum.Value_1, [[global.cards.butcherLeft, global.cards.butcherRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
