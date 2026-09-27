; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.s "structMonster"@5211
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [2]

:[1]
push.s "oMonster variable 'structMonster' is missing"@10435
conv.s.v
call.i gml_Script_trace(argc=1)
popz.v
call.i game_end(argc=0)
popz.v
b [3]

:[2]
push.v builtin.structMonster
pushi.e -9
push.v [stacktop]self.className
pop.v.v builtin.className
push.v builtin.structMonster
pushi.e -9
push.v [stacktop]self.spriteName
pop.v.v builtin.spriteName
push.v builtin.structMonster
pushi.e -9
push.v [stacktop]self.desc
pop.v.v builtin.desc
push.v builtin.structMonster
pushi.e -9
push.v [stacktop]self.cards
pop.v.v builtin.cards
push.v builtin.structMonster
pushi.e -9
push.v [stacktop]self.mushroomCards
pop.v.v builtin.mushroomCards
push.v builtin.structMonster
pushi.e -9
push.v [stacktop]self.monster_script_end
pop.v.v builtin.monster_script_end
push.v builtin.structMonster
pushi.e -9
push.v [stacktop]self.activate_dialogue
pop.v.v builtin.activate_dialogue

:[3]
push.l 0
pop.v.l builtin.state
push.l 0
pop.v.l builtin.stateNext
pushbltn.v builtin.undefined
pop.v.v builtin.statePrev
pushi.e 0
pop.v.b builtin.isMiniGameFinished
push.v builtin.cards
call.i array_length(argc=1)
pop.v.v builtin.fightRoundCountMax
pushi.e 0
pop.v.i builtin.fightRoundCount
pushi.e 0
pop.v.i builtin.dialogueRoundCount
b [5]

> gml_Script_anon@864@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[4]
push.v builtin.fightRoundCount
push.e 1
add.i.v
pop.v.v builtin.fightRoundCount
push.v builtin.dialogueRoundCount
push.e 1
add.i.v
pop.v.v builtin.dialogueRoundCount
exit.i

:[5]
push.i [function]gml_Script_anon@864@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.increase_fight_round_counter
push.v builtin.spriteName
push.s "spr{0}Idle"@8657
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.sprite_index
push.v builtin.className
pop.v.v local._theName
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.dolly
cmp.v.v EQ
bf [10]

:[6]
push.s "lore.ini"@5582
conv.s.v
call.i ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "dolly"@5560
conv.s.v
push.s "monster"@10438
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local._dollyNbr
push.v local._dollyNbr
push.e 1
add.i.v
pop.v.v local._dollyNbr
pushloc.v local._dollyNbr
push.s "dolly"@5560
conv.s.v
push.s "monster"@10438
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushloc.v local._dollyNbr
pop.v.v local._dollyNbrLabel

:[7]
pushloc.v local._dollyNbrLabel
call.i string_length(argc=1)
pushi.e 3
cmp.i.v LT
bf [9]

:[8]
pushloc.v local._dollyNbrLabel
push.s "0"@1480
conv.s.v
call.i string_concat(argc=2)
pop.v.v local._dollyNbrLabel
b [7]

:[9]
pushloc.v local._dollyNbrLabel
push.s "#"@3571
conv.s.v
push.v builtin.className
call.i string_concat(argc=3)
pop.v.v local._theName
call.i ini_close(argc=0)
popz.v

:[10]
pushloc.v local._theName
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.wrap
pushi.e 152
pushglb.v global.zoom
mul.v.i
dup.e 2 8
callv.v 1
pop.v.v builtin.txtName
push.s "ease-out"@8749
conv.s.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.animOpacity
push.v builtin.animOpacity
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushi.e 0
pop.v.i builtin.image_alpha
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.shop
cmp.v.v EQ
bf [17]

:[11]
pushglb.v global.audio
pushi.e 1
conv.b.v
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.fade_out
callv.v 2
popz.v
b [16]

> gml_Script_anon@1881@gml_Object_oMonster_Create_0 (locals=6, argc=0)
:[12]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayEffect
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._copyOfEffect
pushglb.v global.effectRandom
call.i array_length(argc=1)
pushi.e 0
conv.i.v
pushglb.v global.effectRandom
pushi.e 0
conv.i.v
pushloc.v local._copyOfEffect
call.i array_copy(argc=5)
popz.v
pushi.e 0
pop.v.i local._n

:[13]
pushloc.v local._n
pushi.e 4
cmp.i.v LT
bf [15]

:[14]
pushloc.v local._copyOfEffect
call.i array_length(argc=1)
pop.v.v local._length
pushloc.v local._length
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._index
pushi.e -7
pushloc.v local._index
conv.v.i
push.v [array]self._copyOfEffect
pop.v.v local._effect
pushloc.v local._effect
pushloc.v local._arrayEffect
call.i array_push(argc=2)
popz.v
pushi.e 1
conv.i.v
pushloc.v local._index
pushloc.v local._copyOfEffect
call.i array_delete(argc=3)
popz.v
push.v local._n
push.e 1
add.i.v
pop.v.v local._n
b [13]

:[15]
pushi.e -7
pushi.e 0
push.v [array]self._arrayEffect
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem1
pushi.e -9
pop.v.v [stacktop]self.actionType
pushi.e -7
pushi.e 0
push.v [array]self._arrayEffect
pushi.e -9
push.v [stacktop]self.spriteItemLinked
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem1
pushi.e -9
pop.v.v [stacktop]self.sprite
pushi.e -7
pushi.e 1
push.v [array]self._arrayEffect
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem2
pushi.e -9
pop.v.v [stacktop]self.actionType
pushi.e -7
pushi.e 1
push.v [array]self._arrayEffect
pushi.e -9
push.v [stacktop]self.spriteItemLinked
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem2
pushi.e -9
pop.v.v [stacktop]self.sprite
pushi.e -7
pushi.e 2
push.v [array]self._arrayEffect
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem3
pushi.e -9
pop.v.v [stacktop]self.actionType
pushi.e -7
pushi.e 2
push.v [array]self._arrayEffect
pushi.e -9
push.v [stacktop]self.spriteItemLinked
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem3
pushi.e -9
pop.v.v [stacktop]self.sprite
pushi.e -7
pushi.e 3
push.v [array]self._arrayEffect
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem4
pushi.e -9
pop.v.v [stacktop]self.actionType
pushi.e -7
pushi.e 3
push.v [array]self._arrayEffect
pushi.e -9
push.v [stacktop]self.spriteItemLinked
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem4
pushi.e -9
pop.v.v [stacktop]self.sprite
exit.i

