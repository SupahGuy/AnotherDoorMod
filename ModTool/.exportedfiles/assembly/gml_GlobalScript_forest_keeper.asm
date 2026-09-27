:[0]
b [2]

> gml_Script_forest_keeper (locals=0, argc=0)
:[1]
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 20
conv.i.v
pushi.e 80
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 0
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=2)
push.l 1
conv.l.v
pushref.i 16777499
push.s "cards._keeperLeftDesc"@5699
conv.s.v
push.s "cards._keeperLeft"@5700
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=13)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.keeperLeft
push.l 7
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 5
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 0
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=2)
push.l 1
conv.l.v
pushref.i 16777501
push.s "cards._keeperRightDesc"@5701
conv.s.v
push.s "cards._keeperRight"@5702
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.keeperRight
pushi.e 1
conv.i.v
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 0
conv.l.v
push.l 0
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
pushref.i 16777500
push.s "cards._keeperMushroomDesc"@5703
conv.s.v
push.s "cards._keeperMushroom"@5704
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.keeperMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.keeperMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.keeperRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.keeperLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterKeeper"@5705
conv.s.v
push.s "monster._keeperDesc"@5706
conv.s.v
push.s "monster._keeper"@5707
conv.s.v
push.s "keeper"@5708
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.keeper
exit.i

:[2]
push.i [function]gml_Script_forest_keeper
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_keeper
popz.v

:[end]