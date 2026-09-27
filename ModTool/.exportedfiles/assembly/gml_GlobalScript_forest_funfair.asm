:[0]
b [2]

> gml_Script_forest_funfair (locals=0, argc=0)
:[1]
pushi.e 5
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=1)
push.l 5
conv.l.v
pushref.i 16777480
push.s "cards._funFairGemDesc"@5653
conv.s.v
push.s "cards._funFairGem"@5654
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.funFairPileOfGem
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=1)
push.l 5
conv.l.v
pushref.i 16777481
push.s "cards._funFairGemDesc"@5653
conv.s.v
push.s "cards._funFairGemPurse"@5655
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.funFairGemPurse
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=1)
push.l 5
conv.l.v
pushref.i 16777481
push.s "cards._funFairGemDesc"@5653
conv.s.v
push.s "cards._funFairGemPurse"@5655
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.funFairGemPurse2
pushi.e 25
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=1)
push.l 5
conv.l.v
pushref.i 16777482
push.s "cards._funFairGemDesc"@5653
conv.s.v
push.s "cards._funFairGemBag"@5656
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.funFairGemBag
call.i @@NewGMLArray@@(argc=0)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.funFairPileOfGem
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.funFairGemPurse2
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.funFairGemPurse
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.funFairGemBag
call.i @@NewGMLArray@@(argc=4)
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
push.s "MonsterFunfair"@5657
conv.s.v
push.s "monster._funfairDesc"@5658
conv.s.v
push.s "monster._funfair"@5659
conv.s.v
push.s "funfair"@5314
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.funfair
exit.i

:[2]
push.i [function]gml_Script_forest_funfair
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_funfair
popz.v

:[end]