; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i gml_Script_live_call(argc=0)
conv.v.b
bf [2]

:[1]
pushglb.v global.live_result
ret.v

:[2]
push.v builtin.animOpacity
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [4]

:[3]
push.v builtin.animOpacity
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
push.v builtin.animOpacity
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v builtin.image_alpha

:[7]
push.v builtin.animOpacity
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [9]

:[8]
push.v builtin.animOpacity
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushi.e 1
pop.v.i builtin.image_alpha

:[9]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [11]

:[10]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.state_switched
callv.v 0
popz.v

:[11]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.platonia
cmp.v.v EQ
bf [114]

:[12]
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [14]

:[13]
b [113]

:[14]
push.v builtin.state
push.l 6
cmp.l.v EQ
bf [18]

:[15]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [17]

:[16]
pushi.e -6
pushi.e 0
push.v [array]self.newTooltipListState1
pushref.i 14
pushi.e 0
conv.i.v
pushi.e 110
conv.i.v
pushi.e 120
conv.i.v
call.i instance_create_depth(argc=5)
popz.v

:[17]
push.l 3
conv.l.v
push.l 7
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [113]

:[18]
push.v builtin.state
push.l 7
cmp.l.v EQ
bf [22]

:[19]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [21]

:[20]
pushi.e -6
pushi.e 0
push.v [array]self.newTooltipListState2
pushref.i 14
pushi.e 0
conv.i.v
pushi.e 110
conv.i.v
pushi.e 120
conv.i.v
call.i instance_create_depth(argc=5)
popz.v

:[21]
push.l 3
conv.l.v
push.l 8
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [113]

:[22]
push.v builtin.state
push.l 8
cmp.l.v EQ
bf [38]

:[23]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [30]

:[24]
pushi.e -6
pushi.e 0
push.v [array]self.newTooltipListState3
pushref.i 14
pushi.e 0
conv.i.v
pushi.e 110
conv.i.v
pushi.e 120
conv.i.v
call.i instance_create_depth(argc=5)
popz.v
push.v builtin.clockRollBackTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.clockRollBackTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushi.e 0
pop.v.i local._i

:[25]
pushloc.v local._i
push.v builtin.playersButtons
call.i array_length(argc=1)
cmp.v.v LT
bf [27]

:[26]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.playersButtons
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [25]

:[27]
pushi.e 0
pop.v.i local._i

:[28]
pushloc.v local._i
push.v builtin.slotsFaces
call.i array_length(argc=1)
cmp.v.v LT
bf [30]

:[29]
push.l 0
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.slotsFaces
pushi.e -9
pop.v.l [stacktop]self.stateBearingsNext
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.slotsFaces
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.stop_on_item_nbr
callv.v 1
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [28]

:[30]
push.v builtin.clockRollBackTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bt [32]

:[31]
push.v builtin.clockRollBackTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
b [33]

:[32]
push.e 1

:[33]
bf [35]

:[34]
pushi.e 0
conv.i.v
push.v builtin.clockTotalImage
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.clockRollBackTimer
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.clockCurrentImage

:[35]
push.v builtin.clockRollBackTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [37]

:[36]
push.l 3
conv.l.v
push.l 9
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[37]
b [113]

:[38]
push.v builtin.state
push.l 9
cmp.l.v EQ
bf [46]

:[39]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [43]

:[40]
pushi.e -6
pushi.e 0
push.v [array]self.newTooltipListState4
pushref.i 14
pushi.e 0
conv.i.v
pushi.e 110
conv.i.v
pushi.e 120
conv.i.v
call.i instance_create_depth(argc=5)
popz.v
pushi.e 0
pop.v.i builtin.clockCurrentImage
pushi.e 0
pop.v.i local._i

:[41]
pushloc.v local._i
push.v builtin.slotsFaces
call.i array_length(argc=1)
cmp.v.v LT
bf [43]

:[42]
push.l 0
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.slotsFaces
pushi.e -9
pop.v.l [stacktop]self.stateNext
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [41]

:[43]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [45]

:[44]
push.l 3
conv.l.v
push.l 10
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[45]
b [113]

:[46]
push.v builtin.state
push.l 10
cmp.l.v EQ
bf [55]

:[47]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [52]

:[48]
pushi.e -6
pushi.e 0
push.v [array]self.newTooltipListState5
pushref.i 14
pushi.e 0
conv.i.v
pushi.e 110
conv.i.v
pushi.e 120
conv.i.v
call.i instance_create_depth(argc=5)
popz.v
pushi.e 0
pop.v.i local._i

:[49]
pushloc.v local._i
push.v builtin.slotsPrice
call.i array_length(argc=1)
cmp.v.v LT
bf [51]

:[50]
push.l 0
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.slotsPrice
pushi.e -9
pop.v.l [stacktop]self.stateBearingsNext
push.l 0
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.slotsPrice
pushi.e -9
pop.v.l [stacktop]self.stateNext
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [49]

:[51]
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.platonia
pushi.e -9
pushi.e 0
push.v [array]self.amount
call.i @@This@@(argc=0)
push.v builtin.set_price
callv.v 1
popz.v

:[52]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [54]

:[53]
push.l 3
conv.l.v
push.l 11
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[54]
b [113]

