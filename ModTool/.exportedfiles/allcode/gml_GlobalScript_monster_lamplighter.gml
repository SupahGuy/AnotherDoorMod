function forest_lamplighter()
{
    global.cards.lamplighterLeft = new cCards("cards._lamplighterLeft", "cards._lamplighterLeftDesc", sprItemLamplighterLeft, UnknownEnum.Value_2, [global.effect.attack, global.effect.tutorial], [UnknownEnum.Value_0, UnknownEnum.Value_8], [[3, 6], -1], undefined, [UnknownEnum.Value_7, UnknownEnum.Value_0]);
    global.cards.lamplighterRight = new cCards("cards._lamplighterRight", "cards._lamplighterRightDesc", sprItemLamplighterRight, UnknownEnum.Value_2, [global.effect.heal], [UnknownEnum.Value_0], [2], undefined, [UnknownEnum.Value_16]);
    global.monsters.lamplighter = new c_monster("lamplighter", "monster._lamplighter", "monster._lamplighterDesc", "MonsterLamplighter", UnknownEnum.Value_1, [[global.cards.lamplighterLeft, global.cards.lamplighterRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_7 = 7,
    Value_8,
    Value_16 = 16
}
