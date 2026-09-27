:[0]
b [2]

> gml_Script_forest_snail (locals=0, argc=0)
:[1]
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 30
conv.i.v
pushi.e 15
conv.i.v
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pushi.e 30
conv.i.v
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 15
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
pushref.i 16777587
push.s "cards._snailLeftDesc"@5862
conv.s.v
push.s "cards._snailLeft"@5863
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.snailLeft
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
pushi.e 15
conv.i.v
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pushi.e 1
conv.i.v
pushi.e 15
conv.i.v
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 15
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
pushref.i 16777589
push.s "cards._snailRightDesc"@5864
conv.s.v
push.s "cards._snailRight"@5865
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.snailRight
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 99
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pushi.e 99
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushi.e 99
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 99
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
pushref.i 16777588
push.s "cards._snailMushroomDesc"@5866
conv.s.v
push.s "cards._snailMushroom"@5867
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.snailMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.snailMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.snailRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.snailLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterSnail"@5868
conv.s.v
push.s "monster._snailDesc"@5869
conv.s.v
push.s "monster._snail"@5870
conv.s.v
push.s "snail"@5871
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.snail
exit.i

:[2]
push.i [function]gml_Script_forest_snail
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_snail
popz.v

:[end]