:[55]
push.v builtin.state
push.l 11
cmp.l.v EQ
bf [72]

:[56]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [60]

:[57]
push.v builtin.clockTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.clockTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushi.e 0
pop.v.i local._i

:[58]
pushloc.v local._i
push.v builtin.playersButtons
call.i array_length(argc=1)
cmp.v.v LT
bf [60]

:[59]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.playersButtons
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [58]

:[60]
pushref.i 11
pushi.e -9
pushenv [64]

:[61]
pushglb.v global.playersManager
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.isInFight
pop.v.v local._isInFight
pushloc.v local._isInFight
conv.v.b
bf [64]

:[62]
call.i @@Other@@(argc=0)
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.playersButtons
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.has_number_clicked
callv.v 1
conv.v.b
bf [64]

:[63]
call.i @@Other@@(argc=0)
pushi.e 1
conv.b.v
push.v builtin.number
dup.v 2 8
dup.v 0
push.v stacktop.increase_ticket_number_platonia
callv.v 2
popz.v

:[64]
popenv [61]
push.v builtin.clockTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bt [66]

:[65]
push.v builtin.clockTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
b [67]

:[66]
push.e 1

:[67]
bf [69]

:[68]
push.v builtin.clockTotalImage
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.clockTimer
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.clockCurrentImage

:[69]
push.v builtin.clockTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [71]

:[70]
push.l 3
conv.l.v
push.l 12
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[71]
b [113]

:[72]
push.v builtin.state
push.l 12
cmp.l.v EQ
bf [93]

:[73]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [90]

:[74]
pushi.e 0
pop.v.i local._i

:[75]
pushloc.v local._i
push.v builtin.slotsFaces
call.i array_length(argc=1)
cmp.v.v LT
bf [77]

:[76]
push.l 1
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.slotsFaces
pushi.e -9
pop.v.l [stacktop]self.stateNext
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [75]

:[77]
pushi.e 0
pop.v.i local._j

:[78]
pushloc.v local._j
push.v builtin.playersButtons
call.i array_length(argc=1)
cmp.v.v LT
bf [80]

:[79]
pushi.e -1
pushloc.v local._j
conv.v.i
push.v [array]self.playersButtons
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [78]

:[80]
pushi.e 0
pop.v.i local._k

:[81]
pushloc.v local._k
push.v builtin.slotsPrice
call.i array_length(argc=1)
cmp.v.v LT
bf [83]

:[82]
push.l 0
pushi.e -1
pushloc.v local._k
conv.v.i
push.v [array]self.slotsPrice
pushi.e -9
pop.v.l [stacktop]self.stateBearingsNext
push.v local._k
push.e 1
add.i.v
pop.v.v local._k
b [81]

:[83]
pushi.e 0
pop.v.i local._l

:[84]
pushloc.v local._l
push.v builtin.playerTicketNumbers
call.i array_length(argc=1)
cmp.v.v LT
bf [86]

:[85]
push.v builtin.totalTicketsAsked
pushi.e -6
pushloc.v local._l
conv.v.i
push.v [array]self.playerTicketNumbers
add.v.v
pop.v.v builtin.totalTicketsAsked
push.v local._l
push.e 1
add.i.v
pop.v.v local._l
b [84]

:[86]
push.v builtin.totalTicketsAsked
pushi.e 0
cmp.i.v GT
bf [88]

:[87]
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.platonia
pushi.e -9
pushi.e 0
push.v [array]self.amount
push.v builtin.totalTicketsAsked
div.v.v
pop.v.v builtin.finalPrice
b [89]

:[88]
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.platonia
pushi.e -9
pushi.e 0
push.v [array]self.amount
pop.v.v builtin.finalPrice

:[89]
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.platonia
pushi.e -9
pushi.e 0
push.v [array]self.amount
pop.v.v local._oldPrice
push.v builtin.finalPrice
call.i round(argc=1)
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.platonia
pushi.e -9
pushi.e 0
pop.v.v [array]self.amount
push.l 0
pop.v.l local._alignY
push.l 0
pop.v.l local._sound
push.l 1
pop.v.l local._close
push.l 2
conv.l.v
pushloc.v local._sound
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.totalTicketsAsked
pushloc.v local._oldPrice
push.s "monster._platoniaNewPrice2#{0}#{1}"@10637
conv.s.v
call.i @@string@@(argc=3)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._close
pushloc.v local._sound
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.s "monster._platoniaNewPrice1"@10638
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
call.i @@NewGMLArray@@(argc=2)
pop.v.v local._newTooltipListState7
pushloc.v local._newTooltipListState7
call.i gml_Script_set_list_of_tooltip(argc=1)
popz.v
pushi.e -7
pushi.e 0
push.v [array]self._newTooltipListState7
pushref.i 14
pushi.e 0
conv.i.v
pushi.e 110
conv.i.v
pushi.e 120
conv.i.v
call.i instance_create_depth(argc=5)
popz.v

:[90]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [92]

:[91]
push.l 3
conv.l.v
push.l 13
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[92]
b [113]

:[93]
push.v builtin.state
push.l 13
cmp.l.v EQ
bf [101]

:[94]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [98]

