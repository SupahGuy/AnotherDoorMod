:[0]
b [209]

> gml_Script_myTimer (locals=0, argc=9)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i builtin.argument1

:[3]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i builtin.argument2

:[5]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i builtin.argument3

:[7]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
push.s "linear"@8304
pop.v.s builtin.argument4

:[9]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i builtin.argument5

:[11]
pushbltn.v builtin.argument6
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[12]
pushbltn.v builtin.undefined
pop.v.v builtin.argument6

:[13]
pushbltn.v builtin.argument7
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [15]

:[14]
pushbltn.v builtin.undefined
pop.v.v builtin.argument7

:[15]
pushbltn.v builtin.argument8
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [17]

:[16]
pushbltn.v builtin.undefined
pop.v.v builtin.argument8

:[17]
call.i @@SetStatic@@(argc=0)
push.v arg.argument6
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [19]

:[18]
push.v arg.argument6
call.i sprite_get_speed(argc=1)
pop.v.v builtin.frameSpeed
push.v arg.argument6
call.i sprite_get_number(argc=1)
pop.v.v builtin.frameMax
push.v arg.argument6
pop.v.v builtin.sprite
b [20]

:[19]
pushi.e 0
pop.v.i builtin.frameSpeed
pushi.e 0
pop.v.i builtin.frameMax
pushbltn.v builtin.undefined
pop.v.v builtin.sprite

:[20]
push.v arg.argument0
pop.v.v builtin.theParentId
push.v arg.argument2
pushglb.v global.debugSpeedMult
div.v.v
pop.v.v builtin.maxDelay
push.v builtin.maxDelay
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
mul.v.v
pop.v.v builtin.maxDelay
push.v builtin.maxDelay
call.i round(argc=1)
pop.v.v builtin.maxDelay
push.v builtin.maxDelay
pushi.e 0
cmp.i.v GT
bf [22]

:[21]
pushi.e 1
conv.b.v
b [23]

:[22]
pushi.e 0
conv.b.v

:[23]
pop.v.v builtin.hasDelay
push.v arg.argument7
pop.v.v builtin.callback
push.v arg.argument8
call.i is_array(argc=1)
conv.v.b
bf [25]

:[24]
push.v arg.argument8
b [26]

:[25]
push.v arg.argument8
call.i @@NewGMLArray@@(argc=1)

:[26]
pop.v.v builtin.argsCallback
push.v builtin.sprite
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [28]

:[27]
push.v arg.argument1
push.v builtin.frameSpeed
div.v.v
push.v builtin.frameMax
mul.v.v
pop.v.v builtin.maxLength
b [29]

:[28]
push.v arg.argument1
pushglb.v global.debugSpeedMult
div.v.v
pop.v.v builtin.maxLength

:[29]
push.v builtin.maxLength
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
push.d 0.001
conv.d.v
b [32]

:[31]
push.v builtin.maxLength

:[32]
pop.v.v builtin.maxLength
push.v builtin.maxLength
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
mul.v.v
pop.v.v builtin.maxLength
push.v builtin.maxLength
call.i round(argc=1)
pop.v.v builtin.maxLength
push.v builtin.maxLength
pop.v.v builtin.initialLength
pushi.e 0
pop.v.i builtin.iterationCurrent
push.v arg.argument3
pop.v.v builtin.iterationMax
push.v arg.argument5
pop.v.v builtin.itSpeed
push.v arg.argument4
pop.v.v builtin.curveType
push.v builtin.curveType
pushref.i 167772160
call.i animcurve_get_channel(argc=2)
pop.v.v builtin.curveChan
pushi.e 0
conv.i.v
push.v builtin.curveChan
call.i animcurve_channel_evaluate(argc=2)
pop.v.v builtin.curveVal
pushi.e 1
pop.v.i builtin.playDirection
call.i @@This@@(argc=0)
pop.v.v builtin.mySelf
b [36]

