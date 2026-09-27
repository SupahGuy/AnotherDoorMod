:[0]
b [2]

> gml_Script_monster_pigeon (locals=0, argc=0)
:[1]
push.l 12
conv.l.v
call.i @@NewGMLArray@@(argc=1)
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
push.l 2
conv.l.v
pushref.i 16777553
push.s "cards._pigeonLeftDesc"@7125
conv.s.v
push.s "cards._pigeonLeft"@7126
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.pigeonLeft
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
push.v [stacktop]self.pigeonEgg
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777552
push.s "cards._pigeonRightDesc"@7127
conv.s.v
push.s "cards._pigeonRight"@7128
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.pigeonRight
call.i @@NewGMLArray@@(argc=0)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.pigeonRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.pigeonLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterPigeon"@7129
conv.s.v
push.s "monster._pigeonDesc"@7130
conv.s.v
push.s "monster._pigeon"@7131
conv.s.v
push.s "pigeon"@5281
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.pigeon
exit.i

:[2]
push.i [function]gml_Script_monster_pigeon
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_pigeon
popz.v

:[end]