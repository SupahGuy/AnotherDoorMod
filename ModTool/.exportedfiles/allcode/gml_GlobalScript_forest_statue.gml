function forest_statue()
{
    global.cards.statueForestLeft = new cCards("cards._statueLeft", "cards._statueLeftDesc", sprItemStatueLeft, UnknownEnum.Value_1, [global.effect.rezurrection], [UnknownEnum.Value_5], [5]);
    global.cards.statueForestRight = new cCards("cards._statueForestRight", "cards._statueForestRightDesc", sprItemStatueRight, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [30], undefined, undefined, undefined, [80]);
    global.monsters.statueForest = new c_monster("statueForest", "monster._statue", "monster._statueDesc", "MonsterStatueForest", UnknownEnum.Value_0, [[global.cards.statueForestLeft, global.cards.statueForestRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_5 = 5
}
