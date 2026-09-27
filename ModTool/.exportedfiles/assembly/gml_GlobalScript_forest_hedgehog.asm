:[0]
b [2]

> gml_Script_forest_hedgehog (locals=0, argc=0)
:[1]
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777487
push.s "cards._hedgehogLeftDesc"@5662
conv.s.v
push.s "cards._hedgehogLeft"@5663
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.hedgehogLeft
pushi.e 15
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777489
push.s "cards._hedgehogRightDesc"@5664
conv.s.v
push.s "cards._hedgehogRight"@5665
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.hedgehogRight
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777488
push.s "cards._hedgehogMushroomDesc"@5666
conv.s.v
push.s "cards._hedgehogMushroom"@5667
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.hedgehogMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hedgehogMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hedgehogRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hedgehogLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterHedgehog"@5668
conv.s.v
push.s "monster._hedgehogDesc"@5669
conv.s.v
push.s "monster._hedgehog"@5670
conv.s.v
push.s "hedgehog"@5671
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.hedgehog
exit.i

:[2]
push.i [function]gml_Script_forest_hedgehog
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_hedgehog
popz.v

:[end]