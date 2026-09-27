function forest_magicStump()
{
    global.cards.magicStumpLeft = new cCards("cards._magicStumpLeft", "cards._magicStumpLeftDesc", sprItemMagicStumpLeft, UnknownEnum.Value_1, [global.effect.heal], [UnknownEnum.Value_0], [15]);
    global.cards.magicStumpRight = new cCards("cards._magicStumpRight", "cards._magicStumpRightDesc", sprItemMagicStumpRight, UnknownEnum.Value_1, [global.effect.heal], [UnknownEnum.Value_6], [30]);
    global.cards.magicStumpMushroom = new cCards("cards._magicStumpMushroom", "cards._magicStumpMushroomDesc", sprItemMagicStumpMushroom, UnknownEnum.Value_4, [global.effect.heal], [UnknownEnum.Value_7], [30]);
    global.monsters.magicStump = new c_monster("magicStump", "monster._magicStump", "monster._magicStumpDesc", "MonsterMagicStump", UnknownEnum.Value_3, [[global.cards.magicStumpLeft, global.cards.magicStumpRight]], [global.cards.magicStumpMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_3 = 3,
    Value_4,
    Value_6 = 6,
    Value_7
}
