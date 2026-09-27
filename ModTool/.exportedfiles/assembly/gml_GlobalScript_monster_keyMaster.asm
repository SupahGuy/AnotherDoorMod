:[0]
b [2]

> gml_Script_monster_keyMaster (locals=0, argc=0)
:[1]
pushi.e 4
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.redPill
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777503
push.s "cards._keyMasterLeftDesc"@7020
conv.s.v
push.s "cards._keyMasterLeft"@7021
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.keyMasterLeft
pushi.e 8
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.redPill
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
pushref.i 16777502
push.s "cards._keyMasterRightDesc"@7022
conv.s.v
push.s "cards._keyMasterRight"@7023
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.keyMasterRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.keyMasterRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.keyMasterLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.s "MonsterKeyMaster"@7024
conv.s.v
push.s "monster._keyMasterDesc"@7025
conv.s.v
push.s "monster._keyMaster"@7026
conv.s.v
push.s "keyMaster"@7027
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.keyMaster
exit.i

:[2]
push.i [function]gml_Script_monster_keyMaster
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_keyMaster
popz.v

:[end]