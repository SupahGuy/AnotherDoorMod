:[0]
b [2]

> gml_Script_forest_unconsolableFawn (locals=0, argc=0)
:[1]
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777610
push.s "cards._unconsolableFawnLeftDesc"@5931
conv.s.v
push.s "cards._unconsolableFawnLeft"@5932
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.unconsolableFawnLeft
pushi.e 20
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777612
push.s "cards._unconsolableFawnRightDesc"@5933
conv.s.v
push.s "cards._unconsolableFawnRight"@5934
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.unconsolableFawnRight
pushi.e 9
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777611
push.s "cards._unconsolableFawnMushroomDesc"@5935
conv.s.v
push.s "cards._unconsolableFawnMushroom"@5936
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.unconsolableFawnMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.unconsolableFawnMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.unconsolableFawnRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.unconsolableFawnLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterFawnSad"@5937
conv.s.v
push.s "monster._unconsolableFawnDesc"@5938
conv.s.v
push.s "monster._unconsolableFawn"@5939
conv.s.v
push.s "unconsolableFawn"@5940
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.unconsolableFawn
exit.i

:[2]
push.i [function]gml_Script_forest_unconsolableFawn
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_unconsolableFawn
popz.v

:[end]