:[0]
b [2]

> gml_Script_monster_madScientist (locals=0, argc=0)
:[1]
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
push.v [stacktop]self.badBlood
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777518
push.s "cards._madScientistLeftDesc"@7082
conv.s.v
push.s "cards._madScientistLeft"@7083
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.madScientistLeft
pushi.e 25
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 4
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
push.v [stacktop]self.badBlood
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777519
push.s "cards._madScientistRightDesc"@7084
conv.s.v
push.s "cards._madScientistRight"@7085
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.madScientistRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.madScientistRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.madScientistLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterMadScientist"@7086
conv.s.v
push.s "monster._madScientistDesc"@7087
conv.s.v
push.s "monster._madScientist"@7088
conv.s.v
push.s "madScientist"@7089
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.madScientist
exit.i

:[2]
push.i [function]gml_Script_monster_madScientist
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_madScientist
popz.v

:[end]