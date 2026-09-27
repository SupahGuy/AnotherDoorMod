:[0]
b [2]

> gml_Script_monster_catAlive (locals=0, argc=0)
:[1]
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 2
conv.l.v
push.l 1
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
pushref.i 16777447
push.s "cards._catAliveLeftDesc"@6940
conv.s.v
push.s "cards._catAliveLeft"@6941
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.catAliveLeft
pushi.e 20
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777449
push.s "cards._catAliveRightDesc"@6942
conv.s.v
push.s "cards._catAliveRight"@6943
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.catAliveRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.catAliveRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.catAliveLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterCatAlive"@6944
conv.s.v
push.s "monster._catAliveDesc"@6945
conv.s.v
push.s "monster._catAlive"@6946
conv.s.v
push.s "catAlive"@6947
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.catAlive
exit.i

:[2]
push.i [function]gml_Script_monster_catAlive
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_catAlive
popz.v

:[end]