> gml_Script_anon@2085@myTimer@timer (locals=0, argc=0)
:[33]
push.v builtin.mainTimer
call.i time_source_destroy(argc=1)
popz.v
push.v builtin.hasDelay
conv.v.b
bf [35]

:[34]
push.v builtin.delayTimer
call.i time_source_destroy(argc=1)
popz.v

:[35]
exit.i

:[36]
push.i [function]gml_Script_anon@2085@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.clean_up_variables
b [46]

> gml_Script_anon@2261@myTimer@timer (locals=1, argc=0)
:[37]
push.v builtin.mySelf
pushi.e -9
dup.i 4
push.v [stacktop]self.iterationCurrent
push.e 1
add.i.v
pop.i.v [stacktop]self.iterationCurrent
push.v builtin.callback
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [39]

:[38]
push.v builtin.argsCallback
call.i @@This@@(argc=0)
push.v builtin.callback
callv.v 1
popz.v

:[39]
push.v builtin.mySelf
pushi.e -9
push.v [stacktop]self.itSpeed
pushi.e 0
cmp.i.v NEQ
bf [45]

:[40]
push.v builtin.mySelf
pushi.e -9
push.v [stacktop]self.itSpeed
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.d 0.05
conv.d.v
push.d 0.03
conv.d.v
push.v builtin.mySelf
pushi.e -9
push.v [stacktop]self.maxLength
call.i lerp(argc=3)
pop.v.v local._maxLength
b [44]

:[42]
push.v builtin.mySelf
pushi.e -9
push.v [stacktop]self.itSpeed
pushi.e -1
cmp.i.v EQ
bf [44]

:[43]
push.d 0.04
conv.d.v
push.v builtin.mySelf
pushi.e -9
push.v [stacktop]self.initialLength
pushi.e 3
mul.i.v
push.v builtin.mySelf
pushi.e -9
push.v [stacktop]self.maxLength
call.i lerp(argc=3)
pop.v.v local._maxLength

:[44]
push.v builtin.mySelf
pushloc.v local._maxLength
dup.v 1 8
dup.v 0
push.v stacktop.change_param
callv.v 1
popz.v
push.v builtin.mySelf
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[45]
exit.i

:[46]
push.i [function]gml_Script_anon@2261@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v builtin.callback
push.v builtin.argsCallback
push.v builtin.mySelf
b [48]

> gml_Script____struct___321@myTimer@timer (locals=0, argc=0)
:[47]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.mySelf
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.argsCallback
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.callback
exit.i

:[48]
push.i [function]gml_Script____struct___321@myTimer@timer
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___321
call.i @@NewGMLObject@@(argc=4)
call.i method(argc=2)
pop.v.v builtin._main_end_method
b [50]

> gml_Script_anon@2733@myTimer@timer (locals=0, argc=0)
:[49]
push.v builtin.mainTimer
call.i time_source_start(argc=1)
popz.v
exit.i

:[50]
push.i [function]gml_Script_anon@2733@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin._delay_end_method
pushi.e 1
conv.i.v
push.v builtin.iterationMax
call.i @@NewGMLArray@@(argc=0)
push.v builtin._main_end_method
pushi.e 1
conv.i.v
push.v builtin.maxLength
pushi.e 1
conv.i.v
call.i time_source_create(argc=7)
pop.v.v builtin.mainTimer
push.v builtin.hasDelay
conv.v.b
bf [52]

:[51]
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=0)
push.v builtin._delay_end_method
pushi.e 1
conv.i.v
push.v builtin.maxDelay
pushi.e 1
conv.i.v
call.i time_source_create(argc=6)
pop.v.v builtin.delayTimer

:[52]
push.v builtin.theParentId
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [56]

:[53]
push.v builtin.theParentId
pushi.e -9
pushenv [55]

:[54]
push.l 0
conv.l.v
call.i @@Other@@(argc=0)
call.i gml_Script_add_to_clean_up(argc=2)
popz.v

:[55]
popenv [54]