:[95]
pushglb.v global.waitingList
push.s "MINIGAME_PRICE"@10640
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v
b [97]

> gml_Script_anon@7650@gml_Object_oMonster_Step_0 (locals=0, argc=0)
:[96]
pushglb.v global.waitingList
push.s "MINIGAME_PRICE"@10640
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v
exit.i

:[97]
push.i [function]gml_Script_anon@7650@gml_Object_oMonster_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v local._callbackPrice
pushloc.v local._callbackPrice
push.v builtin.finalPrice
call.i round(argc=1)
call.i @@This@@(argc=0)
push.v builtin.set_price
callv.v 2
popz.v

:[98]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [100]

:[99]
push.l 3
conv.l.v
push.l 14
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[100]
b [113]

:[101]
push.v builtin.state
push.l 14
cmp.l.v EQ
bf [110]

:[102]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [107]

:[103]
pushi.e 0
pop.v.i local._i

:[104]
pushloc.v local._i
push.v builtin.slotsFaces
call.i array_length(argc=1)
cmp.v.v LT
bf [106]

:[105]
push.l 0
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.slotsFaces
pushi.e -9
pop.v.l [stacktop]self.stateNext
push.l 0
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.slotsFaces
pushi.e -9
pop.v.l [stacktop]self.stateBearingsNext
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [104]

:[106]
pushi.e -6
pushi.e 0
push.v [array]self.tooltipWinner
pushref.i 14
pushi.e 0
conv.i.v
pushi.e 110
conv.i.v
pushi.e 120
conv.i.v
call.i instance_create_depth(argc=5)
popz.v

:[107]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [109]

:[108]
push.l 3
conv.l.v
push.l 15
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[109]
b [113]

:[110]
push.v builtin.state
push.l 15
cmp.l.v EQ
bf [113]

:[111]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [113]

:[112]
call.i @@This@@(argc=0)
push.v builtin.set_winner_platonia
callv.v 0
popz.v

:[113]
b [404]

:[114]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.blackMarket
cmp.v.v EQ
bf [159]

:[115]
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [117]

:[116]
b [158]

:[117]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [123]

:[118]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [120]

:[119]
pushi.e -6
pushi.e 0
push.v [array]self.newTooltipListState1
pushref.i 14
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
call.i instance_create_depth(argc=5)
popz.v

:[120]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [122]

:[121]
push.l 3
conv.l.v
push.l 2
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[122]
b [158]

:[123]
push.v builtin.state
push.l 2
cmp.l.v EQ
bf [139]

:[124]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [125]

:[125]
push.v builtin.pendulumValue
pushi.e 0
cmp.i.v GT
bf [127]

:[126]
push.v builtin.pendulumTimer
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
div.v.v
push.d 3.141592653589793
mul.d.v
call.i cos(argc=1)
pop.v.v local._cos
push.v builtin.pendulumTimer
push.v builtin.pendulumSpeedMult
add.v.v
pop.v.v builtin.pendulumTimer
pushloc.v local._cos
call.i @@This@@(argc=0)
push.v builtin.set_angle_pendulum
callv.v 1
popz.v

:[127]
push.v builtin.glassObj
dup.v 0 8
dup.v 0
push.v stacktop.is_pressed
callv.v 0
conv.v.b
bf [129]

:[128]
push.v builtin.pendulumValue
pushi.e 0
cmp.i.v GT
b [130]

:[129]
push.e 0

:[130]
bf [133]

:[131]
push.v builtin.glassObj
dup.v 0 8
dup.v 0
push.v stacktop.break_glass
callv.v 0
popz.v
push.v builtin.glassObj
dup.v 0 8
dup.v 0
push.v stacktop.who_clicked
callv.v 0
pop.v.v local._numberWhoCliked
pushloc.v local._numberWhoCliked
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [133]

:[132]
pushloc.v local._numberWhoCliked
pop.v.v builtin.pendulumWinnerNumber
push.s "[/c]"@9971
conv.s.v
pushglb.v global.playersManager
pushloc.v local._numberWhoCliked
dup.v 1 8
dup.v 0
push.v stacktop.get_name
callv.v 1
pushloc.v local._numberWhoCliked
push.s "[p{0}]"@9972
conv.s.v
call.i @@string@@(argc=2)
call.i string_concat(argc=3)
pop.v.v builtin.pendulumWinnerName
push.v builtin.pendulumValue
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.blackMarketGem
pushi.e -9
pushi.e 1
pop.v.v [array]self.amount

:[133]
push.v builtin.glassObj
pushi.e -9
push.v [stacktop]self.isBreak
conv.v.b
bt [135]

:[134]
push.v builtin.pendulumValue
pushi.e 0
cmp.i.v EQ
b [136]

:[135]
push.e 1

:[136]
bf [138]

:[137]
push.l 3
conv.l.v
push.l 3
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[138]
b [158]

:[139]
push.v builtin.state
push.l 3
cmp.l.v EQ
bf [158]

:[140]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [158]

:[141]
push.l 2
pop.v.l local._alignX
push.l 2
pop.v.l local._alignY
b [152]

> gml_Script_anon@10743@gml_Object_oMonster_Step_0 (locals=1, argc=0)
:[142]
pushi.e 0
pop.v.i local._i

