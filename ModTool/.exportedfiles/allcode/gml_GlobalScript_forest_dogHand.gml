function forest_dogHand()
{
    global.cards.dogHandLeft = new cCards("cards._dogHandLeft", "cards._dogHandLeftDesc", sprItemDogHandLeft, UnknownEnum.Value_1, [global.effect.heal], [UnknownEnum.Value_13], [15]);
    global.cards.dogHandRight = new cCards("cards._dogHandRight", "cards._dogHandRightDesc", sprItemDogHandRight, UnknownEnum.Value_1, [global.effect.heal], [UnknownEnum.Value_12], [15]);
    global.cards.dogHandMushroom = new cCards("cards._dogHandMushroom", "cards._dogHandMushroomDesc", sprItemDogHandMushroom, UnknownEnum.Value_4, [global.effect.heal], [UnknownEnum.Value_0], [15]);
    global.monsters.dogHand = new c_monster("dogHand", "monster._dogHand", "monster._dogHandDesc", "MonsterDogHand", UnknownEnum.Value_3, [[global.cards.dogHandLeft, global.cards.dogHandRight]], [global.cards.dogHandMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_3 = 3,
    Value_4,
    Value_12 = 12,
    Value_13
}
