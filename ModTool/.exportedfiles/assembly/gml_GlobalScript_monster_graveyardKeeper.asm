:[0]
b [2]

> gml_Script_monster_graveyardKeeper (locals=0, argc=0)
:[1]
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777483
push.s "cards._graveyardKeeperLeftDesc"@6990
conv.s.v
push.s "cards._graveyardKeeperLeft"@6991
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.graveyardKeeperLeft
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 8
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.badBlood
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777484
push.s "cards._graveyardKeeperRightDesc"@6992
conv.s.v
push.s "cards._graveyardKeeperRight"@6993
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.graveyardKeeperRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.graveyardKeeperRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.graveyardKeeperLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterGraveyardKeeper"@6994
conv.s.v
push.s "monster._graveyardKeeperDesc"@6995
conv.s.v
push.s "monster._graveyardKeeper"@6996
conv.s.v
push.s "graveyardKeeper"@6997
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.graveyardKeeper
exit.i

:[2]
push.i [function]gml_Script_monster_graveyardKeeper
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_graveyardKeeper
popz.v

:[end]