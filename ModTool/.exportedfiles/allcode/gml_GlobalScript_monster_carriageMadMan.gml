function monster_carriageMadMan()
{
    global.cards.carriageMadManLeft = new cCards("cards._carriageMadManLeft", "cards._carriageMadManLeftDesc", sprItemCarriageMadManLeft, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_18], [10]);
    global.cards.carriageMadManRight = new cCards("cards._carriageMadManRight", "cards._carriageMadManRightDesc", sprItemCarriageMadManRight, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_18], [30]);
    global.monsters.carriageMadMan = new c_monster("carriageMadMan", "monster._carriageMadMan", "monster._carriageMadManDesc", "MonsterCarriageMadMan", UnknownEnum.Value_1, [[global.cards.carriageMadManLeft, global.cards.carriageMadManRight]]);
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_2,
    Value_18 = 18
}
