:[0]
b [2]

> gml_Script_forest_watcher (locals=0, argc=0)
:[1]
pushi.e 10
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
pushref.i 16777616
push.s "cards._watcherLeftDesc"@5943
conv.s.v
push.s "cards._watcherLeft"@5944
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.watcherLeft
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
pushref.i 16777618
push.s "cards._watcherRightDesc"@5945
conv.s.v
push.s "cards._watcherRight"@5946
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.watcherRight
pushi.e 25
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777617
push.s "cards._watcherMushroomDesc"@5947
conv.s.v
push.s "cards._watcherMushroom"@5948
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.watcherMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.watcherMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.watcherRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.watcherLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterAxolotl"@5949
conv.s.v
push.s "monster._watcherDesc"@5950
conv.s.v
push.s "monster._watcher"@5951
conv.s.v
push.s "watcher"@5227
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.watcher
exit.i

:[2]
push.i [function]gml_Script_forest_watcher
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_watcher
popz.v

:[end]