:[56]
b [59]

> gml_Script_anon@3281@myTimer@timer (locals=0, argc=1)
:[57]
push.v builtin.playDirection
ret.v

:[58]
exit.i

:[59]
push.i [function]gml_Script_anon@3281@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_direction
b [61]

> gml_Script_anon@3385@myTimer@timer (locals=0, argc=1)
:[60]
push.v arg.argument0
pop.v.v builtin.playDirection
exit.i

:[61]
push.i [function]gml_Script_anon@3385@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_direction
b [64]

> gml_Script_anon@3489@myTimer@timer (locals=0, argc=0)
:[62]
push.v builtin.iterationCurrent
ret.v

:[63]
exit.i

:[64]
push.i [function]gml_Script_anon@3489@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_cur_it
b [67]

> gml_Script_anon@3586@myTimer@timer (locals=0, argc=0)
:[65]
push.v builtin.iterationMax
push.v builtin.iterationCurrent
sub.v.v
ret.v

:[66]
exit.i

:[67]
push.i [function]gml_Script_anon@3586@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_remaining_it
b [79]

> gml_Script_anon@3693@myTimer@timer (locals=2, argc=0)
:[68]
push.v builtin.hasDelay
conv.v.b
bf [70]

:[69]
push.v builtin.delayTimer
call.i time_source_get_state(argc=1)
pop.v.v local._stateDelay
b [71]

:[70]
pushi.e 0
pop.v.i local._stateDelay

:[71]
push.v builtin.mainTimer
call.i time_source_get_state(argc=1)
pop.v.v local._stateMain
pushloc.v local._stateDelay
pushi.e 1
cmp.i.v EQ
bt [73]

:[72]
pushloc.v local._stateMain
pushi.e 1
cmp.i.v EQ
b [74]

:[73]
push.e 1

:[74]
bf [77]

:[75]
pushi.e 1
conv.b.v
ret.v

:[76]
b [78]

:[77]
pushi.e 0
conv.b.v
ret.v

:[78]
exit.i

:[79]
push.i [function]gml_Script_anon@3693@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_running
b [88]

> gml_Script_anon@4090@myTimer@timer (locals=0, argc=0)
:[80]
push.v builtin.hasDelay
conv.v.b
bf [86]

:[81]
push.v builtin.delayTimer
call.i time_source_get_state(argc=1)
pushi.e 1
cmp.i.v EQ
bf [83]

:[82]
pushi.e 1
conv.b.v
b [84]

:[83]
pushi.e 0
conv.b.v

:[84]
ret.v

:[85]
b [87]

:[86]
pushi.e 0
conv.b.v
ret.v

:[87]
exit.i

:[88]
push.i [function]gml_Script_anon@4090@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_delay_running
b [92]

> gml_Script_anon@4284@myTimer@timer (locals=0, argc=0)
:[89]
push.v builtin.mainTimer
call.i time_source_pause(argc=1)
popz.v
push.v builtin.hasDelay
conv.v.b
bf [91]

:[90]
push.v builtin.delayTimer
call.i time_source_pause(argc=1)
popz.v

:[91]
exit.i

:[92]
push.i [function]gml_Script_anon@4284@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.pause
b [107]

> gml_Script_anon@4436@myTimer@timer (locals=2, argc=0)
:[93]
push.v builtin.hasDelay
conv.v.b
bf [102]

:[94]
push.v builtin.mainTimer
call.i time_source_get_state(argc=1)
pop.v.v local._stateMain
push.v builtin.delayTimer
call.i time_source_get_state(argc=1)
pop.v.v local._stateDelay
pushloc.v local._stateDelay
pushi.e 2
cmp.i.v EQ
bt [96]

:[95]
pushloc.v local._stateMain
pushi.e 2
cmp.i.v EQ
b [97]

:[96]
push.e 1

:[97]
bf [100]

:[98]
pushi.e 1
conv.b.v
ret.v

:[99]
b [101]

