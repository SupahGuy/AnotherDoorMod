:[0]
b [2]

> gml_Script_forest_forgottenSlime (locals=0, argc=0)
:[1]
pushi.e 20
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 13
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777584
push.s "cards._slimeLeftDesc"@5608
conv.s.v
push.s "cards._slimeLeft"@5609
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.slimeLeft
pushi.e 20
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 12
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777586
push.s "cards._slimeRightDesc"@5610
conv.s.v
push.s "cards._slimeRight"@5611
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.slimeRight
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 7
conv.l.v
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=2)
push.l 4
conv.l.v
pushref.i 16777585
push.s "cards._slimeMushroomDesc"@5612
conv.s.v
push.s "cards._slimeMushroom"@5613
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.slimeMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.slimeMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.slimeRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.slimeLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterSlime"@5614
conv.s.v
push.s "monster._forgottenSlimeDesc"@5615
conv.s.v
push.s "monster._forgottenSlime"@5616
conv.s.v
push.s "forgottenSlime"@5617
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.forgottenSlime
exit.i

:[2]
push.i [function]gml_Script_forest_forgottenSlime
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_forgottenSlime
popz.v

:[end]