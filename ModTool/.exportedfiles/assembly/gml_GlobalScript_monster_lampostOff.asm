:[0]
b [2]

> gml_Script_monster_lampostOff (locals=0, argc=0)
:[1]
push.l 14
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
pushref.i 16777506
push.s "cards._lampostOffLeftDesc"@7040
conv.s.v
push.s "cards._lampostOffLeft"@7041
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.lampostOffLeft
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 19
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777507
push.s "cards._lampostOffRightDesc"@7042
conv.s.v
push.s "cards._lampostOffRight"@7043
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.lampostOffRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lampostOffRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lampostOffLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterLampostOff"@7044
conv.s.v
push.s "monster._lampostOffDesc"@7045
conv.s.v
push.s "monster._lampostOff"@7046
conv.s.v
push.s "lampostOff"@7047
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.lampostOff
exit.i

:[2]
push.i [function]gml_Script_monster_lampostOff
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_lampostOff
popz.v

:[end]