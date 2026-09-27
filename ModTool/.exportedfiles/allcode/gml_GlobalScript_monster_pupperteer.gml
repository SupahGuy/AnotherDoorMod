function monster_pupperteer()
{
    global.cards.pupperteerLeft = new cCards("cards._pupperteerLeft", "cards._pupperteerLeftDesc", sprItemPupperteerLeft, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_0], [4], undefined, [UnknownEnum.Value_17], undefined, [50]);
    global.cards.pupperteerRight = new cCards("cards._pupperteerRight", "cards._pupperteerRightDesc", sprItemPupperteerRight, UnknownEnum.Value_2, [global.effect.attack], [UnknownEnum.Value_8], [2], undefined, [UnknownEnum.Value_17]);
    global.monsters.pupperteer = new c_monster("pupperteer", "monster._pupperteer", "monster._pupperteerDesc", "MonsterPupperteer", UnknownEnum.Value_1, [[global.cards.pupperteerLeft, global.cards.pupperteerRight]]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_8 = 8,
    Value_17 = 17
}
