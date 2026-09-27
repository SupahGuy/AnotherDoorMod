:[0]
b [2]

> gml_Script_monster_townCrier (locals=0, argc=0)
:[1]
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.badBlood
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777602
push.s "cards._townCrierLeftDesc"@7214
conv.s.v
push.s "cards._townCrierLeft"@7215
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.townCrierLeft
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.badBlood
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777603
push.s "cards._townCrierRightDesc"@7216
conv.s.v
push.s "cards._townCrierRight"@7217
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.townCrierRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.townCrierRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.townCrierLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterTownCrier"@7218
conv.s.v
push.s "monster._townCrierDesc"@7219
conv.s.v
push.s "monster._townCrier"@7220
conv.s.v
push.s "townCrier"@7221
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.townCrier
exit.i

:[2]
push.i [function]gml_Script_monster_townCrier
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_townCrier
popz.v

:[end]