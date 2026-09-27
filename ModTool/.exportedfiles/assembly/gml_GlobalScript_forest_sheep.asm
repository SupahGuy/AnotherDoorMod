:[0]
b [2]

> gml_Script_forest_sheep (locals=0, argc=0)
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
push.v [stacktop]self.beeeh
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777573
push.s "cards._sheepLeftDesc"@5804
conv.s.v
push.s "cards._sheepLeft"@5805
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.sheepLeft
pushi.e 5
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777575
push.s "cards._sheepRightDesc"@5806
conv.s.v
push.s "cards._sheepRight"@5807
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.sheepRight
pushi.e 4
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeeh
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777574
push.s "cards._sheepMushroomDesc"@5808
conv.s.v
push.s "cards._sheepMushroom"@5809
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.sheepMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sheepMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sheepRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sheepLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterSheep"@5810
conv.s.v
push.s "monster._sheepDesc"@5811
conv.s.v
push.s "monster._sheep"@5812
conv.s.v
push.s "sheep"@5813
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.sheep
exit.i

:[2]
push.i [function]gml_Script_forest_sheep
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_sheep
popz.v

:[end]