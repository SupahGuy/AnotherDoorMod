function monster_platonia()
{
    global.platoniaDefaultPrice = 0;
    global.cards.platonia = new cCards("cards._platonia", "cards._platoniaDesc", sprItemPlatonia, UnknownEnum.Value_8, [global.effect.gem], [UnknownEnum.Value_0], [global.platoniaDefaultPrice]);
    global.monsters.platonia = new c_monster("platonia", "monster._funfair", "monster._funfairDesc", "MonsterFunfair", UnknownEnum.Value_4, [[global.cards.platonia]], []);
}

enum UnknownEnum
{
    Value_0,
    Value_4 = 4,
    Value_8 = 8
}