:[143]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [151]

:[144]
pushloc.v local._i
push.v builtin.pendulumWinnerNumber
cmp.v.v NEQ
bt [146]

:[145]
push.v builtin.pendulumValue
pushi.e 0
cmp.i.v EQ
b [147]

:[146]
push.e 1

:[147]
bf [149]

:[148]
pushglb.v global.playersManager
push.l 13
conv.l.v
pushloc.v local._i
dup.v 2 8
dup.v 0
push.v stacktop.apply_action
callv.v 2
popz.v
b [150]

:[149]
pushglb.v global.playersManager
push.l 3
conv.l.v
pushloc.v local._i
dup.v 2 8
dup.v 0
push.v stacktop.apply_action
callv.v 2
popz.v

:[150]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [143]

:[151]
exit.i

:[152]
push.i [function]gml_Script_anon@10743@gml_Object_oMonster_Step_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v builtin.pendulumValue
push.v builtin.pendulumWinnerNumber
b [154]

> gml_Script____struct___455@gml_Object_oMonster_Step_0 (locals=0, argc=0)
:[153]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.pendulumWinnerNumber
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.pendulumValue
exit.i

:[154]
push.i [function]gml_Script____struct___455@gml_Object_oMonster_Step_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___455
call.i @@NewGMLObject@@(argc=3)
call.i method(argc=2)
pop.v.v local._callback
push.v builtin.pendulumValue
pushi.e 0
cmp.i.v GT
bf [156]

:[155]
pushloc.v local._callback
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.blackMarketGem
pushi.e -9
pushi.e 1
push.v [array]self.amount
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.blackMarketGem
pushi.e -9
pushi.e 0
push.v [array]self.amount
push.v builtin.pendulumWinnerName
push.s "blackmarket._reward1#{0}#{1}#{2}"@10647
conv.s.v
call.i @@string@@(argc=4)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
call.i @@NewGMLArray@@(argc=1)
pop.v.v local._dialogue
b [157]

:[156]
pushloc.v local._callback
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
push.s "blackmarket._noWinner"@10648
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
call.i @@NewGMLArray@@(argc=1)
pop.v.v local._dialogue

:[157]
pushi.e -7
pushi.e 0
push.v [array]self._dialogue
pushref.i 14
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
call.i instance_create_depth(argc=5)
popz.v

:[158]
b [404]

:[159]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.funfair
cmp.v.v EQ
bf [264]

:[160]
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [162]

:[161]
b [263]

:[162]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [170]

:[163]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [165]

:[164]
pushi.e -6
pushi.e 0
push.v [array]self.newTooltipListState1
pushref.i 14
pushi.e 0
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create_depth(argc=5)
popz.v

:[165]
pushref.i 11
pushi.e -9
pushenv [167]

:[166]
call.i @@This@@(argc=0)
push.v builtin.funfair_move_arrow
callv.v 0
popz.v

:[167]
popenv [166]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [169]

:[168]
push.l 3
conv.l.v
push.l 2
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[169]
b [263]

:[170]
push.v builtin.state
push.l 2
cmp.l.v EQ
bf [234]

:[171]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [173]

:[172]
call.i @@This@@(argc=0)
push.v builtin.run_wheel
callv.v 0
popz.v

:[173]
pushref.i 11
pushi.e -9
pushenv [211]

:[174]
push.v builtin.number
call.i gml_Script_InputPlayerUsingKbm(argc=1)
conv.v.b
bf [201]

:[175]
push.l 2
conv.l.v
push.l 0
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [177]

:[176]
push.v builtin.angleFunfairNext
pushi.e 15
add.i.v
pop.v.v builtin.angleFunfairNext
push.v builtin.angleFunfairNext
call.i @@This@@(argc=0)
push.v builtin.funfair_send_angle
callv.v 1
popz.v
b [179]

:[177]
push.l 2
conv.l.v
push.l 1
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [179]

:[178]
push.v builtin.angleFunfairNext
pushi.e 15
sub.i.v
pop.v.v builtin.angleFunfairNext
push.v builtin.angleFunfairNext
call.i @@This@@(argc=0)
push.v builtin.funfair_send_angle
callv.v 1
popz.v

:[179]
push.l 1
conv.l.v
push.l 6
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [200]

:[180]
pushi.e 256
conv.i.v
pushi.e 350
conv.i.v
pushi.e 35
conv.i.v
pushi.e 350
conv.i.v
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
pushi.e 34
add.i.v
pushi.e 1
sub.i.v
push.v builtin.y
push.v builtin.x
call.i point_in_triangle(argc=8)
conv.v.b
bf [182]

:[181]
pushi.e 112
conv.i.v
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
pushi.e 34
add.i.v
push.v builtin.y
push.v builtin.x
call.i point_in_circle(argc=5)
conv.v.b
b [183]

:[182]
push.e 0

:[183]
bf [185]

:[184]
pushi.e 180
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.funfair_send_angle
callv.v 1
popz.v
b [200]

:[185]
pushi.e 256
conv.i.v
pushi.e 574
conv.i.v
pushi.e 35
conv.i.v
pushi.e 574
conv.i.v
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
pushi.e 34
add.i.v
push.v builtin.y
push.v builtin.x
call.i point_in_triangle(argc=8)
conv.v.b
bf [187]

