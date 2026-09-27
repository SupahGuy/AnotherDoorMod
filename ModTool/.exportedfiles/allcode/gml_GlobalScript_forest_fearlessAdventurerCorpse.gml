function forest_fearlessAdventurerCorpse()
{
    global.cards.fearlessAdventurerCorpseLeft = new cCards("cards._fearlessAdventurerCorpseLeft", "cards._fearlessAdventurerCorpseLeftDesc", sprItemPlaceholder, UnknownEnum.Value_1, [global.effect.poison], [UnknownEnum.Value_0], [-1]);
    global.cards.fearlessAdventurerCorpseRight = new cCards("cards._fearlessAdventurerCorpseRight", "cards._fearlessAdventurerCorpseRightDesc", sprItemPlaceholder, UnknownEnum.Value_1, [global.effect.poison], [UnknownEnum.Value_0], [-1]);
    global.cards.fearlessAdventurerCorpseMushroom = new cCards("cards._fearlessAdventurerCorpseMushroom", "cards._fearlessAdventurerCorpseMushroomDesc", sprItemPlaceholder, UnknownEnum.Value_4, [global.effect.poison], [UnknownEnum.Value_0], [-1]);
    global.monsters.fearlessAdventurerCorpse = new c_monster("fearlessadventurercorpse", "monster._fearlessAdventurerCorpse", "monster._fearlessAdventurerCorpseDesc", "MonsterFearlessAdventurerCorpse", [[global.cards.fearlessAdventurerCorpseLeft, global.cards.fearlessAdventurerCorpseRight]], [global.cards.fearlessAdventurerCorpseMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4
}
