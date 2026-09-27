:[0]
b [2]

> gml_Script_forest_oracle (locals=0, argc=0)
:[1]
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 9
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777546
push.s "cards._oracleLeftDesc"@5779
conv.s.v
push.s "cards._oracleLeft"@5780
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.oracleLeft
pushi.e 25
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 8
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777548
push.s "cards._oracleRightDesc"@5781
conv.s.v
push.s "cards._oracleRight"@5782
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.oracleRight
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
push.v [stacktop]self.oracleBlessing
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777547
push.s "cards._oracleMushroomDesc"@5783
conv.s.v
push.s "cards._oracleMushroom"@5784
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.oracleMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.oracleMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.oracleRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.oracleLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterOracle"@5785
conv.s.v
push.s "monster._oracleDesc"@5786
conv.s.v
push.s "monster._oracle"@5787
conv.s.v
push.s "oracle"@5788
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.oracle
exit.i

:[2]
push.i [function]gml_Script_forest_oracle
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_oracle
popz.v

:[end]