:[186]
pushi.e 112
conv.i.v
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
pushi.e 34
add.i.v
push.v builtin.y
push.v builtin.x
call.i point_in_circle(argc=5)
conv.v.b
b [188]

:[187]
push.e 0

:[188]
bf [190]

:[189]
pushi.e 0
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.funfair_send_angle
callv.v 1
popz.v
b [200]

:[190]
pushi.e 35
conv.i.v
pushi.e 574
conv.i.v
pushi.e 35
conv.i.v
pushi.e 350
conv.i.v
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
pushi.e 34
add.i.v
push.v builtin.y
push.v builtin.x
call.i point_in_triangle(argc=8)
conv.v.b
bf [192]

:[191]
pushi.e 112
conv.i.v
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
pushi.e 34
add.i.v
push.v builtin.y
push.v builtin.x
call.i point_in_circle(argc=5)
conv.v.b
b [193]

:[192]
push.e 0

:[193]
bf [195]

:[194]
pushi.e 90
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.funfair_send_angle
callv.v 1
popz.v
b [200]

:[195]
pushi.e 256
conv.i.v
pushi.e 574
conv.i.v
pushi.e 256
conv.i.v
pushi.e 350
conv.i.v
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
pushi.e 34
add.i.v
push.v builtin.y
push.v builtin.x
call.i point_in_triangle(argc=8)
conv.v.b
bf [197]

:[196]
pushi.e 112
conv.i.v
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
pushi.e 34
add.i.v
push.v builtin.y
push.v builtin.x
call.i point_in_circle(argc=5)
conv.v.b
b [198]

:[197]
push.e 0

:[198]
bf [200]

:[199]
pushi.e 270
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.funfair_send_angle
callv.v 1
popz.v

:[200]
b [210]

:[201]
push.v builtin.number
call.i gml_Script_InputPlayerUsingGamepad(argc=1)
conv.v.b
bf [210]

:[202]
push.l 1
conv.l.v
push.l 9
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [204]

:[203]
pushi.e 90
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.funfair_send_angle
callv.v 1
popz.v
b [210]

:[204]
push.l 1
conv.l.v
push.l 7
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [206]

:[205]
pushi.e 180
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.funfair_send_angle
callv.v 1
popz.v
b [210]

:[206]
push.l 1
conv.l.v
push.l 8
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [208]

:[207]
pushi.e 0
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.funfair_send_angle
callv.v 1
popz.v
b [210]

:[208]
push.l 1
conv.l.v
push.l 6
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [210]

:[209]
pushi.e 270
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.funfair_send_angle
callv.v 1
popz.v

:[210]
call.i @@This@@(argc=0)
push.v builtin.funfair_move_arrow
callv.v 0
popz.v

:[211]
popenv [174]
push.v builtin.timerFunfairVisible
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [213]

:[212]
push.v builtin.timerFunfairVisible
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.timerFunfairDisapear
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
push.l 2
conv.l.v
pushref.i 33554466
pushref.i 33554465
pushref.i 33554464
pushref.i 33554463
call.i @@NewGMLArray@@(argc=4)
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.s "monster._funfairHide"@10650
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._structTooltip
pushloc.v local._structTooltip
pushref.i 14
pushi.e 0
conv.i.v
pushi.e 110
conv.i.v
pushi.e 120
conv.i.v
call.i instance_create_depth(argc=5)
popz.v

:[213]
push.v builtin.timerFunfairDisapear
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [215]

:[214]
push.v builtin.timerFunfairDisapear
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [216]

:[215]
push.e 1

:[216]
bf [229]

:[217]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
pop.v.v local._fighters
pushi.e 0
pop.v.i local._f

:[218]
pushloc.v local._f
pushloc.v local._fighters
call.i array_length(argc=1)
cmp.v.v LT
bf [229]

:[219]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
bf [228]

:[220]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_cursor
callv.v 1
pop.v.v local._cursor
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [222]

:[221]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
b [223]

:[222]
push.e 0

:[223]
bt [225]

:[224]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
not.b
b [226]

:[225]
push.e 1

:[226]
bf [228]

:[227]
pushi.e 1
push.v builtin.timerFunfairDisapear
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
sub.v.i
pushloc.v local._cursor
pushi.e -9
pop.v.v [stacktop]self.alphaFunfair

:[228]
push.v local._f
push.e 1
add.i.v
pop.v.v local._f
b [218]

:[229]
push.v builtin.timerFunfairDisapear
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [231]

:[230]
push.v builtin.timerFunfairDisapear
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.timerFunfairInvisible
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[231]
push.v builtin.timerFunfairInvisible
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [233]

:[232]
push.l 3
conv.l.v
push.l 5
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[233]
b [263]

:[234]
push.v builtin.state
push.l 5
cmp.l.v EQ
bf [251]

:[235]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [245]

:[236]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
pop.v.v local._fighters
pushi.e 0
pop.v.i local._f

:[237]
pushloc.v local._f
pushloc.v local._fighters
call.i array_length(argc=1)
cmp.v.v LT
bf [245]

:[238]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
bf [244]

