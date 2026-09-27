:[0]
b [2]

> gml_Script_monster_pupperteer (locals=0, argc=0)
:[1]
pushi.e 50
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
push.l 17
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 4
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
pushref.i 16777560
push.s "cards._pupperteerLeftDesc"@7149
conv.s.v
push.s "cards._pupperteerLeft"@7150
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.pupperteerLeft
push.l 17
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 8
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777561
push.s "cards._pupperteerRightDesc"@7151
conv.s.v
push.s "cards._pupperteerRight"@7152
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.pupperteerRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.pupperteerRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.pupperteerLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterPupperteer"@7153
conv.s.v
push.s "monster._pupperteerDesc"@7154
conv.s.v
push.s "monster._pupperteer"@7155
conv.s.v
push.s "pupperteer"@7156
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.pupperteer
exit.i

:[2]
push.i [function]gml_Script_monster_pupperteer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_pupperteer
popz.v

:[end]