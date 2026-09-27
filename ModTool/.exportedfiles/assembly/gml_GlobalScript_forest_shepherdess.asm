:[0]
b [2]

> gml_Script_forest_shepherdess (locals=0, argc=0)
:[1]
pushi.e -1
conv.i.v
pushi.e 5
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 23
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeeh
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeehToHeal
call.i @@NewGMLArray@@(argc=2)
push.l 1
conv.l.v
pushref.i 16777576
push.s "cards._shepherdessLeftDesc"@5816
conv.s.v
push.s "cards._shepherdessLeft"@5817
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.shepherdessLeft
pushi.e -1
conv.i.v
pushi.e 5
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 23
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeeh
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeehToGem
call.i @@NewGMLArray@@(argc=2)
push.l 1
conv.l.v
pushref.i 16777578
push.s "cards._shepherdessRightDesc"@5818
conv.s.v
push.s "cards._shepherdessRight"@5819
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.shepherdessRight
push.l 7
conv.l.v
push.l 0
conv.l.v
push.l 7
conv.l.v
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=4)
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e -1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=4)
push.l 23
conv.l.v
push.l 0
conv.l.v
push.l 0
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=4)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeeh
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeehToGem
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeehToHeal
call.i @@NewGMLArray@@(argc=3)
push.l 4
conv.l.v
pushref.i 16777577
push.s "cards._shepherdessMushroomDesc"@5820
conv.s.v
push.s "cards._shepherdessMushroom"@5821
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.shepherdessMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shepherdessMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shepherdessRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shepherdessLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterShepherdess"@5822
conv.s.v
push.s "monster._shepherdessDesc"@5823
conv.s.v
push.s "monster._shepherdess"@5824
conv.s.v
push.s "shepherdess"@5825
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.shepherdess
exit.i

:[2]
push.i [function]gml_Script_forest_shepherdess
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_shepherdess
popz.v

:[end]