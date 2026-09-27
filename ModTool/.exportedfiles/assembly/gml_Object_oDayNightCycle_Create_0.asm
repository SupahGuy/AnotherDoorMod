:[0]
push.l 0
pop.v.l builtin.prevEvent
push.v builtin.prevEvent
pop.v.v builtin.currentEvent
pushref.i 16777971
pop.v.v builtin.currentSprite
pushi.e 6
pop.v.i builtin.yuleDuration
pushref.i 16778016
call.i sprite_get_width(argc=1)
pop.v.v builtin.yuleBarWidthCur
pushref.i 16778016
call.i sprite_get_width(argc=1)
pop.v.v builtin.yuleBarWidthTo
push.s "ease-out"@8749
conv.s.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.yuleDuration
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.timeToYule
pushi.e 1
pop.v.i global.bloodMoonMultiplier
b [9]

> gml_Script_anon@392@gml_Object_oDayNightCycle_Create_0 (locals=0, argc=0)
:[1]
push.v builtin.currentEvent
pop.v.v builtin.prevEvent
push.l 0
pop.v.l builtin.currentEvent
pushref.i 16777980
pop.v.v builtin.currentSprite
pushglb.v global.particles
dup.v 0 8
dup.v 0
push.v stacktop.reset_particles_around
callv.v 0
popz.v
push.v builtin.prevEvent
dup.v 0
push.l 2
cmp.l.v EQ
bt [4]

:[2]
dup.v 0
push.l 4
cmp.l.v EQ
bt [5]

:[3]
b [8]

:[4]
pushi.e 1
pop.v.i global.bloodMoonMultiplier
b [8]

:[5]
pushref.i 19
pushi.e -9
pushenv [7]

:[6]
call.i @@This@@(argc=0)
push.v builtin.update_hp_txt
callv.v 0
popz.v

:[7]
popenv [6]
b [8]

:[8]
popz.v
exit.i

:[9]
push.i [function]gml_Script_anon@392@gml_Object_oDayNightCycle_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset
b [31]

> gml_Script_anon@934@gml_Object_oDayNightCycle_Create_0 (locals=6, argc=0)
:[10]
call.i @@This@@(argc=0)
push.v builtin.reset
callv.v 0
popz.v
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_current_door
callv.v 0
pushglb.v global.monsterList
pushi.e -9
push.v [stacktop]self.moonPosition
call.i array_get_index(argc=2)
pop.v.v local._indexMoon
pushloc.v local._indexMoon
pushi.e -1
cmp.i.v NEQ
bf [29]

:[11]
push.l 2
pop.v.l local._alignX
push.l 1
pop.v.l local._alignY
push.l 2
pop.v.l local._sound
push.l 1
pop.v.l local._close
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._newTooltipList
b [13]

> gml_Script_anon@1292@anon@934@gml_Object_oDayNightCycle_Create_0 (locals=0, argc=0)
:[12]
pushglb.v global.waitingList
push.s "tooltipMoon"@9116
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v
exit.i

:[13]
push.i [function]gml_Script_anon@1292@anon@934@gml_Object_oDayNightCycle_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.talk_finished
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.neutral
callv.v 0
popz.v
pushglb.v global.monsterList
pushi.e -9
pushloc.v local._indexMoon
conv.v.i
push.v [array]self.moonType
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [20]

:[14]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [23]

:[15]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [24]

:[16]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [25]

:[17]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [26]

:[18]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [27]

:[19]
b [28]

:[20]
push.l 4
pop.v.l builtin.currentEvent
pushref.i 16777972
pop.v.v builtin.currentSprite
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "cycle._imbolcTitle"@9118
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._newTooltipList
call.i array_push(argc=2)
popz.v
push.v builtin.talk_finished
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "cycle._imbolcDesc"@9119
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=11)
pushloc.v local._newTooltipList
call.i array_push(argc=2)
popz.v
pushref.i 19
pushi.e -9
pushenv [22]

:[21]
call.i @@This@@(argc=0)
push.v builtin.update_hp_txt
callv.v 0
popz.v

:[22]
popenv [21]
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.imbolc_moon
callv.v 0
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 45
conv.i.v
pushi.e 45
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.pFloatAround
call.i part_type_orientation(argc=6)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.pFloatAround
call.i part_type_color3(argc=4)
popz.v
pushi.e 32
conv.i.v
pushi.e 32
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.pFloatAround
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.pFloatAround
call.i part_type_speed(argc=5)
popz.v
b [28]

