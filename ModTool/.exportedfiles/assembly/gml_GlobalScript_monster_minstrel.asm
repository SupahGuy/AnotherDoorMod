:[0]
b [2]

> gml_Script_monster_minstrel (locals=0, argc=0)
:[1]
push.l 1
conv.l.v
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=3)
pushi.e 100
conv.i.v
pushi.e 90
conv.i.v
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=3)
push.l 0
conv.l.v
push.l 0
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=3)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tutorial
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=3)
push.l 2
conv.l.v
pushref.i 16777528
push.s "cards._minstrelLeftDesc"@7094
conv.s.v
push.s "cards._minstrelLeft"@7095
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=13)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.minstrelLeft
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.nothing
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777529
push.s "cards._minstrelRightDesc"@7096
conv.s.v
push.s "cards._minstrelRight"@7097
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.minstrelRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.minstrelRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.minstrelLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterMinstrel"@7099
conv.s.v
push.s "monster._minstrelDesc"@7100
conv.s.v
push.s "monster._minstrel"@7101
conv.s.v
push.s "minstrel"@7102
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.minstrel
exit.i

:[2]
push.i [function]gml_Script_monster_minstrel
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_minstrel
popz.v

:[end]