:[100]
pushi.e 0
conv.b.v
ret.v

:[101]
b [106]

:[102]
push.v builtin.mainTimer
call.i time_source_get_state(argc=1)
pop.v.v local._stateMain
pushloc.v local._stateMain
pushi.e 2
cmp.i.v EQ
bf [105]

:[103]
pushi.e 1
conv.b.v
ret.v

:[104]
b [106]

:[105]
pushi.e 0
conv.b.v
ret.v

:[106]
exit.i

:[107]
push.i [function]gml_Script_anon@4436@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_paused
b [111]

> gml_Script_anon@4959@myTimer@timer (locals=0, argc=0)
:[108]
push.v builtin.mainTimer
call.i time_source_resume(argc=1)
popz.v
push.v builtin.hasDelay
conv.v.b
bf [110]

:[109]
push.v builtin.delayTimer
call.i time_source_resume(argc=1)
popz.v

:[110]
exit.i

:[111]
push.i [function]gml_Script_anon@4959@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.resume
b [115]

> gml_Script_anon@5103@myTimer@timer (locals=0, argc=0)
:[112]
push.v builtin.mainTimer
call.i time_source_stop(argc=1)
popz.v
push.v builtin.hasDelay
conv.v.b
bf [114]

:[113]
push.v builtin.delayTimer
call.i time_source_stop(argc=1)
popz.v

:[114]
exit.i

:[115]
push.i [function]gml_Script_anon@5103@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.stop
b [119]

> gml_Script_anon@5245@myTimer@timer (locals=0, argc=0)
:[116]
push.v builtin.mainTimer
call.i time_source_reset(argc=1)
popz.v
push.v builtin.hasDelay
conv.v.b
bf [118]

:[117]
push.v builtin.delayTimer
call.i time_source_reset(argc=1)
popz.v

:[118]
pushi.e 0
pop.v.i builtin.iterationCurrent
push.v builtin.initialLength
pop.v.v builtin.maxLength
push.v builtin.iterationMax
call.i @@NewGMLArray@@(argc=0)
push.v builtin._main_end_method
pushi.e 1
conv.i.v
push.v builtin.maxLength
push.v builtin.mainTimer
call.i time_source_reconfigure(argc=6)
popz.v
exit.i

:[119]
push.i [function]gml_Script_anon@5245@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset
b [143]

> gml_Script_anon@5835@myTimer@timer (locals=1, argc=3)
:[120]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [122]

:[121]
pushi.e -1
pop.v.i builtin.argument0

:[122]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [124]

:[123]
pushi.e 0
pop.v.i builtin.argument1

:[124]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [126]

:[125]
pushi.e -1
pop.v.i builtin.argument2

:[126]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [128]

:[127]
push.v builtin.maxLength
b [129]

:[128]
push.v arg.argument0

:[129]
pop.v.v local._maxLength
push.v arg.argument0
pushi.e -1
cmp.i.v NEQ
bf [131]

:[130]
push.v local._maxLength
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
mul.v.v
pop.v.v local._maxLength
pushloc.v local._maxLength
call.i round(argc=1)
pop.v.v local._maxLength

:[131]
pushloc.v local._maxLength
pop.v.v builtin.initialLength
push.v builtin.initialLength
pop.v.v builtin.maxLength
push.v arg.argument1
pushi.e 0
cmp.i.v EQ
bf [133]

:[132]
push.v builtin.maxDelay
b [134]

:[133]
push.v arg.argument1

:[134]
pop.v.v builtin.maxDelay
push.v builtin.maxDelay
pushi.e 0
cmp.i.v GT
bf [136]

:[135]
pushi.e 1
conv.b.v
b [137]

:[136]
pushi.e 0
conv.b.v

:[137]
pop.v.v builtin.hasDelay
push.v arg.argument2
pushi.e -1
cmp.i.v EQ
bf [139]

:[138]
push.v builtin.iterationMax
b [140]

:[139]
push.v arg.argument2

