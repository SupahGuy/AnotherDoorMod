:[0]
b [2]

> gml_Script_forest_blindUnicorn (locals=0, argc=0)
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
pushref.i 16777613
push.s "cards._unicornLeftDesc"@5515
conv.s.v
push.s "cards._unicornLeft"@5516
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.unicornLeft
pushi.e 75
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777615
push.s "cards._unicornRightDesc"@5517
conv.s.v
push.s "cards._unicornRight"@5518
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.unicornRight
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e -1
conv.i.v
pushi.e 25
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 0
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.trapped
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=2)
push.l 4
conv.l.v
pushref.i 16777614
push.s "cards._unicornMushroomDesc"@5519
conv.s.v
push.s "cards._unicornMushroom"@5520
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.unicornMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.unicornMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.unicornRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.unicornLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterUnicorn"@5521
conv.s.v
push.s "Desc uni"@5522
conv.s.v
push.s "monster._unicorn"@5523
conv.s.v
push.s "unicorn"@5524
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.unicorn
exit.i

:[2]
push.i [function]gml_Script_forest_blindUnicorn
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_blindUnicorn
popz.v

:[end]