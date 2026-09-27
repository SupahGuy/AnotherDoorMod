:[0]
b [2]

> gml_Script_forest_starMole (locals=0, argc=0)
:[1]
push.l 10
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 1
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
pushref.i 16777596
push.s "cards._starMoleLeftDesc"@5886
conv.s.v
push.s "cards._starMoleLeft"@5887
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.starMoleLeft
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 11
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777598
push.s "cards._starMoleRightDesc"@5888
conv.s.v
push.s "cards._starMoleRight"@5889
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.starMoleRight
push.l 10
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 4
conv.l.v
pushref.i 16777597
push.s "cards._starMoleMushroomDesc"@5890
conv.s.v
push.s "cards._starMoleMushroom"@5891
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.starMoleMushroom
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.starMoleMushroom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.starMoleRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.starMoleLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "MonsterStarMole"@5892
conv.s.v
push.s "monster._starMoleDesc"@5893
conv.s.v
push.s "monster._starMole"@5894
conv.s.v
push.s "starMole"@5895
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.starMole
exit.i

:[2]
push.i [function]gml_Script_forest_starMole
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_starMole
popz.v

:[end]