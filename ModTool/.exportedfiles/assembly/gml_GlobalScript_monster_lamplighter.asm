:[0]
b [2]

> gml_Script_forest_lamplighter (locals=0, argc=0)
:[1]
push.l 0
conv.l.v
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=2)
push.l 8
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tutorial
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=2)
push.l 2
conv.l.v
pushref.i 16777504
push.s "cards._lamplighterLeftDesc"@7030
conv.s.v
push.s "cards._lamplighterLeft"@7031
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.lamplighterLeft
push.l 16
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777505
push.s "cards._lamplighterRightDesc"@7032
conv.s.v
push.s "cards._lamplighterRight"@7033
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.lamplighterRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lamplighterRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lamplighterLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterLamplighter"@7034
conv.s.v
push.s "monster._lamplighterDesc"@7035
conv.s.v
push.s "monster._lamplighter"@7036
conv.s.v
push.s "lamplighter"@7037
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.lamplighter
exit.i

:[2]
push.i [function]gml_Script_forest_lamplighter
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_lamplighter
popz.v

:[end]