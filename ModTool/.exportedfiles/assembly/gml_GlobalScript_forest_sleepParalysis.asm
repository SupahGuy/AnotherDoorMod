:[0]
b [2]

> gml_Script_forest_sleepParalysis (locals=0, argc=0)
:[1]
pushi.e 90
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
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
push.l 1
conv.l.v
pushref.i 16777581
push.s "cards._sleepParalysisLeftDesc"@5850
conv.s.v
push.s "cards._sleepParalysisLeft"@5851
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.sleepParalysisLeft
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 90
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
pushref.i 16777583
push.s "cards._sleepParalysisRightDesc"@5852
conv.s.v
push.s "cards._sleepParalysisRight"@5853
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.sleepParalysisRight
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 100
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777582
push.s "cards._sleepParalysisMushroomDesc"@5854
conv.s.v
push.s "cards._sleepParalysisMushroom"@5855
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.sleepParalysisMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sleepParalysisMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sleepParalysisRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sleepParalysisLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterOwl"@5856
conv.s.v
push.s "monster._sleepParalysisDesc"@5857
conv.s.v
push.s "monster._sleepParalysis"@5858
conv.s.v
push.s "sleepParalysis"@5859
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.sleepParalysis
exit.i

:[2]
push.i [function]gml_Script_forest_sleepParalysis
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_sleepParalysis
popz.v

:[end]