:[0]
b [2]

> gml_Script_monster_lampostOn (locals=0, argc=0)
:[1]
push.l 15
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.healSoft
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777508
push.s "cards._lampostOnLeftDesc"@7050
conv.s.v
push.s "cards._lampostOnLeft"@7051
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.lampostOnLeft
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 20
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777509
push.s "cards._lampostOnRightDesc"@7052
conv.s.v
push.s "cards._lampostOnRight"@7053
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.lampostOnRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lampostOnRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lampostOnLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterLampostOn"@7054
conv.s.v
push.s "monster._lampostOnDesc"@7055
conv.s.v
push.s "monster._lampostOn"@7056
conv.s.v
push.s "lampostOn"@7057
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.lampostOn
exit.i

:[2]
push.i [function]gml_Script_monster_lampostOn
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_lampostOn
popz.v

:[end]