:[239]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_cursor
callv.v 1
pop.v.v local._cursor
pushloc.v local._cursor
pushi.e -4
cmp.i.v NEQ
bf [241]

:[240]
pushloc.v local._cursor
call.i instance_exists(argc=1)
conv.v.b
b [242]

:[241]
push.e 0

:[242]
bf [244]

:[243]
pushi.e 1
pushloc.v local._cursor
pushi.e -9
pop.v.i [stacktop]self.alphaFunfair

:[244]
push.v local._f
push.e 1
add.i.v
pop.v.v local._f
b [237]

:[245]
pushi.e 1
pop.v.b local._cursorFinished
pushref.i 11
pushi.e -9
pushenv [248]

:[246]
call.i @@This@@(argc=0)
push.v builtin.funfair_move_arrow
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.funfair_movement_finished
callv.v 0
conv.v.b
not.b
bf [248]

:[247]
pushi.e 0
pop.v.b local._cursorFinished

:[248]
popenv [246]
pushloc.v local._cursorFinished
conv.v.b
bf [250]

:[249]
push.l 3
conv.l.v
push.l 3
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[250]
b [263]

:[251]
push.v builtin.state
push.l 3
cmp.l.v EQ
bf [263]

:[252]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [263]

:[253]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
pop.v.v local._fighters
pushi.e 0
pop.v.i local._f

:[254]
pushloc.v local._f
pushloc.v local._fighters
call.i array_length(argc=1)
cmp.v.v LT
bf [262]

:[255]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
bf [261]

:[256]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_cursor
callv.v 1
pop.v.v local._cursor
pushloc.v local._cursor
pushi.e -4
cmp.i.v NEQ
bf [258]

:[257]
pushloc.v local._cursor
call.i instance_exists(argc=1)
conv.v.b
b [259]

:[258]
push.e 0

:[259]
bf [261]

:[260]
pushloc.v local._cursor
dup.v 0 8
dup.v 0
push.v stacktop.funfair_define_action
callv.v 0
popz.v

:[261]
push.v local._f
push.e 1
add.i.v
pop.v.v local._f
b [254]

:[262]
pushi.e 1
pop.v.b builtin.isMiniGameFinished

:[263]
b [404]

:[264]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.babayaga
cmp.v.v EQ
bf [342]

:[265]
pushbltn.v builtin.current_time
push.d 0.0025
mul.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
pop.v.v builtin.bellOffset
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [267]

:[266]
b [341]

:[267]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [282]

:[268]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [270]

:[269]
call.i @@This@@(argc=0)
push.v builtin.init_baba
callv.v 0
popz.v
pushi.e -6
pushi.e 0
push.v [array]self.dialogueRules
pushref.i 14
pushi.e 0
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create_depth(argc=5)
popz.v

:[270]
push.v builtin.showHandTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [272]

:[271]
push.v builtin.showHandTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [273]

:[272]
push.e 1

:[273]
bf [279]

:[274]
push.v builtin.showHandTimer
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._handAlpha
push.v builtin.showHandTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [276]

:[275]
pushi.e 1
pop.v.i local._handAlpha
push.v builtin.showHandTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v

:[276]
pushi.e 0
pop.v.i local._i

:[277]
pushloc.v local._i
push.v builtin.babaHands
call.i array_length(argc=1)
cmp.v.v LT
bf [279]

:[278]
pushloc.v local._handAlpha
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
pop.v.v [stacktop]self.alpha
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [277]

:[279]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [281]

:[280]
push.l 3
conv.l.v
push.l 2
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[281]
b [341]

:[282]
push.v builtin.state
push.l 2
cmp.l.v EQ
bf [335]

:[283]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [288]

:[284]
pushi.e 0
pop.v.i local._i

:[285]
pushloc.v local._i
push.v builtin.babaHands
call.i array_length(argc=1)
cmp.v.v LT
bf [287]

:[286]
pushi.e 1
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
pop.v.i [stacktop]self.alpha
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [285]

:[287]
push.v builtin.timerBabayaga
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[288]
pushi.e 1
pop.v.b local._allAlphaAtZero
pushi.e 0
pop.v.i local._i

:[289]
pushloc.v local._i
push.v builtin.babaHands
call.i array_length(argc=1)
cmp.v.v LT
bf [321]

:[290]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.alpha
pushi.e 0
cmp.i.v EQ
bf [292]

:[291]
b [320]

:[292]
pushi.e 0
pop.v.b local._allAlphaAtZero
pushglb.v global.playersManager
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.get_cursor
callv.v 1
pop.v.v local._cursor
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.number
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
not.b
bf [294]

:[293]
pushglb.v global.playersManager
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.has_acted
callv.v 1
conv.v.b
not.b
b [295]

:[294]
push.e 0

:[295]
bf [307]

:[296]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.number
call.i gml_Script_InputPlayerUsingKbm(argc=1)
conv.v.b
bf [299]

:[297]
pushloc.v local._cursor
push.l 1
conv.l.v
push.l 6
conv.l.v
dup.v 2 8
dup.v 0
push.v stacktop.is_verb_active
callv.v 2
conv.v.b
bf [299]

