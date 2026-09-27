:[0]
b [13]

> gml_Script_forest_shop (locals=1, argc=0)
:[1]
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
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 9
conv.l.v
pushref.i 16777430
push.s ""@61
conv.s.v
push.s ""@61
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.shopItem1
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
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 9
conv.l.v
pushref.i 16777430
push.s ""@61
conv.s.v
push.s ""@61
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.shopItem2
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
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 9
conv.l.v
pushref.i 16777430
push.s ""@61
conv.s.v
push.s ""@61
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.shopItem3
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
push.v [stacktop]self.heal
call.i @@NewGMLArray@@(argc=1)
push.l 9
conv.l.v
pushref.i 16777430
push.s ""@61
conv.s.v
push.s ""@61
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.shopItem4
b [12]

> gml_Script_anon@1074@forest_shop@forest_shop (locals=3, argc=0)
:[2]
pushglb.v global.japetCounter
pushi.e 0
cmp.i.v EQ
bf [8]

:[3]
pushi.e 1
pop.v.i global.japetCounter
b [7]

> gml_Script_anon@1196@anon@1074@forest_shop@forest_shop (locals=0, argc=0)
:[4]
pushref.i 47
pushi.e -9
pushenv [6]

:[5]
call.i @@This@@(argc=0)
push.v builtin.draw_shop
callv.v 0
popz.v

:[6]
popenv [5]
exit.i

:[7]
push.i [function]gml_Script_anon@1196@anon@1074@forest_shop@forest_shop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.talk_finished
pushglb.v global.audio
pushi.e 1
conv.b.v
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.fade_out
callv.v 2
popz.v
push.l 2
pop.v.l local._alignY
push.l 1
pop.v.l local._alignX
push.v builtin.talk_finished
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 4
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
push.s "shop._introductionMoon8"@5833
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
push.l 4
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
push.s "shop._introductionMoon7"@5834
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 4
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
push.s "shop._introductionMoon6"@5835
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 4
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
push.s "shop._introductionMoon5"@5836
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 4
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
push.s "shop._introductionMoon4"@5837
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 4
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
push.s "shop._introductionMoon3"@5838
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 4
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
push.s "shop._introductionMoon2"@5839
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 4
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
push.s "shop._introductionMoon1"@5840
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
call.i @@NewGMLArray@@(argc=8)
pop.v.v local._newTooltipList
pushloc.v local._newTooltipList
call.i gml_Script_set_list_of_tooltip(argc=1)
popz.v
pushi.e -7
pushi.e 0
push.v [array]self._newTooltipList
pushref.i 14
pushi.e 0
conv.i.v
pushi.e 70
conv.i.v
pushi.e 155
conv.i.v
call.i instance_create_depth(argc=5)
popz.v
b [11]

:[8]
pushref.i 47
pushi.e -9
pushenv [10]

:[9]
call.i @@This@@(argc=0)
push.v builtin.draw_shop
callv.v 0
popz.v

:[10]
popenv [9]

:[11]
exit.i

:[12]
push.i [function]gml_Script_anon@1074@forest_shop@forest_shop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v local._activate_dialogue
pushloc.v local._activate_dialogue
pushbltn.v builtin.undefined
call.i @@NewGMLArray@@(argc=0)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem4
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem3
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem2
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem1
call.i @@NewGMLArray@@(argc=4)
call.i @@NewGMLArray@@(argc=1)
push.l 7
conv.l.v
push.s "UtilityShop"@5844
conv.s.v
push.s "monster._shopDesc"@5845
conv.s.v
push.s "monster._shop"@5846
conv.s.v
push.s "shop"@5847
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.shop
exit.i

:[13]
push.i [function]gml_Script_forest_shop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_shop
popz.v

:[end]