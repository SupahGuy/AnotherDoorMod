:[0]
b [2]

> gml_Script_forest_squirrelKing (locals=0, argc=0)
:[1]
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.multiplyEffect
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777593
push.s "cards._squirrelKingLeftDesc"@5874
conv.s.v
push.s "cards._squirrelKingLeft"@5875
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.squirrelKingLeft
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.deleteRandomEffect
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777595
push.s "cards._squirrelKingRightDesc"@5876
conv.s.v
push.s "cards._squirrelKingRight"@5877
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.squirrelKingRight
pushi.e 4
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.multiplyEffect
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777594
push.s "cards._squirrelKingMushroomDesc"@5878
conv.s.v
push.s "cards._squirrelKingMushroom"@5879
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.squirrelKingMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.squirrelKingMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.squirrelKingRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.squirrelKingLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterSquirrelKing"@5880
conv.s.v
push.s "monster._squirrelKingDesc"@5881
conv.s.v
push.s "monster._squirrelKing"@5882
conv.s.v
push.s "squirrelKing"@5883
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.squirrelKing
exit.i

:[2]
push.i [function]gml_Script_forest_squirrelKing
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_squirrelKing
popz.v

:[end]