:[0]
b [2]

> gml_Script_forest_ratten (locals=0, argc=0)
:[1]
push.d 33.333
conv.d.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 3
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
pushref.i 16777564
push.s "cards._rattenLeftDesc"@5791
conv.s.v
push.s "cards._rattenLeft"@5792
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.rattenLeft
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
pushref.i 16777566
push.s "cards._rattenRightDesc"@5793
conv.s.v
push.s "cards._rattenRight"@5794
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.rattenRight
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
push.v [stacktop]self.antidote
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777565
push.s "cards._rattenMushroomDesc"@5795
conv.s.v
push.s "cards._rattenMushroom"@5796
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.rattenMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.rattenMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.rattenRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.rattenLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterRat"@5798
conv.s.v
push.s "monster._rattenDesc"@5799
conv.s.v
push.s "monster._ratten"@5800
conv.s.v
push.s "ratten"@5801
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.ratten
exit.i

:[2]
push.i [function]gml_Script_forest_ratten
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_ratten
popz.v

:[end]