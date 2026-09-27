function forest_unconsolableFawn()
{
    global.cards.unconsolableFawnLeft = new cCards("cards._unconsolableFawnLeft", "cards._unconsolableFawnLeftDesc", sprItemUnconsolableFawnLeft, UnknownEnum.Value_1, [global.effect.gem], [UnknownEnum.Value_7], [10]);
    global.cards.unconsolableFawnRight = new cCards("cards._unconsolableFawnRight", "cards._unconsolableFawnRightDesc", sprItemUnconsolableFawnRight, UnknownEnum.Value_1, [global.effect.gem], [UnknownEnum.Value_7], [20]);
    global.cards.unconsolableFawnMushroom = new cCards("cards._unconsolableFawnMushroom", "cards._unconsolableFawnMushroomDesc", sprItemUnconsolableFawnMushroom, UnknownEnum.Value_4, [global.effect.gem], [UnknownEnum.Value_6], [9]);
    global.monsters.unconsolableFawn = new c_monster("unconsolableFawn", "monster._unconsolableFawn", "monster._unconsolableFawnDesc", "MonsterFawnSad", UnknownEnum.Value_0, [[global.cards.unconsolableFawnLeft, global.cards.unconsolableFawnRight]], [global.cards.unconsolableFawnMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_6 = 6,
    Value_7
}
