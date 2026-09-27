:[0]
b [2]

> gml_Script_forest_fountainSorrowEmpty (locals=0, argc=0)
:[1]
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 25
conv.i.v
pushi.e 5
conv.i.v
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777472
push.s "cards._fountainSorrowEmptyLeftDesc"@5630
conv.s.v
push.s "cards._fountainSorrowEmptyLeft"@5631
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.fountainSorrowEmptyLeft
push.l 8
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.fountainFilled
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777471
push.s "cards._fountainSorrowEmptyRightDesc"@5632
conv.s.v
push.s "cards._fountainSorrowEmptyRight"@5633
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.fountainSorrowEmptyRight
pushi.e 50
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.removeEffect
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777473
push.s "cards._fountainSorrowEmptyMushroomDesc"@5635
conv.s.v
push.s "cards._fountainSorrowEmptyMushroom"@5636
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.fountainSorrowEmptyMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.fountainSorrowEmptyMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.fountainSorrowEmptyRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.fountainSorrowEmptyLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 3
conv.l.v
push.s "UtilityFountainEmpty"@5637
conv.s.v
push.s "monster._fountainSorrowDesc"@5626
conv.s.v
push.s "monster._fountainSorrow"@5627
conv.s.v
push.s "fountainSorrowEmpty"@5638
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.fountainSorrowEmpty
exit.i

:[2]
push.i [function]gml_Script_forest_fountainSorrowEmpty
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_fountainSorrowEmpty
popz.v

:[end]