:[16]
push.i [function]gml_Script_anon@1881@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.draw_shop

:[17]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.funfair
cmp.v.v EQ
bf [51]

:[18]
pushref.i 11
pushi.e -9
pushenv [20]

:[19]
call.i @@This@@(argc=0)
push.v builtin.funfair_init
callv.v 0
popz.v

:[20]
popenv [19]
pushglb.v global.audio
pushi.e 1
conv.b.v
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.fade_out
callv.v 2
popz.v
pushglb.v global.displayControllerAsset
push.l 0
cmp.l.v EQ
bf [22]

:[21]
pushref.i 16777725
pop.v.v local._btnSpr
b [23]

:[22]
pushref.i 16777282
pop.v.v local._btnSpr

:[23]
pushloc.v local._btnSpr
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v builtin.animBtn
push.v builtin.animBtn
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushref.i 16777997
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v builtin.animArrow
push.v builtin.animArrow
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushref.i 33554467
call.i audio_sound_length(argc=1)
pop.v.v local._duration
pushloc.v local._duration
push.d 3.33
div.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.timerFunfairVisible
pushloc.v local._duration
push.d 3.33
div.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.timerFunfairDisapear
pushloc.v local._duration
push.d 3.33
div.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.timerFunfairInvisible
b [33]

> gml_Script_anon@3718@gml_Object_oMonster_Create_0 (locals=5, argc=0)
:[24]
push.v builtin.timerFunfairVisible
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushglb.v global.displayControllerAsset
push.l 0
cmp.l.v EQ
bf [26]

:[25]
pushref.i 16777725
pop.v.v local._btnSpr
b [27]

:[26]
pushref.i 16777273
pop.v.v local._btnSpr

:[27]
pushloc.v local._btnSpr
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v builtin.animBtn
push.v builtin.animBtn
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushi.e 0
conv.b.v
pushi.e 10
conv.i.v
pushref.i 33554467
call.i audio_play_sound(argc=3)
pop.v.v local._audio
pushglb.v global.dayNightCycle
dup.v 0 8
dup.v 0
push.v stacktop.get_event
callv.v 0
push.l 1
cmp.l.v EQ
bf [29]

:[28]
pushglb.v global.dayNightCycle
pushi.e -9
push.v [stacktop]self.yuleDuration
b [30]

:[29]
pushi.e -1
conv.i.v

:[30]
pop.v.v local._durationMonster
pushloc.v local._durationMonster
pushi.e -1
cmp.i.v NEQ
bf [32]

:[31]
pushref.i 33554467
call.i audio_sound_length(argc=1)
pop.v.v local._durationDefault
pushloc.v local._durationDefault
pushloc.v local._durationMonster
div.v.v
pop.v.v local._newSpeed
pushloc.v local._newSpeed
pushloc.v local._audio
call.i audio_sound_pitch(argc=2)
popz.v

:[32]
exit.i

:[33]
push.i [function]gml_Script_anon@3718@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.run_wheel
b [37]

> gml_Script_anon@4474@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[34]
pushref.i 11
pushi.e -9
pushenv [36]

:[35]
pushi.e 270
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.funfair_apply_angle
callv.v 1
popz.v

:[36]
popenv [35]
exit.i

:[37]
push.i [function]gml_Script_anon@4474@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.focus_first_price
b [46]

> gml_Script_anon@4578@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[38]
pushref.i 11
pushi.e -9
pushenv [45]

:[39]
push.v builtin.number
pushi.e 0
cmp.i.v EQ
bt [41]

:[40]
push.v builtin.number
pushi.e 2
cmp.i.v EQ
b [42]

:[41]
push.e 1

:[42]
bf [44]

:[43]
pushi.e 0
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.funfair_apply_angle
callv.v 1
popz.v
b [45]

:[44]
pushi.e 180
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.funfair_apply_angle
callv.v 1
popz.v

:[45]
popenv [39]
exit.i

:[46]
push.i [function]gml_Script_anon@4578@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.focus_second_price
b [50]

> gml_Script_anon@4792@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[47]
pushref.i 11
pushi.e -9
pushenv [49]

:[48]
pushi.e 90
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.funfair_apply_angle
callv.v 1
popz.v

:[49]
popenv [48]
exit.i

:[50]
push.i [function]gml_Script_anon@4792@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.focus_third_price
push.l 0
pop.v.l local._alignY
push.l 0
pop.v.l local._sound
push.l 1
pop.v.l local._close
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._funfairRule12"@10463
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._funfairRule11"@10464
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.focus_third_price
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushbltn.v builtin.undefined
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.funFairGemBag
pushi.e -9
pushi.e 0
push.v [array]self.amount
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.funFairGemBag
pushi.e -9
push.v [stacktop]self.name
call.i gml_Script_LocPreprocessor(argc=1)
push.s "monster._funfairRule10#{0}#{1}"@10465
conv.s.v
call.i @@string@@(argc=3)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=9)
push.v builtin.focus_second_price
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushbltn.v builtin.undefined
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.funFairGemPurse
pushi.e -9
pushi.e 0
push.v [array]self.amount
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.funFairGemPurse
pushi.e -9
push.v [stacktop]self.name
call.i gml_Script_LocPreprocessor(argc=1)
push.s "monster._funfairRule9#{0}#{1}"@10466
conv.s.v
call.i @@string@@(argc=3)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._funfairRule8"@10467
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.focus_first_price
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushbltn.v builtin.undefined
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.funFairPileOfGem
pushi.e -9
pushi.e 0
push.v [array]self.amount
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.funFairPileOfGem
pushi.e -9
push.v [stacktop]self.name
call.i gml_Script_LocPreprocessor(argc=1)
push.s "monster._funfairRule7#{0}#{1}"@10468
conv.s.v
call.i @@string@@(argc=3)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._funfairRule6"@10469
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._funfairRule5"@10470
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._funfairRule4"@10471
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._funfairRule3"@10472
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._funfairRule2"@10473
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._funfairRule1"@10474
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
call.i @@NewGMLArray@@(argc=12)
pop.v.v builtin.newTooltipListState1
push.v builtin.newTooltipListState1
call.i gml_Script_set_list_of_tooltip(argc=1)
popz.v

