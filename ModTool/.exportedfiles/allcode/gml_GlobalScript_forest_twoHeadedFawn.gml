function forest_twoHeadedFawn()
{
    global.cards.twoHeadedFawnLeft = new cCards("cards._twoHeadedFawnLeft", "cards._twoHeadedFawnLeftDesc", sprItemTwoHeadedFawnLeft, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [15]);
    global.cards.twoHeadedFawnRight = new cCards("cards._twoHeadedFawnRight", "cards._twoHeadedFawnRightDesc", sprItemTwoHeadedFawnRight, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [30], undefined, undefined, undefined, [50]);
    global.cards.twoHeadedFawnMushroom = new cCards("cards._twoHeadedFawnMushroom", "cards._twoHeadedFawnMushroomDesc", sprItemTwoHeadedFawnMushroom, UnknownEnum.Value_4, [global.effect.attack], [UnknownEnum.Value_0], [50], undefined, undefined, undefined, [10]);
    global.monsters.twoHeadedFawn = new c_monster("twoHeadedFawn", "monster._twoHeadedFawn", "monster._twoHeadedFawnDesc", "MonsterFawn", UnknownEnum.Value_0, [[global.cards.twoHeadedFawnLeft, global.cards.twoHeadedFawnRight]], [global.cards.twoHeadedFawnMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4
}
