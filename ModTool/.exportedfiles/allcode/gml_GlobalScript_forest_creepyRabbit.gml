function forest_creepyRabbit()
{
    global.cards.creepyRabbitLeft = new cCards("cards._creepyRabbitLeft", "cards._creepyRabbitLeftDesc", sprItemCreepyRabbitLeft, UnknownEnum.Value_1, [global.effect.attack, global.effect.attack], [UnknownEnum.Value_6, UnknownEnum.Value_7], [5, 30]);
    global.cards.creepyRabbitRight = new cCards("cards._creepyRabbitRight", "cards._creepyRabbitRightDesc", sprItemCreepyRabbitRight, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_15], [15]);
    global.cards.creepyRabbitMushroom = new cCards("cards._creepyRabbitMushroom", "cards._creepyRabbitMushroomDesc", sprItemCreepyRabbitMushroom, UnknownEnum.Value_4, [global.effect.heal], [UnknownEnum.Value_17], [15]);
    global.monsters.creepyRabbit = new c_monster("creepyRabbit", "monster._creepyRabbit", "monster._creepyRabbitDesc", "MonsterCreepyRabbit", UnknownEnum.Value_0, [[global.cards.creepyRabbitLeft, global.cards.creepyRabbitRight]], [global.cards.creepyRabbitMushroom]);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_6 = 6,
    Value_7,
    Value_15 = 15,
    Value_17 = 17
}