:[51]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.babayaga
cmp.v.v EQ
bf [89]

:[52]
pushglb.v global.audio
pushi.e 1
conv.b.v
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.fade_out
callv.v 2
popz.v
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.babaPlayersNbr
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.babaHands
pushi.e -4
pop.v.i builtin.babaCard
b [64]

> gml_Script_anon@6554@gml_Object_oMonster_Create_0 (locals=8, argc=0)
:[53]
pushi.e 0
conv.i.v
pushref.i 6
call.i instance_find(argc=2)
pop.v.v builtin.babaCard
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._fighters
pushi.e 0
pop.v.i local._f

:[54]
pushloc.v local._f
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
call.i array_length(argc=1)
cmp.v.v LT
bf [58]

:[55]
pushglb.v global.playersManager
pushloc.v local._f
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
bf [57]

:[56]
pushglb.v global.playersManager
pushloc.v local._f
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushloc.v local._fighters
call.i array_push(argc=2)
popz.v

:[57]
push.v local._f
push.e 1
add.i.v
pop.v.v local._f
b [54]

:[58]
pushloc.v local._fighters
call.i array_length(argc=1)
pop.v.v local._fightersLength
pushi.e 212
pop.v.i local._xMin
pushi.e 640
pop.v.i local._xMax
pushloc.v local._xMax
pushloc.v local._xMin
sub.v.v
pop.v.v local._xWidth
pushi.e 0
pop.v.i local._f

:[59]
pushloc.v local._f
pushloc.v local._fightersLength
cmp.v.v LT
bf [63]

:[60]
pushloc.v local._xMin
pushloc.v local._xWidth
pushi.e 2
conv.i.d
div.d.v
pushloc.v local._fightersLength
div.v.v
add.v.v
pushloc.v local._xWidth
pushloc.v local._fightersLength
div.v.v
pushloc.v local._f
mul.v.v
add.v.v
pop.v.v local._xInit
push.d 0.75
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
push.d 0.5
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pushloc.v local._xInit
pushloc.v local._xInit
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
pushi.e 1
add.i.v
push.s "sprCursorHand{0}"@9046
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
b [62]

> gml_Script____struct___445@anon@6554@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[61]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.number
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.sprite
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.xInit
pushi.e 200
pop.v.i self.yInit
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.x
pushi.e 200
pop.v.i self.y
pushi.e 0
pop.v.i self.alpha
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.timerHide
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.moveHand
exit.i

:[62]
push.i [function]gml_Script____struct___445@anon@6554@gml_Object_oMonster_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___445
call.i @@NewGMLObject@@(argc=7)
pop.v.v local._handStruct
pushloc.v local._handStruct
push.v builtin.babaHands
call.i array_push(argc=2)
popz.v
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
push.v builtin.babaPlayersNbr
call.i array_push(argc=2)
popz.v
push.v local._f
push.e 1
add.i.v
pop.v.v local._f
b [59]

:[63]
exit.i

:[64]
push.i [function]gml_Script_anon@6554@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.init_baba
pushi.e 427
pop.v.i builtin.babaHandXTo
pushi.e 124
pop.v.i builtin.babaHandYTo
push.d 0.5
conv.d.v
call.i @@This@@(argc=0)
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.showHandTimer
b [66]

> gml_Script_anon@7777@gml_Object_oMonster_Create_0 (locals=0, argc=1)
:[65]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.moveHand
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
exit.i

:[66]
push.i [function]gml_Script_anon@7777@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.move_hand_isba
b [72]

> gml_Script_anon@7858@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[67]
pushglb.v global.isClient
conv.v.b
bf [69]

:[68]
exit.i

:[69]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [71]

:[70]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.babayaga
callv.v 0
popz.v

:[71]
call.i @@This@@(argc=0)
push.v builtin.apply_babayaga
callv.v 0
popz.v
exit.i

:[72]
push.i [function]gml_Script_anon@7858@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.sent_babayaga
b [84]

> gml_Script_anon@8063@gml_Object_oMonster_Create_0 (locals=3, argc=0)
:[73]
pushi.e 0
pop.v.i local._i

:[74]
pushloc.v local._i
push.v builtin.babaHands
call.i array_length(argc=1)
cmp.v.v LT
bf [83]

:[75]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.number
pop.v.v local._pNumber
pushglb.v global.playersManager
pushloc.v local._pNumber
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._fighter
pushglb.v global.playersManager
pushloc.v local._pNumber
dup.v 1 8
dup.v 0
push.v stacktop.has_acted
callv.v 1
conv.v.b
not.b
bf [78]

:[76]
pushloc.v local._fighter
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
bf [78]

:[77]
pushloc.v local._fighter
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
b [79]

:[78]
push.e 0

:[79]
bf [82]

:[80]
pushloc.v local._fighter
pushi.e 0
conv.b.v
pushi.e -1
conv.i.v
push.v self.damageBabayaga
call.i floor(argc=1)
pushi.e 1
conv.b.v
dup.v 4 8
dup.v 0
push.v stacktop.receive_damage
callv.v 4
popz.v
pushloc.v local._fighter
pushi.e -9
push.v [stacktop]self.hp
pushi.e 0
cmp.i.v EQ
bf [82]

:[81]
pushi.e 1
conv.b.v
pushloc.v local._i
call.i @@This@@(argc=0)
push.v builtin.move_hand_isba
callv.v 2
popz.v
pushglb.v global.playersManager
pushi.e 0
conv.b.v
push.l 13
conv.l.v
pushloc.v local._pNumber
dup.v 3 8
dup.v 0
push.v stacktop.apply_action
callv.v 3
popz.v

