:[0]
b [2]

> gml_Script_monster_luckyChest (locals=0, argc=0)
:[1]
pushi.e 20
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
pushref.i 16777515
push.s "cards._luckyChestLeftDesc"@7070
conv.s.v
push.s "cards._luckyChestLeft"@7071
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.luckyChestLeft
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 50
conv.i.v
pushi.e 50
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 10
conv.i.v
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 0
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
call.i @@NewGMLArray@@(argc=2)
push.l 2
conv.l.v
pushref.i 16777517
push.s "cards._luckyChestRightDesc"@7072
conv.s.v
push.s "cards._luckyChestRight"@7073
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=13)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.luckyChestRight
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 22
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777516
push.s "cards._luckyChestMushroomDesc"@7074
conv.s.v
push.s "cards._luckyChestMushroom"@7075
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.luckyChestMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.luckyChestMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.luckyChestRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.luckyChestLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterLuckyChest"@7076
conv.s.v
push.s "monster._luckyChestDesc"@7077
conv.s.v
push.s "monster._luckyChest"@7078
conv.s.v
push.s "luckyChest"@7079
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.luckyChest
exit.i

:[2]
push.i [function]gml_Script_monster_luckyChest
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_luckyChest
popz.v

:[end]