function monster_operaGhost()
{
    global.cards.operaGhostLeft = new cCards("cards._operaGhostLeft", "cards._operaGhostLeftDesc", sprItemOperaGhostLeft, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_0], [1], undefined, [UnknownEnum.Value_10]);
    global.cards.operaGhostRight = new cCards("cards._operaGhostRight", "cards._operaGhostRightDesc", sprItemOperaGhostRight, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_7], [2], undefined, [UnknownEnum.Value_10]);
    global.monsters.operaGhost = new c_monster("operaGhost", "monster._operaGhost", "monster._operaGhostDesc", "MonsterOperaGhost", UnknownEnum.Value_1, [[global.cards.operaGhostLeft, global.cards.operaGhostRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_7 = 7,
    Value_10 = 10
}
