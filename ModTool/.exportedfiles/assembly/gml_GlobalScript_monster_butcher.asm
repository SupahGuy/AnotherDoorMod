:[0]
b [2]

> gml_Script_monster_butcher (locals=0, argc=0)
:[1]
pushi.e 5
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 90
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attackMultiple
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777443
push.s "cards._butcherLeftDesc"@6920
conv.s.v
push.s "cards._butcherLeft"@6921
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=16)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.butcherLeft
pushi.e 5
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 18
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attackMultiple
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777444
push.s "cards._butcherRightDesc"@6922
conv.s.v
push.s "cards._butcherRight"@6923
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=16)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.butcherRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.butcherRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.butcherLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterButcher"@6924
conv.s.v
push.s "monster._butcherDesc"@6925
conv.s.v
push.s "monster._butcher"@6926
conv.s.v
push.s "butcher"@6927
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.butcher
exit.i

:[2]
push.i [function]gml_Script_monster_butcher
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_butcher
popz.v

:[end]