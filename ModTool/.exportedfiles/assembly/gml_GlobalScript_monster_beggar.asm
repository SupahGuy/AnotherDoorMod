:[0]
b [2]

> gml_Script_monster_beggar (locals=0, argc=0)
:[1]
pushi.e 3
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 9
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777436
push.s "cards._beggarLeftDesc"@6891
conv.s.v
push.s "cards._beggarLeft"@6892
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.beggarLeft
pushi.e 3
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 9
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777437
push.s "cards._beggarRightDesc"@6893
conv.s.v
push.s "cards._beggarRight"@6894
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.beggarRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.beggarRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.beggarLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterBeggar"@6895
conv.s.v
push.s "monster._beggarDesc"@6896
conv.s.v
push.s "monster._beggar"@6897
conv.s.v
push.s "beggar"@6898
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.beggar
exit.i

:[2]
push.i [function]gml_Script_monster_beggar
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_beggar
popz.v

:[end]