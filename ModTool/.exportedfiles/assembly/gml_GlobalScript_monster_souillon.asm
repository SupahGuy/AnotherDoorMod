:[0]
b [2]

> gml_Script_monster_souillon (locals=0, argc=0)
:[1]
push.d 33.333
conv.d.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 3
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
push.v [stacktop]self.loyalty
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777590
push.s "cards._souillonLeftDesc"@7187
conv.s.v
push.s "cards._souillonLeft"@7188
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.souillonLeft
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
push.v [stacktop]self.loyalty
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777591
push.s "cards._souillonRightDesc"@7189
conv.s.v
push.s "cards._souillonRight"@7190
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.souillonRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.souillonRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.souillonLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterSouillon"@7191
conv.s.v
push.s "monster._souillonDesc"@7192
conv.s.v
push.s "monster._souillon"@7193
conv.s.v
push.s "souillon"@7194
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.souillon
exit.i

:[2]
push.i [function]gml_Script_monster_souillon
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_souillon
popz.v

:[end]