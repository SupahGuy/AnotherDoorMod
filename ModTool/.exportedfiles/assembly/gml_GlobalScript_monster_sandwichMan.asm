:[0]
b [2]

> gml_Script_monster_sandwichMan (locals=0, argc=0)
:[1]
pushi.e 80
conv.i.v
pushi.e 20
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
push.l 0
conv.l.v
push.l 13
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 0
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=2)
push.l 2
conv.l.v
pushref.i 16777571
push.s "cards._sandwichManLeftDesc"@7167
conv.s.v
push.s "cards._sandwichManLeft"@7168
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.sandwichManLeft
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777572
push.s "cards._sandwichManRightDesc"@7169
conv.s.v
push.s "cards._sandwichManRight"@7170
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.sandwichManRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sandwichManRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sandwichManLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterSandwichMan"@7171
conv.s.v
push.s "monster._sandwichManDesc"@7172
conv.s.v
push.s "monster._sandwichMan"@7173
conv.s.v
push.s "sandwichMan"@7174
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.sandwichMan
exit.i

:[2]
push.i [function]gml_Script_monster_sandwichMan
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_sandwichMan
popz.v

:[end]