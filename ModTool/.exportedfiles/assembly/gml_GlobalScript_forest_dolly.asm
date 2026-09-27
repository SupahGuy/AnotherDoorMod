:[0]
b [2]

> gml_Script_forest_dolly (locals=0, argc=0)
:[1]
push.l 2
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
call.i @@NewGMLArray@@(argc=4)
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
pushref.i 16777465
push.s "cards._dollyLeftDesc"@5551
conv.s.v
push.s "cards._dollyLeft"@5552
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=11)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.dollyLeft
push.l 2
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
call.i @@NewGMLArray@@(argc=4)
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
pushref.i 16777467
push.s "cards._dollyRightDesc"@5553
conv.s.v
push.s "cards._dollyRight"@5554
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=11)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.dollyRight
pushi.e 4
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
pushref.i 16777466
push.s "cards._dollyMushroomDesc"@5555
conv.s.v
push.s "cards._dollyMushroom"@5556
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.dollyMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dollyMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dollyRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dollyLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterDolly"@5557
conv.s.v
push.s "monster._dollyDesc"@5558
conv.s.v
push.s "monster._dolly"@5559
conv.s.v
push.s "dolly"@5560
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.dolly
exit.i

:[2]
push.i [function]gml_Script_forest_dolly
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_dolly
popz.v

:[end]