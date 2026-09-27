:[0]
call.i @@This@@(argc=0)
pop.v.v global.audio
pushref.i 33554435
call.i audio_group_is_loaded(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushref.i 33554435
call.i audio_group_load(argc=1)
popz.v

:[2]
pushref.i 33554437
call.i audio_group_is_loaded(argc=1)
conv.v.b
not.b
bf [4]

:[3]
pushref.i 33554437
call.i audio_group_load(argc=1)
popz.v

:[4]
pushref.i 33554434
call.i audio_group_is_loaded(argc=1)
conv.v.b
not.b
bf [6]

:[5]
pushref.i 33554434
call.i audio_group_load(argc=1)
popz.v

:[6]
pushi.e 3
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.timerNextMusic
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
pushi.e 15
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v builtin.timerMainTheme
pushglb.v global.nextMusic
pop.v.v builtin.currentMusic
pushi.e 0
pop.v.i builtin.previousTimer
call.i audio_emitter_create(argc=0)
pop.v.v builtin.lp_emitter
push.l 7
conv.l.v
push.v builtin.lp_emitter
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
call.i audio_bus_create(argc=0)
pop.v.v builtin.lp_bus
push.v builtin.lp_bus
push.v builtin.lp_emitter
call.i audio_emitter_bus(argc=2)
popz.v
pushi.e 1
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.timerFadeInMusic
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.fadeInCallback
pushi.e 1
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.timerFadeOutMusic
pushi.e 1
pop.v.b builtin.fadeOutPause
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.fadeOutCallback
b [33]

> gml_Script_anon@761@gml_Object_oAudio_Create_0 (locals=0, argc=4)
:[7]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i builtin.argument0

:[9]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [11]

:[10]
pushglb.v global.nextMusic
pop.v.v builtin.argument1

:[11]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.b builtin.argument2

:[13]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [15]

:[14]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument3

:[15]
push.v builtin.currentMusic
call.i audio_is_playing(argc=1)
conv.v.b
bf [17]

:[16]
push.v builtin.currentMusic
call.i audio_is_paused(argc=1)
conv.v.b
not.b
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
exit.i

:[20]
push.v arg.argument1
pop.v.v builtin.currentMusic
push.v arg.argument3
call.i is_array(argc=1)
conv.v.b
bf [22]

:[21]
push.v arg.argument3
b [23]

:[22]
push.v arg.argument3
call.i @@NewGMLArray@@(argc=1)

:[23]
pop.v.v builtin.fadeInCallback
push.v arg.argument2
conv.v.b
bt [25]

:[24]
push.v builtin.currentMusic
call.i audio_is_paused(argc=1)
conv.v.b
not.b
b [26]

:[25]
push.e 1

:[26]
bf [28]

:[27]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument1
push.v builtin.lp_emitter
call.i audio_play_sound_on(argc=4)
popz.v
b [29]

:[28]
push.v builtin.currentMusic
call.i audio_resume_sound(argc=1)
popz.v

:[29]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.currentMusic
call.i audio_sound_gain(argc=3)
popz.v
push.v builtin.fadeInCallback
call.i @@This@@(argc=0)
push.v builtin.play_callback
callv.v 1
popz.v
b [32]

:[31]
push.v builtin.timerFadeInMusic
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
push.v arg.argument0
dup.v 3 8
dup.v 0
push.v stacktop.change_param
callv.v 3
popz.v
push.v builtin.timerFadeInMusic
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.timerFadeInMusic
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
push.v builtin.timerFadeInMusic
pushi.e -9
push.v [stacktop]self.maxLength
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
div.v.v
pushi.e 1000
mul.i.v
pushi.e 1
conv.i.v
push.v builtin.currentMusic
call.i audio_sound_gain(argc=3)
popz.v

:[32]
exit.i

:[33]
push.i [function]gml_Script_anon@761@gml_Object_oAudio_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.fade_in
b [47]

> gml_Script_anon@1718@gml_Object_oAudio_Create_0 (locals=0, argc=3)
:[34]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i builtin.argument0

:[36]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [38]

:[37]
pushi.e 1
pop.v.b builtin.argument1

:[38]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [40]

:[39]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument2

:[40]
push.v arg.argument1
pop.v.v builtin.fadeOutPause
push.v arg.argument2
call.i is_array(argc=1)
conv.v.b
bf [42]

:[41]
push.v arg.argument2
b [43]

:[42]
push.v arg.argument2
call.i @@NewGMLArray@@(argc=1)

:[43]
pop.v.v builtin.fadeOutCallback
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [45]

:[44]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.currentMusic
call.i audio_sound_gain(argc=3)
popz.v
call.i @@This@@(argc=0)
push.v builtin.fade_out_end
callv.v 0
popz.v
b [46]

:[45]
push.v builtin.timerFadeOutMusic
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
push.v arg.argument0
dup.v 3 8
dup.v 0
push.v stacktop.change_param
callv.v 3
popz.v
push.v builtin.timerFadeOutMusic
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.timerFadeOutMusic
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
push.v builtin.timerFadeOutMusic
pushi.e -9
push.v [stacktop]self.maxLength
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
div.v.v
pushi.e 1000
mul.i.v
pushi.e 0
conv.i.v
push.v builtin.currentMusic
call.i audio_sound_gain(argc=3)
popz.v

:[46]
exit.i

:[47]
push.i [function]gml_Script_anon@1718@gml_Object_oAudio_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.fade_out
b [52]

> gml_Script_anon@2338@gml_Object_oAudio_Create_0 (locals=0, argc=0)
:[48]
push.v builtin.fadeOutPause
conv.v.b
bf [50]

:[49]
push.v builtin.currentMusic
call.i audio_pause_sound(argc=1)
popz.v
b [51]

:[50]
push.v builtin.currentMusic
call.i audio_stop_sound(argc=1)
popz.v

:[51]
push.v builtin.fadeOutCallback
call.i @@This@@(argc=0)
push.v builtin.play_callback
callv.v 1
popz.v
exit.i

:[52]
push.i [function]gml_Script_anon@2338@gml_Object_oAudio_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.fade_out_end
b [60]

> gml_Script_anon@2538@gml_Object_oAudio_Create_0 (locals=1, argc=1)
:[53]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [55]

:[54]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[55]
push.v arg.argument0
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [59]

:[56]
pushi.e 0
pop.v.i local._i

:[57]
pushloc.v local._i
push.v arg.argument0
call.i array_length(argc=1)
cmp.v.v LT
bf [59]

:[58]
call.i @@This@@(argc=0)
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument0
callv.v 0
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [57]

:[59]
exit.i

:[60]
push.i [function]gml_Script_anon@2538@gml_Object_oAudio_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.play_callback
b [72]

> gml_Script_anon@2859@gml_Object_oAudio_Create_0 (locals=1, argc=2)
:[61]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [63]

:[62]
pushi.e 1
pop.v.b builtin.argument0

:[63]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [65]

:[64]
pushi.e 0
pop.v.b builtin.argument1

:[65]
pushglb.v global.nextMusic
push.v builtin.currentMusic
cmp.v.v EQ
bf [67]

:[66]
exit.i

:[67]
b [69]

> gml_Script_anon@3068@anon@2859@gml_Object_oAudio_Create_0 (locals=0, argc=0)
:[68]
push.v builtin.args
push.v builtin.callback
call.i method_call(argc=2)
popz.v
exit.i

:[69]
push.i [function]gml_Script_anon@3068@anon@2859@gml_Object_oAudio_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v arg.argument0
pushglb.v global.nextMusic
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushglb.v global.audio
pushi.e -9
push.v [stacktop]self.fade_in
b [71]

> gml_Script____struct___322@anon@2859@gml_Object_oAudio_Create_0 (locals=0, argc=0)
:[70]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.callback
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.args
exit.i

:[71]
push.i [function]gml_Script____struct___322@anon@2859@gml_Object_oAudio_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___322
call.i @@NewGMLObject@@(argc=3)
call.i method(argc=2)
pop.v.v local._callback
pushloc.v local._callback
push.v arg.argument1
pushbltn.v builtin.undefined
call.i @@This@@(argc=0)
push.v builtin.fade_out
callv.v 3
popz.v
exit.i

:[72]
push.i [function]gml_Script_anon@2859@gml_Object_oAudio_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.switch_music
b [123]

> gml_Script_anon@3194@gml_Object_oAudio_Create_0 (locals=7, argc=0)
:[73]
pushglb.v global.dayNightCycle
pushi.e -9
push.v [stacktop]self.currentEvent
push.l 0
cmp.l.v NEQ
bf [91]

:[74]
pushglb.v global.dayNightCycle
pushi.e -9
push.v [stacktop]self.currentEvent
dup.v 0
push.l 4
cmp.l.v EQ
bt [80]

:[75]
dup.v 0
push.l 2
cmp.l.v EQ
bt [82]

:[76]
dup.v 0
push.l 1
cmp.l.v EQ
bt [84]

:[77]
dup.v 0
push.l 5
cmp.l.v EQ
bt [86]

:[78]
dup.v 0
push.l 7
cmp.l.v EQ
bt [88]

:[79]
b [90]

:[80]
pushref.i 33554433
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[81]
b [90]

:[82]
pushref.i 33554434
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[83]
b [90]

:[84]
pushref.i 33554436
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[85]
b [90]

:[86]
pushref.i 33554433
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[87]
b [90]

:[88]
pushref.i 33554433
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[89]
b [90]

:[90]
popz.v
b [122]

:[91]
pushi.e 0
pop.v.b local._tensionMusic
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_fighters
callv.v 0
pop.v.v local._fighters
pushloc.v local._fighters
call.i array_length(argc=1)
pushi.e 1
cmp.i.v EQ
bf [93]

:[92]
pushglb.v global.playersCount
pushi.e 1
cmp.i.v NEQ
b [94]

:[93]
push.e 0

:[94]
bf [96]

:[95]
pushi.e 1
pop.v.b local._tensionMusic
b [101]

:[96]
pushi.e 25
pop.v.i local._hpThresold
pushi.e 0
pop.v.i local._hpMaxTotal
pushi.e 0
pop.v.i local._hpTotal
pushi.e 0
pop.v.i local._i

:[97]
pushloc.v local._i
pushloc.v local._fighters
call.i array_length(argc=1)
cmp.v.v LT
bf [99]

:[98]
push.v local._hpMaxTotal
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.hpMax
add.v.v
pop.v.v local._hpMaxTotal
push.v local._hpTotal
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.hp
add.v.v
pop.v.v local._hpTotal
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [97]

:[99]
pushi.e 100
pushloc.v local._hpTotal
mul.v.i
pushloc.v local._hpMaxTotal
div.v.v
pushloc.v local._hpThresold
cmp.v.v LTE
bf [101]

:[100]
pushi.e 1
pop.v.b local._tensionMusic

:[101]
pushloc.v local._tensionMusic
conv.v.b
bf [103]

:[102]
pushglb.v global.isTutorialDone
conv.v.b
b [104]

:[103]
push.e 0

:[104]
bf [107]

:[105]
pushref.i 33554511
ret.v

:[106]
b [122]

:[107]
pushglb.v global.biomeCur
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [111]

:[108]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [119]

:[109]
b [111]

:[110]
b [121]

:[111]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -4
cmp.i.v NEQ
bf [113]

:[112]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.faun
cmp.v.v EQ
b [114]

:[113]
push.e 0

:[114]
bf [117]

:[115]
pushref.i 33554510
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[116]
b [118]

:[117]
pushref.i 33554438
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[118]
b [121]

:[119]
pushref.i 33554438
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[120]
b [121]

:[121]
popz.v

:[122]
exit.i

:[123]
push.i [function]gml_Script_anon@3194@gml_Object_oAudio_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_music_of_situation
push.l 5
conv.l.v
call.i audio_effect_create(argc=1)
pop.v.v builtin.effectReverb
push.l 4
conv.l.v
call.i audio_effect_create(argc=1)
pop.v.v builtin.effectLowpass
b [135]

> gml_Script_anon@5617@gml_Object_oAudio_Create_0 (locals=0, argc=2)
:[124]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [126]

:[125]
push.d 0.4
pop.v.d builtin.argument0

:[126]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [128]

:[127]
pushi.e 400
pop.v.i builtin.argument1

:[128]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [130]

:[129]
pushi.e 1
conv.b.v
b [131]

:[130]
pushi.e 0
conv.b.v

:[131]
push.v builtin.effectReverb
pushi.e -9
pop.v.v [stacktop]self.bypass
push.v arg.argument0
push.v builtin.effectReverb
pushi.e -9
pop.v.v [stacktop]self.mix
push.v builtin.effectReverb
push.v builtin.lp_bus
pushi.e -9
pushi.e 0
pop.v.v [array]self.effects
push.v arg.argument1
pushi.e -1
cmp.i.v EQ
bf [133]

:[132]
pushi.e 1
conv.b.v
b [134]

:[133]
pushi.e 0
conv.b.v

:[134]
push.v builtin.effectLowpass
pushi.e -9
pop.v.v [stacktop]self.bypass
push.v arg.argument1
push.v builtin.effectLowpass
pushi.e -9
pop.v.v [stacktop]self.cutoff
push.v builtin.effectLowpass
push.v builtin.lp_bus
pushi.e -9
pushi.e 1
pop.v.v [array]self.effects
exit.i

:[135]
push.i [function]gml_Script_anon@5617@gml_Object_oAudio_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_effect
b [137]

> gml_Script_anon@6061@gml_Object_oAudio_Create_0 (locals=0, argc=0)
:[136]
call.i @@This@@(argc=0)
push.v builtin.update_effect
callv.v 0
popz.v
exit.i

:[137]
push.i [function]gml_Script_anon@6061@gml_Object_oAudio_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_door_effect
b [139]

> gml_Script_anon@6129@gml_Object_oAudio_Create_0 (locals=0, argc=0)
:[138]
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.update_effect
callv.v 2
popz.v
exit.i

:[139]
push.i [function]gml_Script_anon@6129@gml_Object_oAudio_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset_effect

:[end]