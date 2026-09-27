:[0]
b [2]

> gml_Script_forest_fearlessAdventurerCorpse (locals=0, argc=0)
:[1]
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
push.s "cards._fearlessAdventurerCorpseLeftDesc"@5592
conv.s.v
push.s "cards._fearlessAdventurerCorpseLeft"@5593
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.fearlessAdventurerCorpseLeft
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
push.s "cards._fearlessAdventurerCorpseRightDesc"@5595
conv.s.v
push.s "cards._fearlessAdventurerCorpseRight"@5596
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.fearlessAdventurerCorpseRight
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
push.l 4
conv.l.v
pushref.i 16777554
push.s "cards._fearlessAdventurerCorpseMushroomDesc"@5598
conv.s.v
push.s "cards._fearlessAdventurerCorpseMushroom"@5599
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.fearlessAdventurerCorpseMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.fearlessAdventurerCorpseMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.fearlessAdventurerCorpseRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.fearlessAdventurerCorpseLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.s "MonsterFearlessAdventurerCorpse"@5601
conv.s.v
push.s "monster._fearlessAdventurerCorpseDesc"@5602
conv.s.v
push.s "monster._fearlessAdventurerCorpse"@5603
conv.s.v
push.s "fearlessadventurercorpse"@5604
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.fearlessAdventurerCorpse
exit.i

:[2]
push.i [function]gml_Script_forest_fearlessAdventurerCorpse
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_fearlessAdventurerCorpse
popz.v

:[end]