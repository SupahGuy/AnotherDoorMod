function monster_libarian()
{
    global.cards.libarianLeft = new cCards("cards._libarianLeft", "cards._libarianLeftDesc", sprItemLibarianLeft, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_0], [20], undefined, undefined, undefined, [33]);
    global.cards.libarianRight = new cCards("cards._libarianRight", "cards._libarianRightDesc", sprItemLibarianRight, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_0], [15], undefined, [UnknownEnum.Value_6]);
    global.monsters.libarian = new c_monster("libarian", "monster._libarian", "monster._libarianDesc", "MonsterLibarian", UnknownEnum.Value_1, [[global.cards.libarianLeft, global.cards.libarianRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_6 = 6
}
