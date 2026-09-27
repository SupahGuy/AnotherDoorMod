function monster_taxCollector()
{
    global.cards.taxCollectorLeft = new cCards("cards._taxCollectorLeft", "cards._taxCollectorLeftDesc", sprItemTaxCollectorLeft, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_0], [20]);
    global.monsters.taxCollector = new c_monster("taxCollector", "monster._taxCollector", "monster._taxCollectorDesc", "MonsterTaxCollector", UnknownEnum.Value_8, [[global.cards.taxCollectorLeft]], [], _monster_script_end);
}

enum UnknownEnum
{
    Value_0,
    Value_2 = 2,
    Value_8 = 8
}
