function forest_timeLostWatcher()
{
    global.cards.lostTimeWatcherLeft = new cCards("cards._lostTimeWatcherLeft", "cards._lostTimeWatcherLeftDesc", sprItemLostTimeWatcherLeft, UnknownEnum.Value_1, [global.effect.redPill], [UnknownEnum.Value_0], [10]);
    global.cards.lostTimeWatcherRight = new cCards("cards._lostTimeWatcherRight", "cards._lostTimeWatcherRightDesc", sprItemLostTimeWatcherRight, UnknownEnum.Value_1, [global.effect.convertHPRandomized], [UnknownEnum.Value_0], [[1, 100]], [-1], [UnknownEnum.Value_7]);
    global.cards.lostTimeWatcherMushroom = new cCards("cards._lostTimeWatcherMushroom", "cards._lostTimeWatcherMushroomDesc", sprItemLostTimeWatcherMushroom, UnknownEnum.Value_4, [global.effect.heal], [UnknownEnum.Value_6], [50]);
    global.monsters.lostTimeWatcher = new c_monster("lostTimeWatcher", "monster._lostTimeWatcher", "monster._lostTimeWatcherDesc", "MonsterLostTimeWatcher", UnknownEnum.Value_3, [[global.cards.lostTimeWatcherLeft, global.cards.lostTimeWatcherRight]], [global.cards.lostTimeWatcherMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_3 = 3,
    Value_4,
    Value_6 = 6,
    Value_7
}
