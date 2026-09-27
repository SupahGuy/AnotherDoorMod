function forest_animalBinder()
{
    global.cards.animalBinderLeft = new cCards("cards._animalBinderLeft", "cards._animalBinderLeftDesc", sprItemAnimalBinderLeft, UnknownEnum.Value_1, [global.effect.poison], [UnknownEnum.Value_13], [-1], [2]);
    global.cards.animalBinderRight = new cCards("cards._animalBinderRight", "cards._animalBinderRightDesc", sprItemAnimalBinderRight, UnknownEnum.Value_1, [global.effect.poison], [UnknownEnum.Value_12], [-1], [2]);
    global.cards.animalBinderMushroom = new cCards("cards._animalBinderMushroom", "cards._animalBinderMushroomDesc", sprItemAnimalBinderMushroom, UnknownEnum.Value_4, [global.effect.poison], [UnknownEnum.Value_8], [-1], [2]);
    global.monsters.animalBinder = new c_monster("animalBinder", "monster._animalBinder", "monster._animalBinderDesc", "MonsterAnimalBinder", UnknownEnum.Value_0, [[global.cards.animalBinderLeft, global.cards.animalBinderRight]], [global.cards.animalBinderMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_8 = 8,
    Value_12 = 12,
    Value_13
}
