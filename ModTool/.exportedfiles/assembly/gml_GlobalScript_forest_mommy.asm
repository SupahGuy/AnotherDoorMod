:[0]
b [2]

> gml_Script_forest_mommy (locals=0, argc=0)
:[1]
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777530
push.s "cards._mommyLeftDesc"@5737
conv.s.v
push.s "cards._mommyLeft"@5738
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.mommyLeft
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
push.v [stacktop]self.hazardousTransport
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777532
push.s "cards._mommyRightDesc"@5739
conv.s.v
push.s "cards._mommyRight"@5740
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.mommyRight
pushi.e 25
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
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
push.v [stacktop]self.hazardousTransport
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777531
push.s "cards._mommyMushroomDesc"@5741
conv.s.v
push.s "cards._mommyMushroom"@5742
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.mommyMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.mommyMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.mommyRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.mommyLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterSpider"@5743
conv.s.v
push.s "monster._mommyDesc"@5744
conv.s.v
push.s "monster._mommy"@5745
conv.s.v
push.s "mommy"@5312
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.mommy
exit.i

:[2]
push.i [function]gml_Script_forest_mommy
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_mommy
popz.v

:[end]