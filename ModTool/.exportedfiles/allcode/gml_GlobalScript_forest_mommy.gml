function forest_mommy()
{
    global.cards.mommyLeft = new cCards("cards._mommyLeft", "cards._mommyLeftDesc", sprItemMommyLeft, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [30]);
    global.cards.mommyRight = new cCards("cards._mommyRight", "cards._mommyRightDesc", sprItemMommyRight, UnknownEnum.Value_1, [global.effect.hazardousTransport], [UnknownEnum.Value_0], [-1], [1]);
    global.cards.mommyMushroom = new cCards("cards._mommyMushroom", "cards._mommyMushroomDesc", sprItemMommyMushroom, UnknownEnum.Value_4, [global.effect.hazardousTransport], [UnknownEnum.Value_0], [-1], [1], undefined, undefined, [25]);
    global.monsters.mommy = new c_monster("mommy", "monster._mommy", "monster._mommyDesc", "MonsterSpider", UnknownEnum.Value_0, [[global.cards.mommyLeft, global.cards.mommyRight]], [global.cards.mommyMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4
}
