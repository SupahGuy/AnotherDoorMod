:[0]
b [2]

> gml_Script_monster_blackMarket (locals=0, argc=0)
:[1]
pushi.e 0
conv.i.v
pushi.e 25
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
push.l 8
conv.l.v
pushref.i 16777481
push.s "cards._blackMarketDesc"@6911
conv.s.v
push.s "cards._blackMarket"@6912
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.blackMarketGem
call.i @@NewGMLArray@@(argc=0)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.blackMarketGem
call.i @@NewGMLArray@@(argc=1)
call.i @@NewGMLArray@@(argc=1)
push.l 9
conv.l.v
push.s "MonsterBlackMarket"@6914
conv.s.v
push.s "monster._blackMarketDesc"@6915
conv.s.v
push.s "monster._blackMarket"@6916
conv.s.v
push.s "blackMarket"@6917
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.blackMarket
exit.i

:[2]
push.i [function]gml_Script_monster_blackMarket
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_blackMarket
popz.v

:[end]