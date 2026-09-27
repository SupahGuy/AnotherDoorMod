function monster_sandwichMan()
{
    global.cards.sandwichManLeft = new cCards("cards._sandwichManLeft", "cards._sandwichManLeftDesc", sprItemSandwichManLeft, UnknownEnum.Value_2, [global.effect.gem, global.effect.attack], [UnknownEnum.Value_0, UnknownEnum.Value_0], [1, 10], undefined, [UnknownEnum.Value_13, UnknownEnum.Value_0], undefined, [20, 80]);
    global.cards.sandwichManRight = new cCards("cards._sandwichManRight", "cards._sandwichManRightDesc", sprItemSandwichManRight, UnknownEnum.Value_2, [global.effect.gem], [UnknownEnum.Value_0], [1]);
    global.monsters.sandwichMan = new c_monster("sandwichMan", "monster._sandwichMan", "monster._sandwichManDesc", "MonsterSandwichMan", UnknownEnum.Value_1, [[global.cards.sandwichManLeft, global.cards.sandwichManRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_13 = 13
}
