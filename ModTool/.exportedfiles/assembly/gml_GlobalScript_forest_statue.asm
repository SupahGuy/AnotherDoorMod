:[0]
b [2]

> gml_Script_forest_statue (locals=0, argc=0)
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
push.l 1
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
pop.v.v [stacktop]self.statueForestLeft
pushi.e 80
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777600
push.s "cards._statueForestRightDesc"@5900
conv.s.v
push.s "cards._statueForestRight"@5901
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.statueForestRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.statueForestRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.statueForestLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterStatueForest"@5902
conv.s.v
push.s "monster._statueDesc"@5903
conv.s.v
push.s "monster._statue"@5904
conv.s.v
push.s "statueForest"@5905
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.statueForest
exit.i

:[2]
push.i [function]gml_Script_forest_statue
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_statue
popz.v

:[end]