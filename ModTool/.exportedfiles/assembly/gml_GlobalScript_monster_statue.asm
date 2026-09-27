:[0]
b [2]

> gml_Script_monster_statue (locals=0, argc=0)
:[1]
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.rezurrection
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777599
push.s "cards._statueLeftDesc"@5898
conv.s.v
push.s "cards._statueLeft"@5899
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.statueLeft
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 50
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
pushref.i 16777600
push.s "cards._statueRightDesc"@7197
conv.s.v
push.s "cards._statueRight"@7198
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.statueRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.statueRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.statueLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterStatue"@7199
conv.s.v
push.s "monster._statueDesc"@5903
conv.s.v
push.s "monster._statue"@5904
conv.s.v
push.s "statue"@7200
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.statue
exit.i

:[2]
push.i [function]gml_Script_monster_statue
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_statue
popz.v

:[end]