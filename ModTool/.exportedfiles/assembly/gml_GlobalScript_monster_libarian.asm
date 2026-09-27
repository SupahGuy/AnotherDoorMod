:[0]
b [2]

> gml_Script_monster_libarian (locals=0, argc=0)
:[1]
pushi.e 33
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 20
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
pushref.i 16777510
push.s "cards._libarianLeftDesc"@7060
conv.s.v
push.s "cards._libarianLeft"@7061
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.libarianLeft
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 15
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
pushref.i 16777511
push.s "cards._libarianRightDesc"@7062
conv.s.v
push.s "cards._libarianRight"@7063
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.libarianRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.libarianRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.libarianLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterLibarian"@7064
conv.s.v
push.s "monster._libarianDesc"@7065
conv.s.v
push.s "monster._libarian"@7066
conv.s.v
push.s "libarian"@7067
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.libarian
exit.i

:[2]
push.i [function]gml_Script_monster_libarian
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_libarian
popz.v

:[end]