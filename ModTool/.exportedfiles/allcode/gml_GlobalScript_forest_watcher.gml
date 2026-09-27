function forest_watcher()
{
    global.cards.watcherLeft = new cCards("cards._watcherLeft", "cards._watcherLeftDesc", sprItemWatcherLeft, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [10]);
    global.cards.watcherRight = new cCards("cards._watcherRight", "cards._watcherRightDesc", sprItemWatcherRight, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_8], [25]);
    global.cards.watcherMushroom = new cCards("cards._watcherMushroom", "cards._watcherMushroomDesc", sprItemWatcherMushroom, UnknownEnum.Value_4, [global.effect.heal], [UnknownEnum.Value_0], [25]);
    global.monsters.watcher = new c_monster("watcher", "monster._watcher", "monster._watcherDesc", "MonsterAxolotl", UnknownEnum.Value_0, [[global.cards.watcherLeft, global.cards.watcherRight]], [global.cards.watcherMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_8 = 8
}
