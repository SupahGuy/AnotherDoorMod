:[0]
b [2]

> gml_Script_forest_frog (locals=0, argc=0)
:[1]
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777474
push.s "cards._frogLeftDesc"@5641
conv.s.v
push.s "cards._frogLeft"@5642
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.frogLeft
pushi.e 3
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 9
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777476
push.s "cards._frogRightDesc"@5643
conv.s.v
push.s "cards._frogRight"@5644
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.frogRight
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.allPoisonToGem
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777475
push.s "cards._frogMushroomDesc"@5645
conv.s.v
push.s "cards._frogMushroom"@5646
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.frogMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.frogMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.frogRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.frogLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterFrog"@5647
conv.s.v
push.s "monster._frogDesc"@5648
conv.s.v
push.s "monster._frog"@5649
conv.s.v
push.s "frog"@5650
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.frog
exit.i

:[2]
push.i [function]gml_Script_forest_frog
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_frog
popz.v

:[end]