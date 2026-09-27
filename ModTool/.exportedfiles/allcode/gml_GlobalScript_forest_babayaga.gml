function forest_babayaga()
{
    global.cards.babayagaStop = new cCards("cards._babayagaStop", "cards._babayagaStopDesc", sprItemSacrificeStop, UnknownEnum.Value_6, [global.effect.gem], [UnknownEnum.Value_15], [20], [-1]);
    global.monsters.babayaga = new c_monster("babayaga", "monster._babayaga", "Desc Baba Yaga", "MonsterBabayaga", UnknownEnum.Value_5, [[global.cards.babayagaStop]], []);
}

enum UnknownEnum
{
    Value_5 = 5,
    Value_6,
    Value_15 = 15
}
