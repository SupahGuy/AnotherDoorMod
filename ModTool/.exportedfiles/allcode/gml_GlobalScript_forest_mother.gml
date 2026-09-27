function forest_mother()
{
    global.cards.motherLeft1 = new cCards("cards._motherLeft1", "cards._motherLeft1Desc", sprItemMother, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [5]);
    global.cards.motherRight1 = new cCards("cards._motherRight1", "cards._motherRight1Desc", sprItemMother, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_8], [30]);
    global.cards.motherLeft2 = new cCards("cards._motherLeft2", "cards._motherLeft2Desc", sprItemMother, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [[[15], [5, 30], [5, 5, 30], [5, 5, 5, 30]]], undefined, [UnknownEnum.Value_5]);
    global.cards.motherRight2 = new cCards("cards._motherRight2", "cards._motherRight2Desc", sprItemMother, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [[[15], [30, 5], [30, 5, 5], [30, 5, 5, 5]]], undefined, [UnknownEnum.Value_5]);
    global.cards.motherLeft3 = new cCards("cards._motherLeft3", "cards._motherLeft3Desc", sprItemMother, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [5], undefined, [UnknownEnum.Value_1]);
    global.cards.motherRight3 = new cCards("cards._motherRight3", "cards._motherRight3Desc", sprItemMother, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_7], [50], undefined, [UnknownEnum.Value_1]);
    global.cards.motherMushroom = new cCards("cards._motherMushroom", "cards._motherMushroomDesc", sprItemMotherMushroom, UnknownEnum.Value_4, [global.effect.attack], [UnknownEnum.Value_0], [1]);
    global.monsters.mother = new c_monster("mother", "monster._mother", "monster._motherDesc", "MonsterMother", UnknownEnum.Value_0, [[global.cards.motherLeft1, global.cards.motherRight1], [global.cards.motherLeft2, global.cards.motherRight2], [global.cards.motherLeft3, global.cards.motherRight3]], [global.cards.motherMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_5,
    Value_7 = 7,
    Value_8
}
