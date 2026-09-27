function monster_blackMarket()
{
    global.cards.blackMarketGem = new cCards("cards._blackMarket", "cards._blackMarketDesc", sprItemFunfair3, UnknownEnum.Value_8, [global.effect.gem, global.effect.attack], [UnknownEnum.Value_0, UnknownEnum.Value_0], [25, 0]);
    global.monsters.blackMarket = new c_monster("blackMarket", "monster._blackMarket", "monster._blackMarketDesc", "MonsterBlackMarket", UnknownEnum.Value_9, [[global.cards.blackMarketGem]], []);
}

enum UnknownEnum
{
    Value_0,
    Value_8 = 8,
    Value_9
}
