function forest_squirrelKing()
{
    global.cards.squirrelKingLeft = new cCards("cards._squirrelKingLeft", "cards._squirrelKingLeftDesc", sprItemSquirrelKingLeft, UnknownEnum.Value_1, [global.effect.multiplyEffect], [UnknownEnum.Value_0], [2]);
    global.cards.squirrelKingRight = new cCards("cards._squirrelKingRight", "cards._squirrelKingRightDesc", sprItemSquirrelKingRight, UnknownEnum.Value_1, [global.effect.deleteRandomEffect], [UnknownEnum.Value_0], [1]);
    global.cards.squirrelKingMushroom = new cCards("cards._squirrelKingMushroom", "cards._squirrelKingMushroomDesc", sprItemSquirrelKingMushroom, UnknownEnum.Value_4, [global.effect.multiplyEffect], [UnknownEnum.Value_0], [4]);
    global.monsters.squirrelKing = new c_monster("squirrelKing", "monster._squirrelKing", "monster._squirrelKingDesc", "MonsterSquirrelKing", UnknownEnum.Value_0, [[global.cards.squirrelKingLeft, global.cards.squirrelKingRight]], [global.cards.squirrelKingMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4
}
