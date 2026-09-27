:[0]
b [2]

> gml_Script_monster_prisonerChest (locals=0, argc=0)
:[1]
pushi.e 4
conv.i.v
pushi.e 16
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 9
conv.l.v
push.l 8
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=2)
push.l 2
conv.l.v
pushref.i 16777557
push.s "cards._prisonerChestLeftDesc"@7139
conv.s.v
push.s "cards._prisonerChestLeft"@7140
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.prisonerChestLeft
pushi.e 8
conv.i.v
pushi.e 24
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 7
conv.l.v
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=2)
push.l 2
conv.l.v
pushref.i 16777559
push.s "cards._prisonerChestRightDesc"@7141
conv.s.v
push.s "cards._prisonerChestRight"@7142
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.prisonerChestRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.prisonerChestRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.prisonerChestLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterPrisonerChest"@7143
conv.s.v
push.s "monster._prisonerChestDesc"@7144
conv.s.v
push.s "monster._prisonerChest"@7145
conv.s.v
push.s "prisonerChest"@7146
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.prisonerChest
exit.i

:[2]
push.i [function]gml_Script_monster_prisonerChest
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_prisonerChest
popz.v

:[end]