:[82]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [74]

:[83]
push.v self.damageBabayaga
push.d 0.2
add.d.v
pop.v.v self.damageBabayaga
exit.i

:[84]
push.i [function]gml_Script_anon@8063@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.apply_babayaga
push.v builtin.sent_babayaga
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushbltn.v builtin.undefined
push.d 1.5
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pop.v.v builtin.timerBabayaga
pushref.i 16777282
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e -1
conv.i.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v builtin.animBtnStop
pushi.e 1
pop.v.i builtin.damageBabayaga
pushi.e 0
pop.v.b builtin.sacrificeStarted
push.s "curve1"@8565
conv.s.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.d 0.2
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.bellTimer
pushi.e 0
pop.v.i builtin.bellOffset
pushi.e 0
pop.v.i builtin.bellOffsetMin
pushi.e 4
pop.v.i builtin.bellOffsetMax
push.s "monster._babayagaStop"@10505
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.txtStop
b [86]

> gml_Script_anon@9123@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[85]
push.v builtin.animBtnStop
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
exit.i

:[86]
push.i [function]gml_Script_anon@9123@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.talk_finished
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.babayagaStop
pushi.e -9
pushi.e 0
push.v [array]self.amount
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.babayagaStop
call.i gml_Script_add_var_to_text(argc=2)
pop.v.v local._cardDesc
push.l 2
pop.v.l local._alignY
push.v builtin.talk_finished
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 1
conv.l.v
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._babayagaSacrifice7"@10509
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
push.l 1
conv.l.v
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._babayagaSacrifice6"@10510
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.v builtin.showHandTimer
pushi.e -9
push.v [stacktop]self.run
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 1
conv.l.v
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._babayagaSacrifice5"@10511
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
push.l 1
conv.l.v
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._babayagaSacrifice4"@10512
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 1
conv.l.v
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._babayagaSacrifice3"@10513
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 1
conv.l.v
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._babayagaSacrifice2"@10514
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 1
conv.l.v
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._babayagaSacrifice1"@10515
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
call.i @@NewGMLArray@@(argc=7)
pop.v.v builtin.dialogueRules
push.v builtin.dialogueRules
call.i gml_Script_set_list_of_tooltip(argc=1)
popz.v
b [88]

> gml_Script_anon@10031@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[87]
pushi.e 1
pop.v.b builtin.isMiniGameFinished
exit.i

:[88]
push.i [function]gml_Script_anon@10031@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.babayaga_end
pushbltn.v builtin.undefined
pop.v.v builtin.dialogueFinished

:[89]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.faun
cmp.v.v EQ
bf [127]

:[90]
pushi.e 90
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.donkeyCapTimer
pushi.e 0
pop.v.i builtin.indexPlayerBuy
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.arrayPlayerGem
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
pop.v.v local._fighters
pushi.e 0
pop.v.i local._pg

:[91]
pushloc.v local._pg
pushloc.v local._fighters
call.i array_length(argc=1)
cmp.v.v LT
bf [100]

:[92]
pushi.e -7
pushloc.v local._pg
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
bf [94]

:[93]
pushi.e -7
pushloc.v local._pg
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
b [95]

:[94]
push.e 0

:[95]
bf [99]

:[96]
pushi.e -7
pushloc.v local._pg
conv.v.i
push.v [array]self._fighters
pop.v.v local._player
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int_range(argc=3)
pushloc.v local._player
dup.v 0 8
dup.v 0
push.v stacktop.get_gem_secured
callv.v 0
pushloc.v local._player
pushi.e -9
push.v [stacktop]self.number
b [98]

> gml_Script____struct___446@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[97]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.number
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.gem
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.randomValue
exit.i

:[98]
push.i [function]gml_Script____struct___446@gml_Object_oMonster_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___446
call.i @@NewGMLObject@@(argc=4)
push.v builtin.arrayPlayerGem
call.i array_push(argc=2)
popz.v

:[99]
push.v local._pg
push.e 1
add.i.v
pop.v.v local._pg
b [91]

:[100]
b [106]

> gml_Script_anon@10742@gml_Object_oMonster_Create_0 (locals=0, argc=2)
:[101]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.gem
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.gem
cmp.v.v EQ
bf [104]

:[102]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.randomValue
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.randomValue
sub.v.v
ret.v

:[103]
b [105]

:[104]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.gem
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.gem
sub.v.v
ret.v

:[105]
exit.i

:[106]
push.i [function]gml_Script_anon@10742@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v builtin.arrayPlayerGem
call.i array_sort(argc=2)
popz.v
b [108]

> gml_Script_anon@11036@gml_Object_oMonster_Create_0 (locals=8, argc=0)
:[107]
pushi.e -1
push.v builtin.indexPlayerBuy
conv.v.i
push.v [array]self.arrayPlayerGem
pushi.e -9
push.v [stacktop]self.number
pop.v.v local._numberPlayer
push.s "[/c]"@9971
conv.s.v
pushglb.v global.playersManager
pushloc.v local._numberPlayer
dup.v 1 8
dup.v 0
push.v stacktop.get_name
callv.v 1
pushloc.v local._numberPlayer
push.s "[p{0}]"@9972
conv.s.v
call.i @@string@@(argc=2)
call.i string_concat(argc=3)
pop.v.v local._name
pushloc.v local._name
push.s "faun._choiceName#{0}"@10529
conv.s.v
call.i @@string@@(argc=2)
pop.v.v local._tooltipText
push.l 0
pop.v.l local._alignY
push.l 2
pop.v.l local._alignX
push.l 0
pop.v.l local._close
push.v builtin.donkeyCapTimer
pushi.e -9
push.v [stacktop]self.run
push.v builtin.donkeyCapTimer
pushi.e -9
push.v [stacktop]self.reset
call.i @@NewGMLArray@@(argc=2)
pop.v.v local._theCallBack
pushloc.v local._theCallBack
pushbltn.v builtin.undefined
pushloc.v local._close
push.l 3
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
pushloc.v local._tooltipText
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=8)
call.i @@NewGMLArray@@(argc=1)
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
pushi.e 80
conv.i.v
pushi.e 200
conv.i.v
call.i instance_create_depth(argc=5)
popz.v
exit.i