:[298]
pushi.e 44
conv.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 30
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._cursor
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._cursor
pushi.e -9
push.v [stacktop]self.x
call.i point_in_circle(argc=5)
conv.v.b
b [300]

:[299]
push.e 0

:[300]
bt [305]

:[301]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.number
call.i gml_Script_InputPlayerUsingGamepad(argc=1)
conv.v.b
bf [303]

:[302]
pushloc.v local._cursor
push.l 1
conv.l.v
push.l 9
conv.l.v
dup.v 2 8
dup.v 0
push.v stacktop.is_verb_active
callv.v 2
conv.v.b
b [304]

:[303]
push.e 0

:[304]
b [306]

:[305]
push.e 1

:[306]
b [308]

:[307]
push.e 0

:[308]
bf [310]

:[309]
pushglb.v global.playersManager
pushi.e 1
conv.b.v
push.v builtin.babaCard
pushi.e -9
push.v [stacktop]self.actionType
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.number
dup.v 3 8
dup.v 0
push.v stacktop.send_action
callv.v 3
popz.v

:[310]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.moveHand
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bf [312]

:[311]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.moveHand
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
push.v builtin.babaHandXTo
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.xInit
call.i lerp(argc=3)
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.moveHand
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
push.v builtin.babaHandYTo
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.yInit
call.i lerp(argc=3)
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
pop.v.v [stacktop]self.y

:[312]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.moveHand
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [314]

:[313]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.moveHand
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.moveHand
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushi.e 0
conv.b.v
pushi.e 10
conv.i.v
pushref.i 33554440
call.i audio_play_sound(argc=3)
popz.v
push.v builtin.bellTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.bellTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.timerHide
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[314]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.timerHide
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [316]

:[315]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.timerHide
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [317]

:[316]
push.e 1

:[317]
bf [320]

:[318]
pushi.e 1
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.timerHide
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
sub.v.i
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
pop.v.v [stacktop]self.alpha
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.timerHide
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [320]

:[319]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.timerHide
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.timerHide
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v
pushi.e 0
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
pop.v.i [stacktop]self.alpha

:[320]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [289]

:[321]
push.v builtin.bellTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bt [323]

:[322]
push.v builtin.bellTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
b [324]

:[323]
push.e 1

:[324]
bf [326]

:[325]
push.v builtin.bellTimer
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
pop.v.v local._length
push.v builtin.bellOffsetMax
push.v builtin.bellOffsetMin
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._length
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.bellOffset

:[326]
push.v builtin.bellTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [328]

:[327]
push.v builtin.bellTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v

:[328]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.has_every_fighters_acted
callv.v 0
conv.v.b
bf [331]

:[329]
pushloc.v local._allAlphaAtZero
conv.v.b
bf [331]

:[330]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
b [332]

:[331]
push.e 0

:[332]
bf [334]

:[333]
push.v builtin.timerBabayaga
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.timerBabayaga
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v
push.l 3
conv.l.v
push.l 3
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[334]
b [341]

:[335]
push.v builtin.state
push.l 3
cmp.l.v EQ
bf [341]

:[336]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [341]

:[337]
push.l 0
pop.v.l local._alignY
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_last_player_to_act
callv.v 0
pop.v.v local._lastOne
pushloc.v local._lastOne
pushi.e -1
cmp.i.v NEQ
bf [339]

:[338]
push.v builtin.babayaga_end
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 1
conv.l.v
pushloc.v local._alignY
pushbltn.v builtin.undefined
pushglb.v global.playersManager
pushloc.v local._lastOne
dup.v 1 8
dup.v 0
push.v stacktop.get_name
callv.v 1
push.s "monster._babayagaReward2#{0}"@10655
conv.s.v
call.i @@string@@(argc=2)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
push.l 1
conv.l.v
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._babayagaReward1"@10656
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
call.i @@NewGMLArray@@(argc=2)
pop.v.v builtin.dialogueFinished
b [340]

:[339]
push.v builtin.babayaga_end
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 1
conv.l.v
pushloc.v local._alignY
pushbltn.v builtin.undefined
push.s "monster._babayagaNoReward"@10657
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.dialogueFinished

:[340]
push.v builtin.dialogueFinished
call.i gml_Script_set_list_of_tooltip(argc=1)
popz.v
pushi.e -6
pushi.e 0
push.v [array]self.dialogueFinished
pushref.i 14
pushi.e 0
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create_depth(argc=5)
popz.v

:[341]
b [404]

:[342]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.faun
cmp.v.v EQ
bf [404]

:[343]
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [345]

:[344]
b [404]

:[345]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [349]

:[346]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [348]

:[347]
call.i @@This@@(argc=0)
push.v builtin.generate_token_and_chain
callv.v 0
popz.v

:[348]
push.l 3
conv.l.v
push.l 2
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [404]

:[349]
push.v builtin.state
push.l 2
cmp.l.v EQ
bf [360]

:[350]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [352]

:[351]
call.i @@This@@(argc=0)
push.v builtin.display_dialogue_faun
callv.v 0
popz.v

:[352]
push.v builtin.donkeyCapTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [354]

:[353]
pushglb.v global.isHost
conv.v.b
b [355]

:[354]
push.e 0

:[355]
bf [357]

:[356]
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
push.v stacktop.send_action
callv.v 2
popz.v

