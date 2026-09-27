:[0]
b [2]

> gml_Script_forest_magicStump (locals=0, argc=0)
:[1]
pushi.e 15
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
pushref.i 16777520
push.s "cards._magicStumpLeftDesc"@5711
conv.s.v
push.s "cards._magicStumpLeft"@5712
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.magicStumpLeft
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777522
push.s "cards._magicStumpRightDesc"@5713
conv.s.v
push.s "cards._magicStumpRight"@5714
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.magicStumpRight
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777521
push.s "cards._magicStumpMushroomDesc"@5715
conv.s.v
push.s "cards._magicStumpMushroom"@5716
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.magicStumpMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.magicStumpMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.magicStumpRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.magicStumpLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 3
conv.l.v
push.s "MonsterMagicStump"@5717
conv.s.v
push.s "monster._magicStumpDesc"@5718
conv.s.v
push.s "monster._magicStump"@5719
conv.s.v
push.s "magicStump"@5720
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.magicStump
exit.i

:[2]
push.i [function]gml_Script_forest_magicStump
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_magicStump
popz.v

:[end]