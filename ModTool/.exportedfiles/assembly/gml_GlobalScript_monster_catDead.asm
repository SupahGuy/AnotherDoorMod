:[0]
b [2]

> gml_Script_monster_catDead (locals=0, argc=0)
:[1]
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 4
conv.l.v
push.l 3
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=2)
push.l 2
conv.l.v
pushref.i 16777450
push.s "cards._catDeadLeftDesc"@6950
conv.s.v
push.s "cards._catDeadLeft"@6951
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.catDeadLeft
pushi.e 20
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 8
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777451
push.s "cards._catDeadRightDesc"@6952
conv.s.v
push.s "cards._catDeadRight"@6953
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.catDeadRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.catDeadRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.catDeadLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterCatDead"@6954
conv.s.v
push.s "monster._catDeadDesc"@6955
conv.s.v
push.s "monster._catDead"@6956
conv.s.v
push.s "catDead"@6957
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.catDead
exit.i

:[2]
push.i [function]gml_Script_monster_catDead
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_catDead
popz.v

:[end]