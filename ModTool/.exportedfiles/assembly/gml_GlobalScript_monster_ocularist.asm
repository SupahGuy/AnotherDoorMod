:[0]
b [2]

> gml_Script_monster_ocularist (locals=0, argc=0)
:[1]
pushi.e 20
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 12
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777542
push.s "cards._ocularistLeftDesc"@7105
conv.s.v
push.s "cards._ocularistLeft"@7106
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.ocularistLeft
pushi.e 20
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 12
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777543
push.s "cards._ocularistRightDesc"@7107
conv.s.v
push.s "cards._ocularistRight"@7108
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.ocularistRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.ocularistRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.ocularistLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterOcularist"@7109
conv.s.v
push.s "monster._ocularistDesc"@7110
conv.s.v
push.s "monster._ocularist"@7111
conv.s.v
push.s "ocularist"@7112
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.ocularist
exit.i

:[2]
push.i [function]gml_Script_monster_ocularist
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_ocularist
popz.v

:[end]