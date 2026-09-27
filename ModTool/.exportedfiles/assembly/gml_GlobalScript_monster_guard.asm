:[0]
b [2]

> gml_Script_monster_guard (locals=0, argc=0)
:[1]
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777485
push.s "cards._guardLeftDesc"@7000
conv.s.v
push.s "cards._guardLeft"@7001
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.guardLeft
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushi.e 50
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 4
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777486
push.s "cards._guardRightDesc"@7002
conv.s.v
push.s "cards._guardRight"@7003
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=13)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.guardRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.guardRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.guardLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterGuard"@7004
conv.s.v
push.s "monster._guardDesc"@7005
conv.s.v
push.s "monster._guard"@7006
conv.s.v
push.s "guard"@7007
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.guard
exit.i

:[2]
push.i [function]gml_Script_monster_guard
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_guard
popz.v

:[end]