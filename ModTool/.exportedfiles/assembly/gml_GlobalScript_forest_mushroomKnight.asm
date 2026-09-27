:[0]
b [2]

> gml_Script_forest_mushroomKnight (locals=0, argc=0)
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
push.v [stacktop]self.badTrip
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777539
push.s "cards._mushroomKnightLeftDesc"@5767
conv.s.v
push.s "cards._mushroomKnightLeft"@5768
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.mushroomKnightLeft
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.nothing
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777541
push.s "cards._mushroomKnightRightDesc"@5769
conv.s.v
push.s "cards._mushroomKnightRight"@5770
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.mushroomKnightRight
pushi.e 2
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
push.v [stacktop]self.badTrip
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777540
push.s "cards._mushroomKnightMushroomDesc"@5771
conv.s.v
push.s "cards._mushroomKnightMushroom"@5772
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.mushroomKnightMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.mushroomKnightMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.mushroomKnightRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.mushroomKnightLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterMushroomKnight"@5773
conv.s.v
push.s "monster._mushroomKnightDesc"@5774
conv.s.v
push.s "monster._mushroomKnight"@5775
conv.s.v
push.s "mushroomKnight"@5776
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.mushroomKnight
exit.i

:[2]
push.i [function]gml_Script_forest_mushroomKnight
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_mushroomKnight
popz.v

:[end]