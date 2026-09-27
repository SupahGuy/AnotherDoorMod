:[0]
b [2]

> gml_Script_monster_platonia (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i global.platoniaDefaultPrice
pushglb.v global.platoniaDefaultPrice
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=1)
push.l 8
conv.l.v
pushref.i 16777555
push.s "cards._platoniaDesc"@7135
conv.s.v
push.s "cards._platonia"@7136
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.platonia
call.i @@NewGMLArray@@(argc=0)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.platonia
call.i @@NewGMLArray@@(argc=1)
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
push.s "MonsterFunfair"@5657
conv.s.v
push.s "monster._funfairDesc"@5658
conv.s.v
push.s "monster._funfair"@5659
conv.s.v
push.s "platonia"@5317
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.platonia
exit.i

:[2]
push.i [function]gml_Script_monster_platonia
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_platonia
popz.v

:[end]