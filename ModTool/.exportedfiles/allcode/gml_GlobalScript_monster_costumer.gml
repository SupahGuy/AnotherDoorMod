function monster_costumer()
{
    global.cards.costumerLeft = new cCards("cards._costumerLeft", "cards._costumerLeftDesc", sprItemCostumerLeft, UnknownEnum.Value_2, [global.effect.attack, global.effect.attack], [UnknownEnum.Value_0, UnknownEnum.Value_0], [1, 20], undefined, undefined, undefined, [50, 50], [UnknownEnum.Value_1, UnknownEnum.Value_1]);
    global.cards.costumerRight = new cCards("cards._costumerRight", "cards._costumerRightDesc", sprItemCostumerRight, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_0], [10]);
    global.monsters.costumer = new c_monster("costumer", "monster._costumer", "monster._costumerDesc", "MonsterCostumer", UnknownEnum.Value_1, [[global.cards.costumerLeft, global.cards.costumerRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
