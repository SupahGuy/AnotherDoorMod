:[0]
b [2]

> gml_Script_forest_maybeSheep (locals=0, argc=0)
:[1]
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 30
conv.i.v
pushi.e 40
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 40
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushi.e 0
conv.i.v
pushi.e 40
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 20
conv.i.v
call.i @@NewGMLArray@@(argc=1)
call.i @@NewGMLArray@@(argc=4)
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
pushref.i 16777523
push.s "cards._maybeSheepLeftDesc"@5723
conv.s.v
push.s "cards._maybeSheepLeft"@5724
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.maybeSheepLeft
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
push.v [stacktop]self.attackMaybeSheep
call.i @@NewGMLArray@@(argc=2)
push.l 1
conv.l.v
pushref.i 16777525
push.s "cards._maybeSheepRightDesc"@5725
conv.s.v
push.s "cards._maybeSheepRight"@5726
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.maybeSheepRight
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pushi.e 0
conv.i.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 20
conv.i.v
call.i @@NewGMLArray@@(argc=1)
call.i @@NewGMLArray@@(argc=4)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777524
push.s "cards._maybeSheepMushroomDesc"@5727
conv.s.v
push.s "cards._maybeSheepMushroom"@5728
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.maybeSheepMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.maybeSheepMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.maybeSheepRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.maybeSheepLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterWolf"@5729
conv.s.v
push.s "monster._maybeSheepDesc"@5730
conv.s.v
push.s "monster._maybeSheep"@5731
conv.s.v
push.s "maybeSheep"@5732
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.maybeSheep
exit.i

:[2]
push.i [function]gml_Script_forest_maybeSheep
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_maybeSheep
popz.v

:[end]