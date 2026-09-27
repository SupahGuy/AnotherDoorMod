:[0]
b [2]

> gml_Script_monster_banker (locals=0, argc=0)
:[1]
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 20
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
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
pushref.i 16777435
push.s "cards._bankerLeftDesc"@6880
conv.s.v
push.s "cards._bankerLeft"@6881
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.bankerLeft
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e -1
conv.i.v
pushi.e 25
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 6
conv.l.v
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.trapped
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=2)
push.l 2
conv.l.v
pushref.i 16777554
push.s "cards._bankerRightDesc"@6882
conv.s.v
push.s "cards._bankerRight"@6883
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.bankerRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.bankerLeft
call.i @@NewGMLArray@@(argc=1)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterBanker"@6885
conv.s.v
push.s "monster._bankerDesc"@6886
conv.s.v
push.s "monster._banker"@6887
conv.s.v
push.s "banker"@6888
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.banker
exit.i

:[2]
push.i [function]gml_Script_monster_banker
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_banker
popz.v

:[end]