:[0]
b [2]

> gml_Script_forest_twoHeadedFawn (locals=0, argc=0)
:[1]
pushi.e 15
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777607
push.s "cards._twoHeadedFawnLeftDesc"@5919
conv.s.v
push.s "cards._twoHeadedFawnLeft"@5920
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.twoHeadedFawnLeft
pushi.e 50
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777609
push.s "cards._twoHeadedFawnRightDesc"@5921
conv.s.v
push.s "cards._twoHeadedFawnRight"@5922
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.twoHeadedFawnRight
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 50
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777608
push.s "cards._twoHeadedFawnMushroomDesc"@5923
conv.s.v
push.s "cards._twoHeadedFawnMushroom"@5924
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.twoHeadedFawnMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.twoHeadedFawnMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.twoHeadedFawnRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.twoHeadedFawnLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterFawn"@5925
conv.s.v
push.s "monster._twoHeadedFawnDesc"@5926
conv.s.v
push.s "monster._twoHeadedFawn"@5927
conv.s.v
push.s "twoHeadedFawn"@5928
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.twoHeadedFawn
exit.i

:[2]
push.i [function]gml_Script_forest_twoHeadedFawn
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_twoHeadedFawn
popz.v

:[end]