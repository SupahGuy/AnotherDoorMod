:[0]
b [75]

> gml_Script_tutorial_replay (locals=0, argc=0)
:[1]
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.nothing
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777430
push.s "cards._tutorialReplayLeftDesc"@8401
conv.s.v
push.s "cards._tutorialReplayLeft"@8402
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.tutorialReplayLeft
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 0
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=2)
push.l 0
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 0
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.nothing
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gem
call.i @@NewGMLArray@@(argc=2)
push.l 1
conv.l.v
pushref.i 16777479
push.s "cards._tutorialReplayCenterDesc"@8404
conv.s.v
push.s "cards._tutorialReplayCenter"@8405
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.tutorialReplayCenter
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
push.v [stacktop]self.tutorial
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
pushref.i 16777431
push.s "cards._tutorialReplayRightDesc"@8406
conv.s.v
push.s "cards._tutorialReplayRight"@8407
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.tutorialReplayRight
b [74]

> gml_Script_anon@1097@tutorial_replay@tutorial_replay (locals=10, argc=1)
:[2]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [4]

:[3]
pushi.e -1
pop.v.i builtin.argument0

:[4]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._tooltipDialogueList
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bf [10]

:[5]
pushi.e 0
pop.v.i local._t

:[6]
pushloc.v local._t
pushglb.v global.playersCount
cmp.v.v LT
bf [10]

:[7]
pushglb.v global.playersManager
pushloc.v local._t
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._target
pushloc.v local._target
pushi.e -4
cmp.i.v NEQ
bf [9]

:[8]
pushloc.v local._target
pushi.e -9
push.v [stacktop]self.hpMaxInit
pop.v.v local._hpMaxInit
pushloc.v local._target
pushi.e 0
conv.b.v
pushloc.v local._hpMaxInit
pushloc.v local._hpMaxInit
dup.v 3 8
dup.v 0
push.v stacktop.rezurrection
callv.v 3
popz.v

:[9]
push.v local._t
push.e 1
add.i.v
pop.v.v local._t
b [6]

:[10]
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [40]

:[11]
dup.v 0
pushi.e 28
cmp.i.v EQ
bt [40]

:[12]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [41]

:[13]
dup.v 0
pushi.e 29
cmp.i.v EQ
bt [41]

:[14]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [42]

:[15]
dup.v 0
pushi.e 30
cmp.i.v EQ
bt [42]

:[16]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [43]

:[17]
dup.v 0
pushi.e 31
cmp.i.v EQ
bt [43]

:[18]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [44]

:[19]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [45]

:[20]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [46]

:[21]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [47]

:[22]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [48]

:[23]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [49]

:[24]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [50]

:[25]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [51]

:[26]
dup.v 0
pushi.e 16
cmp.i.v EQ
bt [52]

:[27]
dup.v 0
pushi.e 17
cmp.i.v EQ
bt [53]

:[28]
dup.v 0
pushi.e 19
cmp.i.v EQ
bt [54]

:[29]
dup.v 0
pushi.e 20
cmp.i.v EQ
bt [55]

:[30]
dup.v 0
pushi.e 21
cmp.i.v EQ
bt [56]

:[31]
dup.v 0
pushi.e 22
cmp.i.v EQ
bt [57]

:[32]
dup.v 0
pushi.e 23
cmp.i.v EQ
bt [58]

:[33]
dup.v 0
pushi.e 24
cmp.i.v EQ
bt [59]

:[34]
dup.v 0
pushi.e 25
cmp.i.v EQ
bt [60]

:[35]
dup.v 0
pushi.e 33
cmp.i.v EQ
bt [61]

:[36]
dup.v 0
pushi.e 34
cmp.i.v EQ
bt [62]

:[37]
dup.v 0
pushi.e 35
cmp.i.v EQ
bt [63]

:[38]
b [64]

:[39]
b [65]

:[40]
push.s "narrator._tutorialReplay2"@8411
conv.s.v
push.s "narrator._tutorialReplay1"@8412
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=3)
popz.v
b [65]

:[41]
push.s "narrator._tutorialReplay3"@8413
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
b [65]

:[42]
push.s "narrator._tutorialReplay4"@8414
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
b [65]

:[43]
push.s "narrator._tutorialReplay5"@8415
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
b [65]

:[44]
push.s "narrator._tutorialReplay7"@8416
conv.s.v
push.s "narrator._tutorialReplay6"@8417
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=3)
popz.v
b [65]

:[45]
push.s "narrator._tutorialReplay8"@8418
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
b [65]

:[46]
push.s "narrator._tutorialReplay9"@8419
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
b [65]

:[47]
push.s "narrator._tutorialReplay10"@8420
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
b [65]

