:[0]
b [2]

> gml_Script_forest_hunter (locals=0, argc=0)
:[1]
pushi.e 25
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777491
push.s "cards._hunterLeftDesc"@5674
conv.s.v
push.s "cards._hunterLeft"@5675
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.hunterLeft
pushi.e 15
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 14
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777493
push.s "cards._hunterRightDesc"@5676
conv.s.v
push.s "cards._hunterRight"@5677
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.hunterRight
pushi.e 5
conv.i.v
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
pushref.i 16777492
push.s "cards._hunterMushroomDesc"@5678
conv.s.v
push.s "cards._hunterMushroom"@5679
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.hunterMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hunterMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hunterRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hunterLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterHunter"@5680
conv.s.v
push.s "monster._hunterDesc"@5681
conv.s.v
push.s "monster._hunter"@5682
conv.s.v
push.s "hunter"@5683
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.hunter
exit.i

:[2]
push.i [function]gml_Script_forest_hunter
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_hunter
popz.v

:[end]