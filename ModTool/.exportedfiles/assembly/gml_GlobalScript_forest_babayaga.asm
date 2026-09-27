:[0]
b [2]

> gml_Script_forest_babayaga (locals=0, argc=0)
:[1]
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e 20
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 15
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=1)
push.l 6
conv.l.v
pushref.i 16777570
push.s "cards._babayagaStopDesc"@5508
conv.s.v
push.s "cards._babayagaStop"@5509
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.babayagaStop
call.i @@NewGMLArray@@(argc=0)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.babayagaStop
call.i @@NewGMLArray@@(argc=1)
call.i @@NewGMLArray@@(argc=1)
push.l 5
conv.l.v
push.s "MonsterBabayaga"@5510
conv.s.v
push.s "Desc Baba Yaga"@5511
conv.s.v
push.s "monster._babayaga"@5512
conv.s.v
push.s "babayaga"@5315
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.babayaga
exit.i

:[2]
push.i [function]gml_Script_forest_babayaga
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_babayaga
popz.v

:[end]