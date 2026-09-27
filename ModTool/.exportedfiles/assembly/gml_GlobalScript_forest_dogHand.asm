:[0]
b [2]

> gml_Script_forest_dogHand (locals=0, argc=0)
:[1]
pushi.e 15
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 13
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777462
push.s "cards._dogHandLeftDesc"@5539
conv.s.v
push.s "cards._dogHandLeft"@5540
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.dogHandLeft
pushi.e 15
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 12
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777464
push.s "cards._dogHandRightDesc"@5541
conv.s.v
push.s "cards._dogHandRight"@5542
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.dogHandRight
pushi.e 15
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777463
push.s "cards._dogHandMushroomDesc"@5543
conv.s.v
push.s "cards._dogHandMushroom"@5544
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.dogHandMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dogHandMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dogHandRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dogHandLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 3
conv.l.v
push.s "MonsterDogHand"@5545
conv.s.v
push.s "monster._dogHandDesc"@5546
conv.s.v
push.s "monster._dogHand"@5547
conv.s.v
push.s "dogHand"@5548
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.dogHand
exit.i

:[2]
push.i [function]gml_Script_forest_dogHand
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_dogHand
popz.v

:[end]