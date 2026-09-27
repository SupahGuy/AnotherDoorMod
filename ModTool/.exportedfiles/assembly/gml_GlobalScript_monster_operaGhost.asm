:[0]
b [2]

> gml_Script_monster_operaGhost (locals=0, argc=0)
:[1]
push.l 10
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
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777544
push.s "cards._operaGhostLeftDesc"@7115
conv.s.v
push.s "cards._operaGhostLeft"@7116
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.operaGhostLeft
push.l 10
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777545
push.s "cards._operaGhostRightDesc"@7117
conv.s.v
push.s "cards._operaGhostRight"@7118
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.operaGhostRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.operaGhostRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.operaGhostLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterOperaGhost"@7119
conv.s.v
push.s "monster._operaGhostDesc"@7120
conv.s.v
push.s "monster._operaGhost"@7121
conv.s.v
push.s "operaGhost"@7122
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.operaGhost
exit.i

:[2]
push.i [function]gml_Script_monster_operaGhost
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_operaGhost
popz.v

:[end]