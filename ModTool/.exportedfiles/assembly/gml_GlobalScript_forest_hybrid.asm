:[0]
b [2]

> gml_Script_forest_hybrid (locals=0, argc=0)
:[1]
push.l 1
conv.l.v
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=3)
pushi.e 100
conv.i.v
pushi.e 10
conv.i.v
pushi.e 90
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushi.e -1
conv.i.v
pushi.e 10
conv.i.v
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=3)
push.l 0
conv.l.v
push.l 0
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=3)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tutorial
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hybridExchange
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeeh
call.i @@NewGMLArray@@(argc=3)
push.l 1
conv.l.v
pushref.i 16777494
push.s "cards._hybridLeftDesc"@5686
conv.s.v
push.s "cards._hybridLeft"@5687
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=13)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.hybridLeft
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.nothing
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777496
push.s "cards._hybridRightDesc"@5688
conv.s.v
push.s "cards._hybridRight"@5689
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.hybridRight
pushi.e 50
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 5
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
push.l 4
conv.l.v
pushref.i 16777495
push.s "cards._hybridMushroomDesc"@5691
conv.s.v
push.s "cards._hybridMushroom"@5692
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.hybridMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hybridMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hybridRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hybridLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterHybrid"@5693
conv.s.v
push.s "monster._hybridDesc"@5694
conv.s.v
push.s "monster._hybrid"@5695
conv.s.v
push.s "hybrid"@5696
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.hybrid
exit.i

:[2]
push.i [function]gml_Script_forest_hybrid
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_hybrid
popz.v

:[end]