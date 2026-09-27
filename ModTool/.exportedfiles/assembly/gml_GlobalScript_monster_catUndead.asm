:[0]
b [2]

> gml_Script_monster_catUndead (locals=0, argc=0)
:[1]
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.aliveBox
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777452
push.s "cards._catUndeadLeftDesc"@6960
conv.s.v
push.s "cards._catUndeadLeft"@6961
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.catUndeadLeft
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.deadBox
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777453
push.s "cards._catUndeadRightDesc"@6962
conv.s.v
push.s "cards._catUndeadRight"@6963
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.catUndeadRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.catUndeadRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.catUndeadLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterCatUndead"@6964
conv.s.v
push.s "monster._catUndeadDesc"@6965
conv.s.v
push.s "monster._catUndead"@6966
conv.s.v
push.s "catUndead"@6967
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.catUndead
exit.i

:[2]
push.i [function]gml_Script_monster_catUndead
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_catUndead
popz.v

:[end]