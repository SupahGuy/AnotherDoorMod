:[0]
b [2]

> gml_Script_monster_shoeshiner (locals=0, argc=0)
:[1]
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 15
conv.i.v
call.i @@NewGMLArray@@(argc=1)
call.i @@NewGMLArray@@(argc=4)
call.i @@NewGMLArray@@(argc=2)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777579
push.s "cards._shoeshinerLeftDesc"@7177
conv.s.v
push.s "cards._shoeshinerLeft"@7178
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.shoeshinerLeft
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 15
conv.i.v
call.i @@NewGMLArray@@(argc=1)
call.i @@NewGMLArray@@(argc=4)
call.i @@NewGMLArray@@(argc=2)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777580
push.s "cards._shoeshinerRightDesc"@7179
conv.s.v
push.s "cards._shoeshinerRight"@7180
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.shoeshinerRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shoeshinerRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shoeshinerLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterShoeshiner"@7181
conv.s.v
push.s "monster._shoeshinerDesc"@7182
conv.s.v
push.s "monster._shoeshiner"@7183
conv.s.v
push.s "shoeshiner"@7184
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.shoeshiner
exit.i

:[2]
push.i [function]gml_Script_monster_shoeshiner
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_shoeshiner
popz.v

:[end]