:[23]
pushi.e 2
pop.v.i global.bloodMoonMultiplier
push.l 2
pop.v.l builtin.currentEvent
pushref.i 16777961
pop.v.v builtin.currentSprite
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "cycle._samainTitle"@9121
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._newTooltipList
call.i array_push(argc=2)
popz.v
push.v builtin.talk_finished
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "cycle._samainDesc"@9122
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushloc.v local._newTooltipList
call.i array_push(argc=2)
popz.v
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.samain_moon
callv.v 0
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.red1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.red2
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.red1
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.pFloatAround
call.i part_type_color3(argc=4)
popz.v
b [28]

:[24]
push.l 1
pop.v.l builtin.currentEvent
pushref.i 16777987
pop.v.v builtin.currentSprite
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "cycle._yuleTitle"@9123
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._newTooltipList
call.i array_push(argc=2)
popz.v
push.v builtin.talk_finished
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "cycle._yuleDesc"@9124
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushloc.v local._newTooltipList
call.i array_push(argc=2)
popz.v
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.yule_moon
callv.v 0
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue4
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue2
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue4
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.pFloatAround
call.i part_type_color3(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.pFloatAround
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
push.d -0.1
conv.d.v
pushi.e 350
conv.i.v
pushi.e 350
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.pFloatAround
call.i part_type_direction(argc=5)
popz.v
pushi.e 13
pushglb.v global.particles
pushi.e -9
pop.v.i [stacktop]self.emmiterFullScreenNbr
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_height
neg.v
pushbltn.v builtin.room_width
pushbltn.v builtin.room_width
neg.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.emmiterFullScreen
pushglb.v global.particlesSys
call.i part_emitter_region(argc=8)
popz.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.emmiterFullScreenNbr
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.pFloatAround
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.emmiterFullScreen
pushglb.v global.particlesSys
call.i part_emitter_stream(argc=4)
popz.v
b [28]

:[25]
push.l 5
pop.v.l builtin.currentEvent
pushref.i 16777981
pop.v.v builtin.currentSprite
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "cycle._blueScreenTitle"@9128
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._newTooltipList
call.i array_push(argc=2)
popz.v
push.v builtin.talk_finished
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "cycle._blueScreenDesc"@9129
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushloc.v local._newTooltipList
call.i array_push(argc=2)
popz.v
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.blue_screen
callv.v 0
popz.v
pushi.e 0
pushglb.v global.particles
pushi.e -9
pop.v.i [stacktop]self.emmiterFullScreenNbr
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.emmiterFullScreenNbr
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.pFloatAround
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.emmiterFullScreen
pushglb.v global.particlesSys
call.i part_emitter_stream(argc=4)
popz.v
b [28]

:[26]
push.l 6
pop.v.l builtin.currentEvent
pushref.i 16777963
pop.v.v builtin.currentSprite
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "cycle._mabonTitle"@9130
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._newTooltipList
call.i array_push(argc=2)
popz.v
push.v builtin.talk_finished
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "cycle._mabonDesc"@9131
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushloc.v local._newTooltipList
call.i array_push(argc=2)
popz.v
b [28]

:[27]
push.l 7
pop.v.l builtin.currentEvent
pushref.i 16777965
pop.v.v builtin.currentSprite
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "cycle._lithaTitle"@9132
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._newTooltipList
call.i array_push(argc=2)
popz.v
push.v builtin.talk_finished
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._close
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "cycle._lithaDesc"@9133
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushloc.v local._newTooltipList
call.i array_push(argc=2)
popz.v
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.litha_moon
callv.v 0
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.purple2
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.purple1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.purple2
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.pFloatAround
call.i part_type_color3(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 0.2
conv.d.v
push.d 0.2
conv.d.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.pFloatAround
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 360
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.pFloatAround
call.i part_type_direction(argc=5)
popz.v
pushi.e -8
pushglb.v global.particles
pushi.e -9
pop.v.i [stacktop]self.emmiterFullScreenNbr
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.emmiterFullScreenNbr
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.pFloatAround
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.emmiterFullScreen
pushglb.v global.particlesSys
call.i part_emitter_stream(argc=4)
popz.v
b [28]

:[28]
popz.v
pushloc.v local._newTooltipList
call.i gml_Script_set_list_of_tooltip(argc=1)
popz.v
pushi.e -7
pushi.e 0
push.v [array]self._newTooltipList
pushref.i 14
pushi.e 0
conv.i.v
pushglb.v global.gameHeight
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.gameWidth
pushi.e 2
conv.i.d
div.d.v
call.i instance_create_depth(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushref.i 33554441
call.i audio_play_sound(argc=3)
popz.v
pushi.e 1
conv.b.v
ret.v

:[29]
pushi.e 0
conv.b.v
ret.v

:[30]
exit.i

:[31]
push.i [function]gml_Script_anon@934@gml_Object_oDayNightCycle_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.announce_event
b [34]

> gml_Script_anon@6077@gml_Object_oDayNightCycle_Create_0 (locals=0, argc=0)
:[32]
push.v builtin.currentEvent
ret.v

:[33]
exit.i

:[34]
push.i [function]gml_Script_anon@6077@gml_Object_oDayNightCycle_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_event
b [53]

> gml_Script_anon@6388@gml_Object_oDayNightCycle_Create_0 (locals=0, argc=1)
:[35]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [37]

:[36]
pushi.e 0
pop.v.i builtin.argument0

:[37]
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [40]

:[38]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [44]

:[39]
b [52]

:[40]
call.i @@This@@(argc=0)
push.v builtin.get_event
callv.v 0
dup.v 0
push.l 1
cmp.l.v EQ
bt [42]

:[41]
b [43]

:[42]
pushref.i 16778016
call.i sprite_get_width(argc=1)
pop.v.v builtin.yuleBarWidthCur
pushref.i 16778016
call.i sprite_get_width(argc=1)
pop.v.v builtin.yuleBarWidthTo
push.v builtin.timeToYule
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.timeToYule
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
b [43]

:[43]
popz.v
b [52]

:[44]
call.i @@This@@(argc=0)
push.v builtin.get_event
callv.v 0
dup.v 0
push.l 1
cmp.l.v EQ
bt [46]

:[45]
b [51]

:[46]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.has_every_fighters_acted
callv.v 0
conv.v.b
bf [48]

:[47]
push.v builtin.timeToYule
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v

:[48]
push.v builtin.timeToYule
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [50]

:[49]
push.v builtin.timeToYule
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.sent_yule
callv.v 0
popz.v

:[50]
b [51]

:[51]
popz.v
b [52]

:[52]
popz.v
exit.i

:[53]
push.i [function]gml_Script_anon@6388@gml_Object_oDayNightCycle_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.check_cycle_event
b [59]

> gml_Script_anon@7052@gml_Object_oDayNightCycle_Create_0 (locals=0, argc=0)
:[54]
pushglb.v global.isClient
conv.v.b
bf [56]

:[55]
exit.i

:[56]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [58]

:[57]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.yule
callv.v 0
popz.v

:[58]
call.i @@This@@(argc=0)
push.v builtin.apply_yule
callv.v 0
popz.v
exit.i

:[59]
push.i [function]gml_Script_anon@7052@gml_Object_oDayNightCycle_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.sent_yule
b [68]

> gml_Script_anon@7230@gml_Object_oDayNightCycle_Create_0 (locals=2, argc=0)
:[60]
pushglb.v global.playersManager
pushi.e -1
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._fighters
pushi.e 0
pop.v.i local._f

:[61]
pushloc.v local._f
pushloc.v local._fighters
call.i array_length(argc=1)
cmp.v.v LT
bf [67]

:[62]
pushglb.v global.playersManager
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 1 8
dup.v 0
push.v stacktop.has_acted
callv.v 1
conv.v.b
not.b
bf [66]

:[63]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
bf [65]

:[64]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e 1
conv.b.v
pushi.e -1
conv.i.v
pushi.e 666
conv.i.v
pushi.e 1
conv.b.v
dup.v 4 8
dup.v 0
push.v stacktop.receive_damage
callv.v 4
popz.v

:[65]
pushglb.v global.playersManager
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
push.l 13
conv.l.v
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
dup.v 4 8
dup.v 0
push.v stacktop.apply_action
callv.v 4
popz.v

:[66]
push.v local._f
push.e 1
add.i.v
pop.v.v local._f
b [61]

:[67]
exit.i

:[68]
push.i [function]gml_Script_anon@7230@gml_Object_oDayNightCycle_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.apply_yule

:[end]