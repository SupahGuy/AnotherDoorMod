:[0]
b [2]

> gml_Script_forest_fountainSorrow (locals=0, argc=0)
:[1]
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777472
push.s "cards._fountainSorrowLeftDesc"@5620
conv.s.v
push.s "cards._fountainSorrowLeft"@5621
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.fountainSorrowLeft
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.removeEffect
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777473
push.s "cards._fountainSorrowMushroomDesc"@5622
conv.s.v
push.s "cards._fountainSorrowMushroom"@5623
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.fountainSorrowMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.fountainSorrowMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.fountainSorrowLeft
call.i @@NewGMLArray@@(argc=1)
call.i @@NewGMLArray@@(argc=1)
push.l 3
conv.l.v
push.s "UtilityFountain"@5625
conv.s.v
push.s "monster._fountainSorrowDesc"@5626
conv.s.v
push.s "monster._fountainSorrow"@5627
conv.s.v
push.s "fountainSorrow"@5226
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.fountainSorrow
exit.i

:[2]
push.i [function]gml_Script_forest_fountainSorrow
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_fountainSorrow
popz.v

:[end]