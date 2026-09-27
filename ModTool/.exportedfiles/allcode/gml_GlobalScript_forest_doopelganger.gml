function forest_doopelganger()
{
    global.cards.doopelgangerLeft = new cCards("cards._doopelgangerLeft", "cards._doopelgangerLeftDesc", sprItemPlaceholder, UnknownEnum.Value_1, [global.effect.poison], [UnknownEnum.Value_0], [-1], [3]);
    global.cards.doopelgangerRight = new cCards("cards._doopelgangerRight", "cards._doopelgangerRightDesc", sprItemPlaceholder, UnknownEnum.Value_1, [global.effect.poison], [UnknownEnum.Value_0], [-1], [1]);
    global.cards.doopelgangerMushroom = new cCards("cards._doopelgangerMushroom", "cards._doopelgangerMushroomDesc", sprItemPlaceholder, UnknownEnum.Value_4, [global.effect.poison], [UnknownEnum.Value_0], [1], [1]);
    global.monsters.doopelganger = new c_monster("doopelganger", "monster._doopelganger", "monster._doopelgangerDesc", "MonsterDoopelganger", [[global.cards.doopelgangerLeft, global.cards.doopelgangerRight]], [global.cards.doopelgangerMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4
}