:[140]
pop.v.v builtin.iterationMax
push.v builtin.iterationMax
call.i @@NewGMLArray@@(argc=0)
push.v builtin._main_end_method
pushi.e 1
conv.i.v
push.v builtin.maxLength
push.v builtin.mainTimer
call.i time_source_reconfigure(argc=6)
popz.v
push.v builtin.hasDelay
conv.v.b
bf [142]

:[141]
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=0)
push.v builtin._delay_end_method
pushi.e 1
conv.i.v
push.v builtin.maxDelay
push.v builtin.delayTimer
call.i time_source_reconfigure(argc=6)
popz.v

:[142]
exit.i

:[143]
push.i [function]gml_Script_anon@5835@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.change_param
b [148]

> gml_Script_anon@6630@myTimer@timer (locals=0, argc=0)
:[144]
push.v builtin.hasDelay
conv.v.b
not.b
bf [146]

:[145]
push.v builtin.mainTimer
call.i time_source_start(argc=1)
popz.v
b [147]

:[146]
push.v builtin.mainTimer
call.i time_source_stop(argc=1)
popz.v
push.v builtin.delayTimer
call.i time_source_start(argc=1)
popz.v

:[147]
exit.i

:[148]
push.i [function]gml_Script_anon@6630@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.run
b [151]

> gml_Script_anon@6879@myTimer@timer (locals=0, argc=0)
:[149]
push.v builtin.maxLength
ret.v

:[150]
exit.i

:[151]
push.i [function]gml_Script_anon@6879@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_cur_speed
b [157]

> gml_Script_anon@6971@myTimer@timer (locals=0, argc=0)
:[152]
push.v builtin.playDirection
pushi.e 1
cmp.i.v EQ
bf [155]

:[153]
push.v builtin.mainTimer
call.i time_source_get_period(argc=1)
push.v builtin.mainTimer
call.i time_source_get_time_remaining(argc=1)
sub.v.v
ret.v

:[154]
b [156]

:[155]
push.v builtin.mainTimer
call.i time_source_get_time_remaining(argc=1)
ret.v

:[156]
exit.i

:[157]
push.i [function]gml_Script_anon@6971@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_cur_length
b [163]

> gml_Script_anon@7243@myTimer@timer (locals=0, argc=0)
:[158]
push.v builtin.hasDelay
conv.v.b
bf [161]

:[159]
push.v builtin.delayTimer
call.i time_source_get_period(argc=1)
push.v builtin.delayTimer
call.i time_source_get_time_remaining(argc=1)
sub.v.v
ret.v

:[160]
b [162]

:[161]
pushi.e -1
conv.i.v
ret.v

:[162]
exit.i

:[163]
push.i [function]gml_Script_anon@7243@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_cur_length_delay
b [175]

> gml_Script_anon@7477@myTimer@timer (locals=0, argc=0)
:[164]
push.v builtin.curveType
push.s "linear"@8304
cmp.s.v EQ
bf [170]

:[165]
push.v builtin.playDirection
pushi.e 1
cmp.i.v EQ
bf [168]

:[166]
call.i @@This@@(argc=0)
push.v builtin.get_cur_length
callv.v 0
push.v builtin.maxLength
div.v.v
ret.v

:[167]
b [169]

:[168]
call.i @@This@@(argc=0)
push.v builtin.get_cur_length
callv.v 0
push.v builtin.maxLength
div.v.v
pushi.e 1
sub.i.v
call.i abs(argc=1)
ret.v

:[169]
b [174]

:[170]
push.v builtin.playDirection
pushi.e 1
cmp.i.v EQ
bf [173]

:[171]
call.i @@This@@(argc=0)
push.v builtin.get_cur_length
callv.v 0
push.v builtin.maxLength
div.v.v
push.v builtin.curveChan
call.i animcurve_channel_evaluate(argc=2)
pop.v.v builtin.curveVal
push.v builtin.curveVal
ret.v