:[108]
push.i [function]gml_Script_anon@11036@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.display_dialogue_faun
b [114]

> gml_Script_anon@11844@gml_Object_oMonster_Create_0 (locals=4, argc=0)
:[109]
pushglb.v global.playersManager
push.l 13
conv.l.v
pushi.e -1
push.v builtin.indexPlayerBuy
conv.v.i
push.v [array]self.arrayPlayerGem
pushi.e -9
push.v [stacktop]self.number
dup.v 2 8
dup.v 0
push.v stacktop.apply_action
callv.v 2
popz.v
pushi.e -6
push.v builtin.indexPlayerBuy
conv.v.i
push.v [array]self.arrayPlayerGem
pop.v.v local._char
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [113]

:[110]
pushglb.v global.gameWidth
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._x
pushi.e -100
pop.v.i local._y
push.l 5
conv.l.v
push.l 19
conv.l.v
pushi.e -1
conv.i.v
b [112]

> gml_Script____struct___447@anon@11844@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[111]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.number
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.theType
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.stateNext
exit.i

:[112]
push.i [function]gml_Script____struct___447@anon@11844@gml_Object_oMonster_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___447
call.i @@NewGMLObject@@(argc=4)
pushref.i 60
pushglb.v global.depthManager
push.s "cards"@4255
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushloc.v local._y
pushloc.v local._x
call.i instance_create_depth(argc=5)
pop.v.v local._donkeyCap
pushloc.v local._donkeyCap
pushloc.v local._donkeyCap
pushi.e -9
push.v [stacktop]self.yDraw
pushloc.v local._donkeyCap
pushi.e -9
push.v [stacktop]self.xDraw
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.number
dup.v 3 8
dup.v 0
push.v stacktop.clone
callv.v 3
popz.v
pushloc.v local._donkeyCap
call.i instance_destroy(argc=1)
popz.v

:[113]
exit.i

:[114]
push.i [function]gml_Script_anon@11844@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.clone_donkey_cap
b [126]

> gml_Script_anon@12515@gml_Object_oMonster_Create_0 (locals=4, argc=0)
:[115]
pushi.e 0
pop.v.i local._i

:[116]
pushloc.v local._i
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.tokenChain
call.i array_length(argc=1)
cmp.v.v LT
bf [125]

:[117]
push.l 5
conv.l.v
pushglb.v global.monsterList
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.tokenList
pushloc.v local._i
pushi.e -1
conv.i.v
b [119]

> gml_Script____struct___448@anon@12515@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[118]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.number
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.numberBuy
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.theType
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.stateNext
exit.i

:[119]
push.i [function]gml_Script____struct___448@anon@12515@gml_Object_oMonster_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___448
call.i @@NewGMLObject@@(argc=5)
pushref.i 60
pushglb.v global.depthManager
push.s "cards"@4255
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushloc.v local._i
add.v.v
pushglb.v global.uiPos
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.tokenChain
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.tokenChain
pushi.e -9
push.v [stacktop]self.theSprite
call.i sprite_get_height(argc=1)
add.v.v
pushglb.v global.uiPos
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.tokenChain
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v local._token
pushloc.v local._i
pushloc.v local._token
pushglb.v global.uiPos
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.tokenChain
pushi.e -9
push.v [stacktop]self.theSprite
b [121]

> gml_Script____struct___449@anon@12515@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[120]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.sprite_index
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.token
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.chainNoise
exit.i

:[121]
push.i [function]gml_Script____struct___449@anon@12515@gml_Object_oMonster_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___449
call.i @@NewGMLObject@@(argc=4)
pushref.i 7
pushglb.v global.depthManager
push.s "cards"@4255
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushloc.v local._i
add.v.v
pushglb.v global.uiPos
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.tokenChain
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.tokenChain
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v local._chain
pushloc.v local._chain
pushloc.v local._token
pushi.e -9
pop.v.v [stacktop]self.chainLinked
pushi.e 0
pop.v.i local._t

:[122]
pushloc.v local._t
pushloc.v local._token
pushi.e -9
push.v [stacktop]self.tooltip
call.i array_length(argc=1)
cmp.v.v LT
bf [124]

:[123]
pushloc.v local._token
pushi.e -9
pushloc.v local._t
conv.v.i
push.v [array]self.tooltip
push.l 1
conv.l.v
push.l 2
conv.l.v
pushi.e 170
conv.i.v
pushi.e 426
conv.i.v
dup.v 4 8
dup.v 0
push.v stacktop.reposition
callv.v 4
popz.v
push.v local._t
push.e 1
add.i.v
pop.v.v local._t
b [122]

:[124]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [116]

:[125]
exit.i

:[126]
push.i [function]gml_Script_anon@12515@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.generate_token_and_chain

:[127]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.platonia
cmp.v.v EQ
bf [211]

:[128]
pushi.e 1
pop.v.b builtin.firstRun
pushglb.v global.playersCount
pushi.e 100
mul.i.v
pop.v.v global.platoniaDefaultPrice
pushglb.v global.platoniaDefaultPrice
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.platonia
pushi.e -9
pushi.e 0
pop.v.v [array]self.amount
pushi.e 0
pop.v.i builtin.totalTicketsAsked
pushi.e 0
pop.v.i builtin.finalPrice
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.playerTicketNumbers
pushi.e 0
pop.v.i local._i

:[129]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [131]

