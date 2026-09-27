function monster_graveyardKeeper()
{
    global.cards.graveyardKeeperLeft = new cCards("cards._graveyardKeeperLeft", "cards._graveyardKeeperLeftDesc", sprItemGraveyardKeeperLeft, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_0], [10]);
    global.cards.graveyardKeeperRight = new cCards("cards._graveyardKeeperRight", "cards._graveyardKeeperRightDesc", sprItemGraveyardKeeperRight, UnknownEnum.Value_2, [global.effect.badBlood], [UnknownEnum.Value_8], [-1], [2]);
    global.monsters.graveyardKeeper = new c_monster("graveyardKeeper", "monster._graveyardKeeper", "monster._graveyardKeeperDesc", "MonsterGraveyardKeeper", UnknownEnum.Value_1, [[global.cards.graveyardKeeperLeft, global.cards.graveyardKeeperRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_8 = 8
}
