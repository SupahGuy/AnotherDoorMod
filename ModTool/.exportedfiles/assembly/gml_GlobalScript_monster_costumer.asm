:[0]
b [2]

> gml_Script_monster_costumer (locals=0, argc=0)
:[1]
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 50
conv.i.v
pushi.e 50
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 20
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 0
conv.l.v
push.l 0
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
pushref.i 16777455
push.s "cards._costumerLeftDesc"@6970
conv.s.v
push.s "cards._costumerLeft"@6971
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=13)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.costumerLeft
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
pushref.i 16777456
push.s "cards._costumerRightDesc"@6972
conv.s.v
push.s "cards._costumerRight"@6973
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.costumerRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.costumerRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.costumerLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterCostumer"@6974
conv.s.v
push.s "monster._costumerDesc"@6975
conv.s.v
push.s "monster._costumer"@6976
conv.s.v
push.s "costumer"@6977
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.costumer
exit.i

:[2]
push.i [function]gml_Script_monster_costumer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_costumer
popz.v

:[end]