:[357]
pushglb.v global.playersManager
pushi.e -1
push.v builtin.indexPlayerBuy
conv.v.i
push.v [array]self.arrayPlayerGem
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.has_acted
callv.v 1
conv.v.b
bf [359]

:[358]
push.l 3
conv.l.v
push.l 4
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[359]
b [404]

:[360]
push.v builtin.state
push.l 4
cmp.l.v EQ
bf [401]

:[361]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [396]

:[362]
push.v builtin.donkeyCapTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.donkeyCapTimer
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v
pushi.e -1
push.v builtin.indexPlayerBuy
conv.v.i
push.v [array]self.arrayPlayerGem
pushi.e -9
push.v [stacktop]self.number
pop.v.v local._playerNumber
pushi.e 0
pop.v.i local._tokenToFind
pushglb.v global.playersManager
pushloc.v local._playerNumber
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
dup.v 0
push.l 3
cmp.l.v EQ
bt [372]

:[363]
dup.v 0
push.l 4
cmp.l.v EQ
bt [373]

:[364]
dup.v 0
push.l 5
cmp.l.v EQ
bt [374]

:[365]
dup.v 0
push.l 6
cmp.l.v EQ
bt [375]

:[366]
dup.v 0
push.l 7
cmp.l.v EQ
bt [376]

:[367]
dup.v 0
push.l 8
cmp.l.v EQ
bt [377]

:[368]
dup.v 0
push.l 9
cmp.l.v EQ
bt [378]

:[369]
dup.v 0
push.l 13
cmp.l.v EQ
bt [379]

:[370]
b [372]

:[371]
b [380]

:[372]
pushi.e 0
pop.v.i local._tokenToFind
b [380]

:[373]
pushi.e 1
pop.v.i local._tokenToFind
b [380]

:[374]
pushi.e 2
pop.v.i local._tokenToFind
b [380]

:[375]
pushi.e 3
pop.v.i local._tokenToFind
b [380]

:[376]
pushi.e 4
pop.v.i local._tokenToFind
b [380]

:[377]
pushi.e 5
pop.v.i local._tokenToFind
b [380]

:[378]
pushi.e 6
pop.v.i local._tokenToFind
b [380]

:[379]
pushi.e -1
pop.v.i local._tokenToFind
b [380]

:[380]
popz.v
pushloc.v local._tokenToFind
pushi.e -1
cmp.i.v EQ
bf [382]

:[381]
pushloc.v local._playerNumber
call.i @@This@@(argc=0)
push.v builtin.clone_donkey_cap
callv.v 1
popz.v
b [387]

:[382]
pushi.e 0
pop.v.i local._i

:[383]
pushloc.v local._i
pushref.i 60
call.i instance_number(argc=1)
cmp.v.v LT
bf [387]

:[384]
pushloc.v local._i
pushref.i 60
call.i instance_find(argc=2)
pop.v.v local._inst
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.numberBuy
pushloc.v local._tokenToFind
cmp.v.v EQ
bf [386]

:[385]
pushloc.v local._inst
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.yDraw
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.xDraw
pushloc.v local._playerNumber
dup.v 3 8
dup.v 0
push.v stacktop.clone
callv.v 3
popz.v

:[386]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [383]

:[387]
push.v builtin.indexPlayerBuy
push.e 1
add.i.v
pop.v.v builtin.indexPlayerBuy
push.v builtin.indexPlayerBuy
push.v builtin.arrayPlayerGem
call.i array_length(argc=1)
cmp.v.v LT
bf [393]

:[388]
pushref.i 60
pushi.e -9
pushenv [392]

:[389]
push.v builtin.numberBuy
pushi.e -1
cmp.i.v NEQ
bf [392]

:[390]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
not.b
bf [392]

:[391]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.indexPlayerBuy
conv.v.i
push.v [array]self.arrayPlayerGem
pushi.e -9
push.v [stacktop]self.number
pop.v.v local._numberAllowed
pushloc.v local._numberAllowed
call.i @@NewGMLArray@@(argc=1)
call.i @@This@@(argc=0)
push.v builtin.set_interaction_allowed_by
callv.v 1
popz.v

:[392]
popenv [389]

:[393]
pushref.i 14
pushi.e -9
pushenv [395]

:[394]
call.i instance_destroy(argc=0)
popz.v

:[395]
popenv [394]

:[396]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.is_waiting_list_empty
callv.v 0
conv.v.b
bf [400]

:[397]
push.v builtin.indexPlayerBuy
push.v builtin.arrayPlayerGem
call.i array_length(argc=1)
cmp.v.v GTE
bf [399]

:[398]
push.l 3
conv.l.v
push.l 3
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v
b [400]

:[399]
push.l 3
conv.l.v
push.l 2
conv.l.v
call.i gml_Script_g_go_to_step(argc=2)
popz.v

:[400]
b [404]

:[401]
push.v builtin.state
push.l 3
cmp.l.v EQ
bf [404]

:[402]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [404]

:[403]
pushi.e 1
pop.v.b builtin.isMiniGameFinished

:[404]
push.v builtin.state
pop.v.v builtin.statePrev
push.v builtin.stateNext
pop.v.v builtin.state

:[end]