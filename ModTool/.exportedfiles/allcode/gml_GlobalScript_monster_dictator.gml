function monster_dictator()
{
    global.cards.dictatorLeft = new cCards("cards._dictatorLeft", "cards._dictatorLeftDesc", sprItemDictatorLeft, UnknownEnum.Value_2, [global.effect.effectToGem, global.effect.loyalty], [UnknownEnum.Value_0, UnknownEnum.Value_0], [4, -1], undefined, undefined, undefined, undefined, undefined, [global.effect.loyalty, global.effect.loyalty]);
    global.cards.dictatorRight = new cCards("cards._dictatorRight", "cards._dictatorRightDesc", sprItemDictatorRight, UnknownEnum.Value_2, [global.effect.effectToGem, global.effect.loyalty], [UnknownEnum.Value_6, UnknownEnum.Value_0], [8, -1], undefined, undefined, undefined, undefined, undefined, [global.effect.loyalty, global.effect.loyalty]);
    global.monsters.dictator = new c_monster("dictator", "monster._dictator", "monster._dictatorDesc", "MonsterDictator", UnknownEnum.Value_1, [[global.cards.dictatorLeft, global.cards.dictatorRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_6 = 6
}