:[130]
pushi.e 0
conv.i.v
push.v builtin.playerTicketNumbers
call.i array_push(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [129]

:[131]
b [140]

> gml_Script_anon@14414@gml_Object_oMonster_Create_0 (locals=0, argc=2)
:[132]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [134]

:[133]
pushi.e 0
pop.v.b builtin.argument1

:[134]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [136]

:[135]
push.v arg.argument1
conv.v.b
b [137]

:[136]
push.e 0

:[137]
bf [139]

:[138]
pushglb.v global.networkingManager
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.increase_ticket_number_platonia
callv.v 1
popz.v

:[139]
pushi.e -6
push.v arg.argument0
conv.v.i
dup.i 1
push.v [array]self.playerTicketNumbers
push.e 1
add.i.v
pop.i.v [array]self.playerTicketNumbers
exit.i

:[140]
push.i [function]gml_Script_anon@14414@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.increase_ticket_number_platonia
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.playersFaces
pushi.e 0
pop.v.i local._i

:[141]
pushloc.v local._i
pushglb.v global.playersCount
pushi.e 2
mul.i.v
cmp.v.v LT
bf [143]

:[142]
pushglb.v global.playersManager
pushloc.v local._i
pushglb.v global.playersCount
mod.v.v
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushi.e -9
push.v [stacktop]self.spriteHead
push.v builtin.playersFaces
call.i array_push(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [141]

:[143]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.slotsFaces
pushi.e 0
pop.v.i local._i

:[144]
pushloc.v local._i
pushi.e 4
cmp.i.v LT
bf [148]

:[145]
push.v builtin.playersFaces
pushloc.v local._i
b [147]

> gml_Script____struct___450@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[146]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.slotNumber
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.itemsList
pushref.i 16777770
pop.v.v self.spritePaneTop
pushref.i 16777769
pop.v.v self.spritePaneBottom
exit.i

:[147]
push.i [function]gml_Script____struct___450@gml_Object_oMonster_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___450
call.i @@NewGMLObject@@(argc=3)
pushref.i 55
pushglb.v global.depthManager
push.s "cards"@4255
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushglb.v global.uiPos
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.platoniaBgReveal
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.platoniaBgReveal
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v local._slot
pushloc.v local._slot
push.v builtin.slotsFaces
call.i array_push(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [144]

:[148]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.slotsPrice
pushi.e 0
pop.v.i local._i

:[149]
pushloc.v local._i
pushi.e 4
cmp.i.v LT
bf [153]

:[150]
pushref.i 16777809
pushref.i 16777817
pushref.i 16777816
pushref.i 16777815
pushref.i 16777814
pushref.i 16777813
pushref.i 16777812
pushref.i 16777811
pushref.i 16777810
pushref.i 16777808
pushref.i 16777807
call.i @@NewGMLArray@@(argc=11)
pushloc.v local._i
b [152]

> gml_Script____struct___451@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[151]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.slotNumber
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.itemsList
exit.i

:[152]
push.i [function]gml_Script____struct___451@gml_Object_oMonster_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___451
call.i @@NewGMLObject@@(argc=3)
pushref.i 55
pushglb.v global.depthManager
push.s "cards"@4255
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushglb.v global.uiPos
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.platoniaPrice
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.platoniaPrice
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v local._slot
pushloc.v local._slot
push.v builtin.slotsPrice
call.i array_push(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [149]

:[153]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.playersButtons
pushi.e 0
pop.v.i local._i

:[154]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [158]

:[155]
push.l 0
conv.l.v
push.l 2
conv.l.v
pushloc.v local._i
push.s "sprPlatoniaBtn{0}"@10565
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
b [157]

> gml_Script____struct___452@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[156]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.sprite_index
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.alignH
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.alignV
pushi.e 1
pop.v.b self.isDisabled
exit.i

:[157]
push.i [function]gml_Script____struct___452@gml_Object_oMonster_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___452
call.i @@NewGMLObject@@(argc=4)
pushref.i 33
pushglb.v global.depthManager
push.s "cards"@4255
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushloc.v local._i
add.v.v
pushglb.v global.uiPos
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.platoniaButtons
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.platoniaButtons
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v local._button
pushloc.v local._button
push.v builtin.playersButtons
call.i array_push(argc=2)
popz.v
pushloc.v local._button
pushloc.v local._i
call.i @@NewGMLArray@@(argc=1)
dup.v 1 8
dup.v 0
push.v stacktop.set_interaction_allowed_by
callv.v 1
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [154]

:[158]
push.s "linear"@8304
conv.s.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.clockRollBackTimer
push.s "linear"@8304
conv.s.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.clockTimer
pushref.i 16777767
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
pop.v.v builtin.clockTotalImage
push.v builtin.clockTotalImage
pop.v.v builtin.clockCurrentImage
push.l 0
pop.v.l local._sound
push.l 1
pop.v.l local._close
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
push.s "monster._platoniaRule6"@10573
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
push.s "monster._platoniaRule5"@10574
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
push.s "monster._platoniaRule4"@10575
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
push.s "monster._platoniaRule3"@10576
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
push.s "monster._platoniaRule2"@10577
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
push.s "monster._platoniaRule1"@10578
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
call.i @@NewGMLArray@@(argc=6)
pop.v.v builtin.newTooltipListState1
push.v builtin.newTooltipListState1
call.i gml_Script_set_list_of_tooltip(argc=1)
popz.v
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
push.s "monster._platoniaRule7"@10579
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.newTooltipListState2
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
push.s "monster._platoniaRule8"@10581
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.newTooltipListState3
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
push.s "monster._platoniaRule9"@10583
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.newTooltipListState4
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
push.s "monster._platoniaRule14"@10585
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
push.s "monster._platoniaRule13"@10586
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.platonia
pushi.e -9
pushi.e 0
push.v [array]self.amount
push.s "monster._platoniaRule12#{0}"@10587
conv.s.v
call.i @@string@@(argc=2)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
push.s "monster._platoniaRule11"@10588
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.platonia
pushi.e -9
pushi.e 0
push.v [array]self.amount
push.s "monster._platoniaRule10#{0}"@10589
conv.s.v
call.i @@string@@(argc=2)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
call.i @@NewGMLArray@@(argc=5)
pop.v.v builtin.newTooltipListState5
push.v builtin.newTooltipListState5
call.i gml_Script_set_list_of_tooltip(argc=1)
popz.v
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
push.s "monster._platoniaWinnerIs1"@10591
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.tooltipWinner
b [171]

> gml_Script_anon@18191@gml_Object_oMonster_Create_0 (locals=4, argc=2)
:[159]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [161]

:[160]
pushbltn.v builtin.undefined
pop.v.v builtin.argument1

:[161]
push.v arg.argument0
call.i string_length(argc=1)
pop.v.v local._whereInString
push.v builtin.slotsPrice
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._i

:[162]
pushloc.v local._i
pushi.e 0
cmp.i.v GTE
bf [170]

:[163]
pushloc.v local._whereInString
pushi.e 0
cmp.i.v GT
bf [165]

:[164]
pushloc.v local._whereInString
push.v arg.argument0
call.i string_char_at(argc=2)
pop.v.v local._digit
b [166]

:[165]
pushi.e 0
pop.v.i local._digit

:[166]
pushloc.v local._i
push.v builtin.slotsPrice
call.i array_length(argc=1)
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [168]

:[167]
push.v arg.argument1
pop.v.v local._haveCallback
b [169]

:[168]
pushbltn.v builtin.undefined
pop.v.v local._haveCallback

:[169]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.slotsPrice
pushloc.v local._haveCallback
pushloc.v local._digit
call.i real(argc=1)
dup.v 2 8
dup.v 0
push.v stacktop.stop_on_item_nbr
callv.v 2
popz.v
push.v local._whereInString
push.e 1
sub.i.v
pop.v.v local._whereInString
push.v local._i
push.e 1
sub.i.v
pop.v.v local._i
b [162]

:[170]
exit.i

:[171]
push.i [function]gml_Script_anon@18191@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_price
pushi.e 0
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.set_price
callv.v 1
popz.v
b [210]

> gml_Script_anon@18850@gml_Object_oMonster_Create_0 (locals=6, argc=2)
:[172]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [174]

:[173]
pushbltn.v builtin.undefined
pop.v.v builtin.argument0

:[174]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [176]

:[175]
pushi.e 0
pop.v.b builtin.argument1

:[176]
pushglb.v global.isClient
conv.v.b
bf [178]

:[177]
push.v arg.argument1
conv.v.b
not.b
b [179]

:[178]
push.e 0

:[179]
bf [181]

:[180]
exit.i

:[181]
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [188]

:[182]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayWeighted
pushi.e 0
pop.v.i local._i

:[183]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [187]

:[184]
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
bf [186]

:[185]
pushloc.v local._i
pushloc.v local._arrayWeighted
call.i array_push(argc=2)
popz.v
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.playerTicketNumbers
pushloc.v local._arrayWeighted
call.i array_push(argc=2)
popz.v

:[186]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [183]

:[187]
pushloc.v local._arrayWeighted
call.i gml_Script_choose_weighted(argc=1)
pop.v.v local._winner
pushloc.v local._winner
pushi.e -9
push.v [stacktop]self.elem
pop.v.v local._winnerNumber
b [189]

:[188]
push.v arg.argument0
pop.v.v local._winnerNumber

:[189]
push.v builtin.slotsFaces
call.i array_length(argc=1)
pop.v.v local._slotSize
pushi.e 0
pop.v.i local._i

:[190]
pushloc.v local._i
pushloc.v local._slotSize
cmp.v.v LT
bf [204]

:[191]
pushbltn.v builtin.undefined
pop.v.v local._callback
pushloc.v local._i
pushloc.v local._slotSize
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [203]

:[192]
b [200]

> gml_Script_anon@19680@anon@18850@gml_Object_oMonster_Create_0 (locals=1, argc=0)
:[193]
pushi.e 0
pop.v.i local._i

:[194]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [199]

:[195]
pushloc.v local._i
push.v builtin._winnerNumber
cmp.v.v NEQ
bf [197]

:[196]
pushglb.v global.playersManager
push.l 13
conv.l.v
pushloc.v local._i
dup.v 2 8
dup.v 0
push.v stacktop.apply_action
callv.v 2
popz.v
b [198]

:[197]
pushglb.v global.playersManager
push.l 3
conv.l.v
pushloc.v local._i
dup.v 2 8
dup.v 0
push.v stacktop.apply_action
callv.v 2
popz.v

:[198]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [194]

:[199]
exit.i

:[200]
push.i [function]gml_Script_anon@19680@anon@18850@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushloc.v local._winnerNumber
b [202]

> gml_Script____struct___453@anon@18850@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[201]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self._winnerNumber
exit.i

:[202]
push.i [function]gml_Script____struct___453@anon@18850@gml_Object_oMonster_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___453
call.i @@NewGMLObject@@(argc=2)
call.i method(argc=2)
pop.v.v local._callback

:[203]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.slotsFaces
pushloc.v local._callback
pushloc.v local._winnerNumber
dup.v 2 8
dup.v 0
push.v stacktop.stop_on_item_nbr
callv.v 2
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [190]

:[204]
pushglb.v global.isHost
conv.v.b
bf [206]

:[205]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
b [207]

:[206]
push.e 0

:[207]
bf [209]

:[208]
pushglb.v global.networkingManager
pushloc.v local._winnerNumber
dup.v 1 8
dup.v 0
push.v stacktop.set_winner_platonia
callv.v 1
popz.v

:[209]
exit.i

:[210]
push.i [function]gml_Script_anon@18850@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_winner_platonia

:[211]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.blackMarket
cmp.v.v EQ
bf [end]

:[212]
pushi.e 1
pop.v.b builtin.firstRun
push.s "distortion_texture_page"@8724
conv.s.v
pushref.i 134217746
call.i shader_get_sampler_index(argc=2)
pop.v.v builtin.distortion_stage
pushi.e -1
pop.v.i builtin.surface_distort
push.l 3
conv.l.v
push.v builtin.surface_distort
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushref.i 46
pushglb.v global.depthManager
push.s "cards"@4255
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 54
add.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=4)
pop.v.v builtin.mirrorObj
pushref.i 51
pushglb.v global.depthManager
push.s "cards"@4255
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=4)
pop.v.v builtin.pendulumObj
b [214]

> gml_Script____struct___454@gml_Object_oMonster_Create_0 (locals=0, argc=0)
:[213]
call.i @@SetStatic@@(argc=0)
pushref.i 16777259
pop.v.v self.sprite_index
exit.i

:[214]
push.i [function]gml_Script____struct___454@gml_Object_oMonster_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___454
call.i @@NewGMLObject@@(argc=1)
pushref.i 31
pushglb.v global.depthManager
push.s "cards"@4255
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 54
add.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v builtin.glassObj
pushref.i 16777260
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v builtin.hidePriceSprite
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._playersWithMaxHp
pushi.e 0
pop.v.i local._i

:[215]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [219]

:[216]
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
bf [218]

:[217]
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushloc.v local._playersWithMaxHp
call.i array_push(argc=2)
popz.v

:[218]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [215]

:[219]
b [222]

> gml_Script_anon@21856@gml_Object_oMonster_Create_0 (locals=0, argc=2)
:[220]
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.hp
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.hp
sub.v.v
ret.v

:[221]
exit.i

:[222]
push.i [function]gml_Script_anon@21856@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushloc.v local._playersWithMaxHp
call.i array_sort(argc=2)
popz.v
pushi.e 0
pop.v.i builtin.pendulumTimer
pushi.e 100
conv.i.v
pushi.e -7
pushi.e 0
push.v [array]self._playersWithMaxHp
pushi.e -9
push.v [stacktop]self.hp
call.i min(argc=2)
pop.v.v builtin.pendulumDefaultValue
pushi.e 1
pop.v.i builtin.pendulumSpeedMult
push.v builtin.pendulumTimer
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
div.v.v
push.d 3.141592653589793
mul.d.v
call.i cos(argc=1)
pushi.e 25
mul.i.v
pop.v.v builtin.pendulumAngle
push.v builtin.pendulumAngle
push.v builtin.pendulumObj
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v builtin.pendulumDefaultValue
pop.v.v builtin.pendulumValue
push.v builtin.pendulumDefaultValue
call.i sign(argc=1)
pop.v.v builtin.pendulumPrevSign
pushi.e -1
pop.v.i builtin.pendulumWinnerNumber
push.s ""@61
pop.v.s builtin.pendulumWinnerName
push.v builtin.pendulumValue
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.txtPendulumValue
b [241]

> gml_Script_anon@22427@gml_Object_oMonster_Create_0 (locals=2, argc=2)
:[223]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [225]

:[224]
pushi.e 0
pop.v.b builtin.argument1

:[225]
pushglb.v global.isClient
conv.v.b
bf [227]

:[226]
push.v arg.argument1
conv.v.b
not.b
b [228]

:[227]
push.e 0

:[228]
bf [230]

:[229]
exit.i

:[230]
pushglb.v global.isHost
conv.v.b
bf [232]

:[231]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
b [233]

:[232]
push.e 0

:[233]
bf [235]

:[234]
pushglb.v global.networkingManager
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.set_angle_pendulum
callv.v 1
popz.v

:[235]
push.v arg.argument0
pushi.e 25
mul.i.v
pop.v.v builtin.pendulumAngle
push.v builtin.pendulumAngle
push.v builtin.pendulumObj
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v builtin.pendulumPrevSign
push.v arg.argument0
call.i sign(argc=1)
cmp.v.v NEQ
bf [240]

:[236]
push.v builtin.pendulumValue
push.e 1
sub.i.v
pop.v.v builtin.pendulumValue
push.v builtin.pendulumValue
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.txtPendulumValue
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.pendulumDefaultValue
push.v builtin.pendulumValue
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.pendulumSpeedMult
push.v arg.argument0
call.i sign(argc=1)
pop.v.v builtin.pendulumPrevSign
push.d 1.4
conv.d.v
push.d 0.9
conv.d.v
pushi.e 0
conv.i.v
push.v builtin.pendulumDefaultValue
push.v builtin.pendulumValue
call.i gml_Script_map_value(argc=5)
pop.v.v local._pitch
push.v builtin.pendulumValue
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [238]

:[237]
pushref.i 33554499
b [239]

:[238]
pushref.i 33554500

:[239]
pop.v.v local._soundToPlay
pushloc.v local._pitch
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.b.v
pushi.e 10
conv.i.v
pushloc.v local._soundToPlay
call.i audio_play_sound(argc=6)
popz.v

:[240]
exit.i

:[241]
push.i [function]gml_Script_anon@22427@gml_Object_oMonster_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_angle_pendulum
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.blackMarketGem
pushi.e -9
pushi.e 0
push.v [array]self.amount
pop.v.v local._gemValue
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 2
conv.l.v
push.l 2
conv.l.v
push.l 2
conv.l.v
push.s "blackmarket._introduction7"@10628
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 2
conv.l.v
push.l 2
conv.l.v
push.l 2
conv.l.v
push.s "blackmarket._introduction6"@10629
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 2
conv.l.v
push.l 2
conv.l.v
push.l 2
conv.l.v
push.s "blackmarket._introduction5"@10630
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=7)
push.v builtin.hidePriceSprite
pushi.e -9
push.v [stacktop]self.run
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 2
conv.l.v
push.l 2
conv.l.v
push.l 2
conv.l.v
pushloc.v local._gemValue
push.s "blackmarket._introduction4#{0}"@10631
conv.s.v
call.i @@string@@(argc=2)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 2
conv.l.v
push.l 2
conv.l.v
push.l 2
conv.l.v
push.s "blackmarket._introduction3"@10632
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 2
conv.l.v
push.l 2
conv.l.v
push.l 2
conv.l.v
push.s "blackmarket._introduction2"@10633
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 2
conv.l.v
push.l 2
conv.l.v
push.l 2
conv.l.v
push.s "blackmarket._introduction1"@10634
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=7)
call.i @@NewGMLArray@@(argc=7)
pop.v.v builtin.newTooltipListState1
push.v builtin.newTooltipListState1
call.i gml_Script_set_list_of_tooltip(argc=1)
popz.v

:[end]