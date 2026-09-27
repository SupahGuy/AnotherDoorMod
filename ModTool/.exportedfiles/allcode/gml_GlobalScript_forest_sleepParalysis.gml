function forest_sleepParalysis()
{
    global.cards.sleepParalysisLeft = new cCards("cards._sleepParalysisLeft", "cards._sleepParalysisLeftDesc", sprItemSleepParalysisLeft, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [10], undefined, undefined, undefined, [90]);
    global.cards.sleepParalysisRight = new cCards("cards._sleepParalysisRight", "cards._sleepParalysisRightDesc", sprItemSleepParalysisRight, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [90], undefined, undefined, undefined, [10]);
    global.cards.sleepParalysisMushroom = new cCards("cards._sleepParalysisMushroom", "cards._sleepParalysisMushroomDesc", sprItemSleepParalysisMushroom, UnknownEnum.Value_4, [global.effect.attack], [UnknownEnum.Value_0], [100], undefined, undefined, undefined, [1]);
    global.monsters.sleepParalysis = new c_monster("sleepParalysis", "monster._sleepParalysis", "monster._sleepParalysisDesc", "MonsterOwl", UnknownEnum.Value_0, [[global.cards.sleepParalysisLeft, global.cards.sleepParalysisRight]], [global.cards.sleepParalysisMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4
}
