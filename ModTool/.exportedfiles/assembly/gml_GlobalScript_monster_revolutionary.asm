:[0]
b [2]

> gml_Script_monster_revolutionary (locals=0, argc=0)
:[1]
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushi.e 3
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 0
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.effectToDamage
call.i @@NewGMLArray@@(argc=2)
push.l 2
conv.l.v
pushref.i 16777567
push.s "cards._revolutionaryLeftDesc"@7159
conv.s.v
push.s "cards._revolutionaryLeft"@7160
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=14)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.revolutionaryLeft
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.revolutionaryLeft
call.i @@NewGMLArray@@(argc=1)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterRevolutionary"@7161
conv.s.v
push.s "monster._revolutionaryDesc"@7162
conv.s.v
push.s "monster._revolutionary"@7163
conv.s.v
push.s "revolutionary"@7164
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.revolutionary
exit.i

:[2]
push.i [function]gml_Script_monster_revolutionary
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_revolutionary
popz.v

:[end]