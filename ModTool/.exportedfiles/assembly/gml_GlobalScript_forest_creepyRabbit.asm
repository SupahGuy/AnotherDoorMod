:[0]
b [2]

> gml_Script_forest_creepyRabbit (locals=0, argc=0)
:[1]
pushi.e 30
conv.i.v
pushi.e 5
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 7
conv.l.v
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=2)
push.l 1
conv.l.v
pushref.i 16777457
push.s "cards._creepyRabbitLeftDesc"@5527
conv.s.v
push.s "cards._creepyRabbitLeft"@5528
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.creepyRabbitLeft
pushi.e 15
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 15
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777459
push.s "cards._creepyRabbitRightDesc"@5529
conv.s.v
push.s "cards._creepyRabbitRight"@5530
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.creepyRabbitRight
pushi.e 15
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 17
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777458
push.s "cards._creepyRabbitMushroomDesc"@5531
conv.s.v
push.s "cards._creepyRabbitMushroom"@5532
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.creepyRabbitMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.creepyRabbitMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.creepyRabbitRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.creepyRabbitLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterCreepyRabbit"@5533
conv.s.v
push.s "monster._creepyRabbitDesc"@5534
conv.s.v
push.s "monster._creepyRabbit"@5535
conv.s.v
push.s "creepyRabbit"@5536
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.creepyRabbit
exit.i

:[2]
push.i [function]gml_Script_forest_creepyRabbit
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_creepyRabbit
popz.v

:[end]