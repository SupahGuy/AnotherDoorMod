:[0]
b [2]

> gml_Script_monster_dictator (locals=0, argc=0)
:[1]
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushi.e 4
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 0
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.effectToGem
call.i @@NewGMLArray@@(argc=2)
push.l 2
conv.l.v
pushref.i 16777460
push.s "cards._dictatorLeftDesc"@6980
conv.s.v
push.s "cards._dictatorLeft"@6981
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=14)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.dictatorLeft
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushi.e 8
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 0
conv.l.v
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.effectToGem
call.i @@NewGMLArray@@(argc=2)
push.l 2
conv.l.v
pushref.i 16777461
push.s "cards._dictatorRightDesc"@6982
conv.s.v
push.s "cards._dictatorRight"@6983
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=14)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.dictatorRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dictatorRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dictatorLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterDictator"@6984
conv.s.v
push.s "monster._dictatorDesc"@6985
conv.s.v
push.s "monster._dictator"@6986
conv.s.v
push.s "dictator"@6987
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.dictator
exit.i

:[2]
push.i [function]gml_Script_monster_dictator
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_dictator
popz.v

:[end]