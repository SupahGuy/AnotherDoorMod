function forest_funfair()
{
    global.cards.funFairPileOfGem = new cCards("cards._funFairGem", "cards._funFairGemDesc", sprItemFunfair2, UnknownEnum.Value_5, [global.effect.gem], [UnknownEnum.Value_6], [5]);
    global.cards.funFairGemPurse = new cCards("cards._funFairGemPurse", "cards._funFairGemDesc", sprItemFunfair3, UnknownEnum.Value_5, [global.effect.gem], [UnknownEnum.Value_6], [10]);
    global.cards.funFairGemPurse2 = new cCards("cards._funFairGemPurse", "cards._funFairGemDesc", sprItemFunfair3, UnknownEnum.Value_5, [global.effect.gem], [UnknownEnum.Value_6], [10]);
    global.cards.funFairGemBag = new cCards("cards._funFairGemBag", "cards._funFairGemDesc", sprItemFunfair4, UnknownEnum.Value_5, [global.effect.gem], [UnknownEnum.Value_6], [25]);
    global.monsters.funfair = new c_monster("funfair", "monster._funfair", "monster._funfairDesc", "MonsterFunfair", UnknownEnum.Value_4, [[global.cards.funFairGemBag, global.cards.funFairGemPurse, global.cards.funFairGemPurse2, global.cards.funFairPileOfGem]], []);
}

enum UnknownEnum
{
    Value_4 = 4,
    Value_5,
    Value_6
}
