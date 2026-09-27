function forest_oracle()
{
    global.cards.oracleLeft = new cCards("cards._oracleLeft", "cards._oracleLeftDesc", sprItemOracleLeft, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_9], [10]);
    global.cards.oracleRight = new cCards("cards._oracleRight", "cards._oracleRightDesc", sprItemOracleRight, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_8], [25]);
    global.cards.oracleMushroom = new cCards("cards._oracleMushroom", "cards._oracleMushroomDesc", sprItemOracleMushroom, UnknownEnum.Value_4, [global.effect.oracleBlessing], [UnknownEnum.Value_0], [-1], [1]);
    global.monsters.oracle = new c_monster("oracle", "monster._oracle", "monster._oracleDesc", "MonsterOracle", UnknownEnum.Value_0, [[global.cards.oracleLeft, global.cards.oracleRight]], [global.cards.oracleMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_8 = 8,
    Value_9
}