:[172]
b [174]

:[173]
call.i @@This@@(argc=0)
push.v builtin.get_cur_length
callv.v 0
push.v builtin.maxLength
div.v.v
push.v builtin.curveChan
call.i animcurve_channel_evaluate(argc=2)
pop.v.v builtin.curveVal
push.v builtin.curveVal
pushi.e 1
sub.i.v
call.i abs(argc=1)
pop.v.v builtin.curveVal
push.v builtin.curveVal
ret.v

:[174]
exit.i

:[175]
push.i [function]gml_Script_anon@7477@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_cur_length_normalize
b [190]

> gml_Script_anon@8037@myTimer@timer (locals=0, argc=0)
:[176]
push.v builtin.hasDelay
conv.v.b
bf [185]

:[177]
push.v builtin.mainTimer
call.i time_source_get_reps_remaining(argc=1)
pushi.e 0
cmp.i.v EQ
bf [179]

:[178]
push.v builtin.delayTimer
call.i time_source_get_reps_remaining(argc=1)
pushi.e 0
cmp.i.v EQ
b [180]

:[179]
push.e 0

:[180]
bf [183]

:[181]
pushi.e 1
conv.b.v
ret.v

:[182]
b [184]

:[183]
pushi.e 0
conv.b.v
ret.v

:[184]
b [189]

:[185]
push.v builtin.mainTimer
call.i time_source_get_reps_remaining(argc=1)
pushi.e 0
cmp.i.v EQ
bf [188]

:[186]
pushi.e 1
conv.b.v
ret.v

:[187]
b [189]

:[188]
pushi.e 0
conv.b.v
ret.v

:[189]
exit.i

:[190]
push.i [function]gml_Script_anon@8037@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_finished
b [193]

> gml_Script_anon@8431@myTimer@timer (locals=0, argc=0)
:[191]
push.v builtin.iterationCurrent
push.v builtin.iterationMax
cmp.v.v EQ
conv.b.v
ret.v

:[192]
exit.i

:[193]
push.i [function]gml_Script_anon@8431@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_last_iteration
b [205]

> gml_Script_anon@8552@myTimer@timer (locals=2, argc=0)
:[194]
call.i @@This@@(argc=0)
push.v builtin.is_finished
callv.v 0
conv.v.b
bf [200]

:[195]
push.v builtin.playDirection
pushi.e 1
cmp.i.v EQ
bf [197]

:[196]
push.v builtin.frameMax
pushi.e 1
sub.i.v
b [198]

:[197]
pushi.e 0
conv.i.v

:[198]
ret.v

:[199]
b [204]

:[200]
push.v builtin.maxLength
push.v builtin.frameMax
div.v.v
pop.v.v local._timePerFrame
push.v builtin.playDirection
pushi.e 1
cmp.i.v EQ
bf [203]

:[201]
call.i @@This@@(argc=0)
push.v builtin.get_cur_length
callv.v 0
pushloc.v local._timePerFrame
div.v.v
pop.v.v local._currentFrame
push.v builtin.frameMax
pushi.e 1
sub.i.v
pushloc.v local._currentFrame
call.i floor(argc=1)
call.i min(argc=2)
ret.v

:[202]
b [204]

:[203]
call.i @@This@@(argc=0)
push.v builtin.get_cur_length
callv.v 0
pushloc.v local._timePerFrame
div.v.v
pop.v.v local._currentFrame
pushloc.v local._currentFrame
call.i ceil(argc=1)
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
call.i max(argc=2)
ret.v

:[204]
exit.i

:[205]
push.i [function]gml_Script_anon@8552@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_current_frame
b [208]

> gml_Script_anon@9028@myTimer@timer (locals=0, argc=0)
:[206]
push.v builtin.sprite
ret.v

:[207]
exit.i

:[208]
push.i [function]gml_Script_anon@9028@myTimer@timer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_sprite
exit.i

:[209]
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.myTimer
popz.v

:[end]