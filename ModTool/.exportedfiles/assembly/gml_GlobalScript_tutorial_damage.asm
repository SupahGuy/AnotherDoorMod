:[0]
b [6]

> gml_Script_tutorial_damage (locals=0, argc=0)
:[1]
pushi.e 25
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
pushref.i 16777604
push.s "cards._tutorialDamageLeftDesc"@8383
conv.s.v
push.s "cards._tutorialDamageLeft"@8384
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.tutorialDamageLeft
pushi.e 50
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
pushref.i 16777605
push.s "cards._tutorialDamageRightDesc"@8385
conv.s.v
push.s "cards._tutorialDamageRight"@8386
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.tutorialDamageRight
b [5]

> gml_Script_anon@627@tutorial_damage@tutorial_damage (locals=4, argc=1)
:[2]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [4]

:[3]
pushi.e -1
pop.v.i builtin.argument0

:[4]
push.l 2
pop.v.l local._alignY
push.l 2
pop.v.l local._alignX
push.l 1
pop.v.l local._close
pushloc.v local._close
push.l 2
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
push.s "narrator._tutorialDamage2"@8387
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._close
push.l 2
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
push.s "narrator._tutorialDamage1"@8388
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
call.i @@NewGMLArray@@(argc=2)
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
pushi.e 145
conv.i.v
pushi.e 418
conv.i.v
call.i instance_create_depth(argc=5)
popz.v
exit.i

:[5]
push.i [function]gml_Script_anon@627@tutorial_damage@tutorial_damage
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.activate_dialogue
push.v builtin.activate_dialogue
pushbltn.v builtin.undefined
call.i @@NewGMLArray@@(argc=0)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialDamageRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialDamageLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.l 0
conv.l.v
push.s "UtilityTutorial"@8390
conv.s.v
push.s "monster._dummyDesc"@8391
conv.s.v
push.s "monster._dummy"@8392
conv.s.v
push.s "tutorialDamage"@8263
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.tutorialDamage
exit.i

:[6]
push.i [function]gml_Script_tutorial_damage
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.tutorial_damage
popz.v

:[end]