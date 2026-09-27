function monster_revolutionary()
{
    global.cards.revolutionaryLeft = new cCards("cards._revolutionaryLeft", "cards._revolutionaryLeftDesc", sprItemRevolutionaryLeft, UnknownEnum.Value_2, [global.effect.effectToDamage, global.effect.loyalty], [UnknownEnum.Value_0, UnknownEnum.Value_0], [3, -1], undefined, undefined, undefined, undefined, undefined, [global.effect.loyalty, global.effect.loyalty]);
    global.monsters.revolutionary = new c_monster("revolutionary", "monster._revolutionary", "monster._revolutionaryDesc", "MonsterRevolutionary", UnknownEnum.Value_1, [[global.cards.revolutionaryLeft]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
