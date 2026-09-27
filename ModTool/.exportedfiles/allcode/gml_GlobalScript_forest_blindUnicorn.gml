function forest_blindUnicorn()
{
    global.cards.unicornLeft = new cCards("cards._unicornLeft", "cards._unicornLeftDesc", sprItemUnicornLeft, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [15]);
    global.cards.unicornRight = new cCards("cards._unicornRight", "cards._unicornRightDesc", sprItemUnicornRight, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_7], [75]);
    global.cards.unicornMushroom = new cCards("cards._unicornMushroom", "cards._unicornMushroomDesc", sprItemUnicornMushroom, UnknownEnum.Value_4, [global.effect.heal, global.effect.trapped], [UnknownEnum.Value_0, UnknownEnum.Value_0], [25, -1], [-1, 1]);
    global.monsters.unicorn = new c_monster("unicorn", "monster._unicorn", "Desc uni", "MonsterUnicorn", UnknownEnum.Value_0, [[global.cards.unicornLeft, global.cards.unicornRight]], [global.cards.unicornMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_7 = 7
}
