:[0]
b [2]

> gml_Script_monster_carriageMadMan (locals=0, argc=0)
:[1]
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 18
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777445
push.s "cards._carriageMadManLeftDesc"@6930
conv.s.v
push.s "cards._carriageMadManLeft"@6931
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.carriageMadManLeft
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 18
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777446
push.s "cards._carriageMadManRightDesc"@6932
conv.s.v
push.s "cards._carriageMadManRight"@6933
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.carriageMadManRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.carriageMadManRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.carriageMadManLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterCarriageMadMan"@6934
conv.s.v
push.s "monster._carriageMadManDesc"@6935
conv.s.v
push.s "monster._carriageMadMan"@6936
conv.s.v
push.s "carriageMadMan"@6937
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.carriageMadMan
exit.i

:[2]
push.i [function]gml_Script_monster_carriageMadMan
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_carriageMadMan
popz.v

:[end]