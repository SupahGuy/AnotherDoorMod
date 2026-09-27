:[0]
b [2]

> gml_Script_forest_doopelganger (locals=0, argc=0)
:[1]
pushi.e 3
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
push.v [stacktop]self.poison
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777554
push.s "cards._doopelgangerLeftDesc"@5563
conv.s.v
push.s "cards._doopelgangerLeft"@5564
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.doopelgangerLeft
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
push.v [stacktop]self.poison
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777554
push.s "cards._doopelgangerRightDesc"@5566
conv.s.v
push.s "cards._doopelgangerRight"@5567
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.doopelgangerRight
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777554
push.s "cards._doopelgangerMushroomDesc"@5569
conv.s.v
push.s "cards._doopelgangerMushroom"@5570
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.doopelgangerMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.doopelgangerMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.doopelgangerRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.doopelgangerLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.s "MonsterDoopelganger"@5572
conv.s.v
push.s "monster._doopelgangerDesc"@5573
conv.s.v
push.s "monster._doopelganger"@5574
conv.s.v
push.s "doopelganger"@5575
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.doopelganger
exit.i

:[2]
push.i [function]gml_Script_forest_doopelganger
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_doopelganger
popz.v

:[end]