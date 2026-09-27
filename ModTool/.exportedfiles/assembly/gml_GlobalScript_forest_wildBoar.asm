:[0]
b [2]

> gml_Script_forest_wildBoar (locals=0, argc=0)
:[1]
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777440
push.s "cards._wildBoarLeftDesc"@5954
conv.s.v
push.s "cards._wildBoarLeft"@5955
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.wildBoarLeft
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777442
push.s "cards._wildBoarRightDesc"@5956
conv.s.v
push.s "cards._wildBoarRight"@5957
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.wildBoarRight
pushi.e 20
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777441
push.s "cards._wildBoarMushroomDesc"@5958
conv.s.v
push.s "cards._wildBoarMushroom"@5959
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.wildBoarMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.wildBoarMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.wildBoarRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.wildBoarLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterWildBoar"@5960
conv.s.v
push.s "monster._wildBoarDesc"@5961
conv.s.v
push.s "monster._wildBoar"@5962
conv.s.v
push.s "wildBoar"@5963
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.wildBoar
exit.i

:[2]
push.i [function]gml_Script_forest_wildBoar
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_wildBoar
popz.v

:[end]