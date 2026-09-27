:[0]
b [2]

> gml_Script_forest_innkeeper (locals=0, argc=0)
:[1]
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
call.i @@NewGMLArray@@(argc=4)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.multiplyEffect
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777497
push.s "cards._innKeeperLeftDesc"@7010
conv.s.v
push.s "cards._innKeeperLeft"@7011
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.innkeeperLeft
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
call.i @@NewGMLArray@@(argc=4)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.multiplyEffect
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777498
push.s "cards._innKeeperRightDesc"@7012
conv.s.v
push.s "cards._innKeeperRight"@7013
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.innkeeperRight
call.i @@NewGMLArray@@(argc=0)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.innkeeperRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.innkeeperLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterInnkeeper"@7014
conv.s.v
push.s "monster._innKeeperDesc"@7015
conv.s.v
push.s "monster._innKeeper"@7016
conv.s.v
push.s "innkeeper"@7017
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.innkeeper
exit.i

:[2]
push.i [function]gml_Script_forest_innkeeper
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_innkeeper
popz.v

:[end]