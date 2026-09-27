:[0]
b [2]

> gml_Script_mountain_frozenStatue (locals=0, argc=0)
:[1]
pushi.e 5
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.rezurrection
call.i @@NewGMLArray@@(argc=1)
push.l 3
conv.l.v
pushref.i 16777477
push.s "cards._statueLeftDesc"@5898
conv.s.v
push.s "cards._statueLeft"@5899
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.frozenStatueLeft
pushi.e 1
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
push.v [stacktop]self.frostbite
call.i @@NewGMLArray@@(argc=1)
push.l 3
conv.l.v
pushref.i 16777478
push.s "cards._frozenStatueRightDesc"@7225
conv.s.v
push.s "cards._frozenStatueRight"@7226
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.frozenStatueRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.frozenStatueRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.frozenStatueLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
push.s "MonsterFrozenStatue"@7227
conv.s.v
push.s "monster._frozenStatueDesc"@7228
conv.s.v
push.s "monster._frozenStatue"@7229
conv.s.v
push.s "frozenStatue"@7230
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.frozenStatue
exit.i

:[2]
push.i [function]gml_Script_mountain_frozenStatue
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.mountain_frozenStatue
popz.v

:[end]