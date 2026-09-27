:[0]
b [2]

> gml_Script_forest_animalBinder (locals=0, argc=0)
:[1]
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 13
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777432
push.s "cards._animalBinderLeftDesc"@5496
conv.s.v
push.s "cards._animalBinderLeft"@5497
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.animalBinderLeft
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 12
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777434
push.s "cards._animalBinderRightDesc"@5498
conv.s.v
push.s "cards._animalBinderRight"@5499
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.animalBinderRight
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 8
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777433
push.s "cards._animalBinderMushroomDesc"@5500
conv.s.v
push.s "cards._animalBinderMushroom"@5501
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.animalBinderMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.animalBinderMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.animalBinderRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.animalBinderLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterAnimalBinder"@5502
conv.s.v
push.s "monster._animalBinderDesc"@5503
conv.s.v
push.s "monster._animalBinder"@5504
conv.s.v
push.s "animalBinder"@5505
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.animalBinder
exit.i

:[2]
push.i [function]gml_Script_forest_animalBinder
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_animalBinder
popz.v

:[end]