:[48]
push.s "narrator._tutorialReplay11"@8421
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayLeft
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayRight
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
pop.v.v [stacktop]self.cards
b [65]

:[49]
push.s "narrator._tutorialReplay12"@8422
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
pushref.i 16777431
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayLeft
pushi.e -9
pop.v.v [stacktop]self.sprite
pushref.i 16777430
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayRight
pushi.e -9
pop.v.v [stacktop]self.sprite
b [65]

:[50]
push.s "narrator._tutorialReplay14"@8423
conv.s.v
push.s "narrator._tutorialReplay13"@8424
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=3)
popz.v
pushref.i 16777430
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayLeft
pushi.e -9
pop.v.v [stacktop]self.sprite
pushref.i 16777431
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayRight
pushi.e -9
pop.v.v [stacktop]self.sprite
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
pop.v.v [stacktop]self.cards
b [65]

:[51]
push.s "narrator._tutorialReplay15"@8425
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
b [65]

:[52]
push.s "narrator._tutorialReplay16"@8426
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
b [65]

:[53]
push.s "narrator._tutorialReplay17"@8427
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
b [65]

:[54]
push.s "narrator._tutorialReplay18"@8428
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
b [65]

:[55]
push.s "narrator._tutorialReplay19"@8429
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayCenter
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
pop.v.v [stacktop]self.cards
b [65]

:[56]
push.s "narrator._tutorialReplay20"@8430
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
pushi.e 2
conv.i.v
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayCenter
pushi.e -9
pushi.e 0
pop.v.v [array]self.amount
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayCenter
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
pop.v.v [stacktop]self.cards
b [65]

:[57]
push.s "narrator._tutorialReplay21"@8431
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
pushi.e 4
conv.i.v
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayCenter
pushi.e -9
pushi.e 0
pop.v.v [array]self.amount
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayCenter
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
pop.v.v [stacktop]self.cards
b [65]

:[58]
push.s "narrator._tutorialReplay23"@8432
conv.s.v
push.s "narrator._tutorialReplay22"@8433
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=3)
popz.v
pushi.e 8
conv.i.v
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayCenter
pushi.e -9
pushi.e 0
pop.v.v [array]self.amount
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayCenter
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
pop.v.v [stacktop]self.cards
b [65]

:[59]
push.s "narrator._tutorialReplay24"@8434
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
pushi.e 16
conv.i.v
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayCenter
pushi.e -9
pushi.e 0
pop.v.v [array]self.amount
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayCenter
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
pop.v.v [stacktop]self.cards
b [65]

:[60]
push.s "narrator._tutorialReplay25"@8435
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
pushi.e 1
conv.i.v
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayCenter
pushi.e -9
pushi.e 0
pop.v.v [array]self.amount
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayLeft
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
pop.v.v [stacktop]self.cards
b [65]

:[61]
push.s "narrator._tutorialReplay26"@8436
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
b [65]

:[62]
push.s "narrator._tutorialReplay27"@8437
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
b [65]

:[63]
push.s "narrator._tutorialReplay28"@8438
conv.s.v
pushloc.v local._tooltipDialogueList
call.i array_push(argc=2)
popz.v
b [65]

:[64]
b [65]

:[65]
popz.v
pushloc.v local._tooltipDialogueList
call.i array_length(argc=1)
pop.v.v local._tooltipDialogueListLength
pushloc.v local._tooltipDialogueListLength
pushi.e 0
cmp.i.v GT
bf [73]

:[66]
push.l 2
pop.v.l local._alignY
push.l 2
pop.v.l local._alignX
push.l 1
pop.v.l local._close
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._newTooltipList
pushi.e 0
pop.v.i local._i

:[67]
pushloc.v local._i
pushloc.v local._tooltipDialogueListLength
cmp.v.v LT
bf [72]

:[68]
pushloc.v local._i
pushloc.v local._tooltipDialogueListLength
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [70]

:[69]
pushloc.v local._close
push.l 2
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._tooltipDialogueList
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._newTooltipList
call.i array_push(argc=2)
popz.v
b [71]

:[70]
pushloc.v local._close
push.l 2
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._tooltipDialogueList
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._newTooltipList
call.i array_push(argc=2)
popz.v

:[71]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [67]

:[72]
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

:[73]
exit.i

:[74]
push.i [function]gml_Script_anon@1097@tutorial_replay@tutorial_replay
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
push.v [stacktop]self.tutorialReplayRight
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayLeft
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
push.s "tutorialReplay"@8261
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.tutorialReplay
exit.i

:[75]
push.i [function]gml_Script_tutorial_replay
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.tutorial_replay
popz.v

:[end]