:[0]
b [2]

> gml_Script_forest_timeLostWatcher (locals=0, argc=0)
:[1]
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.redPill
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777512
push.s "cards._lostTimeWatcherLeftDesc"@5908
conv.s.v
push.s "cards._lostTimeWatcherLeft"@5909
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.lostTimeWatcherLeft
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushi.e 100
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.convertHPRandomized
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777514
push.s "cards._lostTimeWatcherRightDesc"@5910
conv.s.v
push.s "cards._lostTimeWatcherRight"@5911
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.lostTimeWatcherRight
pushi.e 50
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777513
push.s "cards._lostTimeWatcherMushroomDesc"@5912
conv.s.v
push.s "cards._lostTimeWatcherMushroom"@5913
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.lostTimeWatcherMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lostTimeWatcherMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lostTimeWatcherRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lostTimeWatcherLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 3
conv.l.v
push.s "MonsterLostTimeWatcher"@5914
conv.s.v
push.s "monster._lostTimeWatcherDesc"@5915
conv.s.v
push.s "monster._lostTimeWatcher"@5916
conv.s.v
push.s "lostTimeWatcher"@5229
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.lostTimeWatcher
exit.i

:[2]
push.i [function]gml_Script_forest_timeLostWatcher
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_timeLostWatcher
popz.v

:[end]