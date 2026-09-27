:[0]
b [2]

> gml_Script_monster_bellBoy (locals=0, argc=0)
:[1]
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
pushref.i 16777438
push.s "cards._bellBoyLeftDesc"@6901
conv.s.v
push.s "cards._bellBoyLeft"@6902
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.bellBoyLeft
pushi.e 75
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 9
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777439
push.s "cards._bellBoyRightDesc"@6903
conv.s.v
push.s "cards._bellBoyRight"@6904
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.bellBoyRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.bellBoyRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.bellBoyLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterBellBoy"@6905
conv.s.v
push.s "monster._bellBoyDesc"@6906
conv.s.v
push.s "monster._bellBoy"@6907
conv.s.v
push.s "bellBoy"@6908
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.bellBoy
exit.i

:[2]
push.i [function]gml_Script_monster_bellBoy
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_bellBoy
popz.v

:[end]