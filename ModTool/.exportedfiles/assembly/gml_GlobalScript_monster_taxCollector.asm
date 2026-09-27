:[0]
b [2]

> gml_Script_monster_taxCollector (locals=0, argc=0)
:[1]
pushi.e 20
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.attack
call.i @@NewGMLArray@@(argc=1)
push.l 2
conv.l.v
push.v builtin.sprItemTaxCollectorLeft
push.s "cards._taxCollectorLeftDesc"@7204
conv.s.v
push.s "cards._taxCollectorLeft"@7205
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.taxCollectorLeft
push.v builtin._monster_script_end
call.i @@NewGMLArray@@(argc=0)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.taxCollectorLeft
call.i @@NewGMLArray@@(argc=1)
call.i @@NewGMLArray@@(argc=1)
push.l 8
conv.l.v
push.s "MonsterTaxCollector"@7208
conv.s.v
push.s "monster._taxCollectorDesc"@7209
conv.s.v
push.s "monster._taxCollector"@7210
conv.s.v
push.s "taxCollector"@7211
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.taxCollector
exit.i

:[2]
push.i [function]gml_Script_monster_taxCollector
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.monster_taxCollector
popz.v

:[end]