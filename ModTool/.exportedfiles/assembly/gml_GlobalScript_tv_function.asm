:[0]
b [39]

> gml_Script_tv_function (locals=0, argc=4)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[3]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument2

:[5]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.b builtin.argument3

:[7]
push.v arg.argument1
call.i is_array(argc=1)
conv.v.b
bf [9]

:[8]
push.v arg.argument1
b [10]

:[9]
push.v arg.argument1
call.i @@NewGMLArray@@(argc=1)

:[10]
pop.v.v arg.argument1
push.v arg.argument2
call.i is_array(argc=1)
conv.v.b
bf [12]

:[11]
push.v arg.argument2
b [13]

:[12]
push.v arg.argument2
call.i @@NewGMLArray@@(argc=1)

:[13]
pop.v.v arg.argument2
pushref.i 63
pushi.e -9
pushenv [38]

:[14]
push.v arg.argument1
call.i array_length(argc=1)
pushi.e 0
cmp.i.v NEQ
bf [17]

:[15]
push.v builtin.number
push.v arg.argument1
call.i array_get_index(argc=2)
pushi.e -1
cmp.i.v EQ
bf [17]

:[16]
b [38]

:[17]
push.v arg.argument2
call.i array_length(argc=1)
pushi.e 0
cmp.i.v NEQ
bf [20]

:[18]
push.v builtin.number
push.v arg.argument2
call.i array_get_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bf [20]

:[19]
b [38]

:[20]
push.v builtin.screenState
push.l 17
cmp.l.v EQ
bt [22]

:[21]
push.v builtin.screenState
push.l 18
cmp.l.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [33]

:[24]
push.v arg.argument0
push.l 18
cmp.l.v EQ
bf [27]

:[25]
b [38]

:[26]
b [32]

:[27]
push.v builtin.theCallbackTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bf [29]

:[28]
push.v builtin.theCallbackTimer
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v
push.v builtin.theCallbackTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v

:[29]
push.v arg.argument0
pop.v.v builtin.screenAfterTurnOn
push.l 16
pop.v.l builtin.screenFromCallback
push.v arg.argument3
conv.v.b
bf [31]

:[30]
call.i @@This@@(argc=0)
push.v builtin.callbackSwitchScreen
callv.v 0
popz.v
b [32]

:[31]
push.v builtin.theCallbackTimer
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
push.d 0.3
conv.d.v
push.d 0.1
conv.d.v
call.i random_range(argc=2)
dup.v 3 8
dup.v 0
push.v stacktop.change_param
callv.v 3
popz.v
push.v builtin.theCallbackTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.theCallbackTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[32]
b [38]

:[33]
push.v builtin.theCallbackTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bf [35]

:[34]
push.v builtin.theCallbackTimer
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v
push.v builtin.theCallbackTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v

:[35]
push.v arg.argument0
pop.v.v builtin.screenFromCallback
push.v arg.argument3
conv.v.b
bf [37]

:[36]
call.i @@This@@(argc=0)
push.v builtin.callbackSwitchScreen
callv.v 0
popz.v
b [38]

:[37]
push.v builtin.theCallbackTimer
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
push.d 0.3
conv.d.v
push.d 0.1
conv.d.v
call.i random_range(argc=2)
dup.v 3 8
dup.v 0
push.v stacktop.change_param
callv.v 3
popz.v
push.v builtin.theCallbackTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.theCallbackTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[38]
popenv [14]
exit.i

:[39]
push.i [function]gml_Script_tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.tv_function
popz.v
b [247]

> gml_Script_tv_state (locals=0, argc=0)
:[40]
call.i @@SetStatic@@(argc=0)
b [42]

> gml_Script_anon@1867@tv_state@tv_function (locals=0, argc=0)
:[41]
push.l 14
conv.l.v
call.i gml_Script_tv_function(argc=1)
popz.v
exit.i

:[42]
push.i [function]gml_Script_anon@1867@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.debug
b [44]

> gml_Script_anon@1937@tv_state@tv_function (locals=0, argc=0)
:[43]
push.l 8
conv.l.v
call.i gml_Script_tv_function(argc=1)
popz.v
exit.i

:[44]
push.i [function]gml_Script_anon@1937@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.blackout
b [46]

> gml_Script_anon@2013@tv_state@tv_function (locals=0, argc=0)
:[45]
push.l 9
conv.l.v
call.i gml_Script_tv_function(argc=1)
popz.v
exit.i

:[46]
push.i [function]gml_Script_anon@2013@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.lobby_error
b [52]

> gml_Script_anon@2088@tv_state@tv_function (locals=0, argc=2)
:[47]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [49]

:[48]
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.argument0

:[49]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [51]

:[50]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[51]
push.v arg.argument1
push.v arg.argument0
push.l 10
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[52]
push.i [function]gml_Script_anon@2088@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.lobbyP1
b [58]

> gml_Script_anon@2209@tv_state@tv_function (locals=0, argc=2)
:[53]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [55]

:[54]
pushi.e 3
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.argument0

:[55]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [57]

:[56]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[57]
push.v arg.argument1
push.v arg.argument0
push.l 11
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[58]
push.i [function]gml_Script_anon@2209@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.lobbyP2
b [64]

> gml_Script_anon@2330@tv_state@tv_function (locals=0, argc=2)
:[59]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [61]

:[60]
pushi.e 4
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.argument0

:[61]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [63]

:[62]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[63]
push.v arg.argument1
push.v arg.argument0
push.l 12
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[64]
push.i [function]gml_Script_anon@2330@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.lobbyP3
b [70]

> gml_Script_anon@2451@tv_state@tv_function (locals=0, argc=2)
:[65]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [67]

:[66]
pushi.e 7
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.argument0

:[67]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [69]

:[68]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[69]
push.v arg.argument1
push.v arg.argument0
push.l 13
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[70]
push.i [function]gml_Script_anon@2451@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.lobbyP4
b [76]

> gml_Script_anon@2572@tv_state@tv_function (locals=0, argc=2)
:[71]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [73]

:[72]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[73]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [75]

:[74]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[75]
push.v arg.argument1
push.v arg.argument0
push.l 34
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[76]
push.i [function]gml_Script_anon@2572@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.neutral
b [82]

> gml_Script_anon@2703@tv_state@tv_function (locals=0, argc=2)
:[77]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [79]

:[78]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[79]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [81]

:[80]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[81]
push.v arg.argument1
push.v arg.argument0
push.l 39
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[82]
push.i [function]gml_Script_anon@2703@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.suspicious
b [88]

> gml_Script_anon@2835@tv_state@tv_function (locals=0, argc=2)
:[83]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [85]

:[84]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[85]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [87]

:[86]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[87]
push.v arg.argument1
push.v arg.argument0
push.l 38
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[88]
push.i [function]gml_Script_anon@2835@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.laughing
b [94]

> gml_Script_anon@2961@tv_state@tv_function (locals=0, argc=2)
:[89]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [91]

:[90]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[91]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [93]

:[92]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[93]
push.v arg.argument1
push.v arg.argument0
push.l 37
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[94]
push.i [function]gml_Script_anon@2961@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.evil
b [100]

> gml_Script_anon@3085@tv_state@tv_function (locals=0, argc=2)
:[95]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [97]

:[96]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[97]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [99]

:[98]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[99]
push.v arg.argument1
push.v arg.argument0
push.l 35
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[100]
push.i [function]gml_Script_anon@3085@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.afraid
b [106]

> gml_Script_anon@3213@tv_state@tv_function (locals=0, argc=2)
:[101]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [103]

:[102]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[103]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [105]

:[104]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[105]
push.v arg.argument1
push.v arg.argument0
push.l 23
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[106]
push.i [function]gml_Script_anon@3213@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.applause
b [112]

> gml_Script_anon@3331@tv_state@tv_function (locals=0, argc=2)
:[107]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [109]

:[108]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[109]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [111]

:[110]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[111]
push.v arg.argument1
push.v arg.argument0
push.l 22
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[112]
push.i [function]gml_Script_anon@3331@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.noise
b [118]

> gml_Script_anon@3444@tv_state@tv_function (locals=0, argc=2)
:[113]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [115]

:[114]
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.argument0

:[115]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [117]

:[116]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[117]
push.v arg.argument1
push.v arg.argument0
push.l 20
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[118]
push.i [function]gml_Script_anon@3444@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.gem
b [124]

> gml_Script_anon@3558@tv_state@tv_function (locals=0, argc=2)
:[119]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [121]

:[120]
pushi.e 4
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.argument0

:[121]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [123]

:[122]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[123]
push.v arg.argument1
push.v arg.argument0
push.l 21
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[124]
push.i [function]gml_Script_anon@3558@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.door
b [130]

> gml_Script_anon@3685@tv_state@tv_function (locals=0, argc=2)
:[125]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [127]

:[126]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[127]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [129]

:[128]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[129]
push.v arg.argument1
push.v arg.argument0
push.l 28
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[130]
push.i [function]gml_Script_anon@3685@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.imbolc_moon
b [136]

> gml_Script_anon@3818@tv_state@tv_function (locals=0, argc=2)
:[131]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [133]

:[132]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[133]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [135]

:[134]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[135]
push.v arg.argument1
push.v arg.argument0
push.l 29
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[136]
push.i [function]gml_Script_anon@3818@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.samain_moon
b [142]

> gml_Script_anon@3949@tv_state@tv_function (locals=0, argc=2)
:[137]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [139]

:[138]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[139]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [141]

:[140]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[141]
push.v arg.argument1
push.v arg.argument0
push.l 31
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[142]
push.i [function]gml_Script_anon@3949@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.yule_moon
b [148]

> gml_Script_anon@4080@tv_state@tv_function (locals=0, argc=2)
:[143]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [145]

:[144]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[145]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [147]

:[146]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[147]
push.v arg.argument1
push.v arg.argument0
push.l 30
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[148]
push.i [function]gml_Script_anon@4080@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.blue_screen
b [154]

> gml_Script_anon@4212@tv_state@tv_function (locals=0, argc=2)
:[149]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [151]

:[150]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[151]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [153]

:[152]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[153]
push.v arg.argument1
push.v arg.argument0
push.l 32
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[154]
push.i [function]gml_Script_anon@4212@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.mabon_moon
b [160]

> gml_Script_anon@4343@tv_state@tv_function (locals=0, argc=2)
:[155]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [157]

:[156]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[157]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [159]

:[158]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[159]
push.v arg.argument1
push.v arg.argument0
push.l 33
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[160]
push.i [function]gml_Script_anon@4343@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.litha_moon
b [166]

> gml_Script_anon@4466@tv_state@tv_function (locals=0, argc=2)
:[161]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [163]

:[162]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[163]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [165]

:[164]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[165]
push.v arg.argument1
push.v arg.argument0
push.l 24
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[166]
push.i [function]gml_Script_anon@4466@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.p1
b [172]

> gml_Script_anon@4575@tv_state@tv_function (locals=0, argc=2)
:[167]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [169]

:[168]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[169]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [171]

:[170]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[171]
push.v arg.argument1
push.v arg.argument0
push.l 25
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[172]
push.i [function]gml_Script_anon@4575@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.p2
b [178]

> gml_Script_anon@4684@tv_state@tv_function (locals=0, argc=2)
:[173]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [175]

:[174]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[175]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [177]

:[176]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[177]
push.v arg.argument1
push.v arg.argument0
push.l 26
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[178]
push.i [function]gml_Script_anon@4684@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.p3
b [184]

> gml_Script_anon@4793@tv_state@tv_function (locals=0, argc=2)
:[179]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [181]

:[180]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[181]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [183]

:[182]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[183]
push.v arg.argument1
push.v arg.argument0
push.l 27
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[184]
push.i [function]gml_Script_anon@4793@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.p4
b [186]

> gml_Script_anon@4904@tv_state@tv_function (locals=0, argc=0)
:[185]
push.l 17
conv.l.v
call.i gml_Script_tv_function(argc=1)
popz.v
exit.i

:[186]
push.i [function]gml_Script_anon@4904@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.off
b [190]

> gml_Script_anon@4972@tv_state@tv_function (locals=0, argc=1)
:[187]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [189]

:[188]
pushi.e 0
pop.v.b builtin.argument0

:[189]
push.v arg.argument0
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.l 18
conv.l.v
call.i gml_Script_tv_function(argc=4)
popz.v
exit.i

:[190]
push.i [function]gml_Script_anon@4972@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.turn_off
b [192]

> gml_Script_anon@5080@tv_state@tv_function (locals=0, argc=0)
:[191]
push.l 40
conv.l.v
call.i gml_Script_tv_function(argc=1)
popz.v
exit.i

:[192]
push.i [function]gml_Script_anon@5080@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.token_master_key
b [198]

> gml_Script_anon@5174@tv_state@tv_function (locals=0, argc=2)
:[193]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [195]

:[194]
pushglb.v global.narratorTv
pushi.e -9
push.v [stacktop]self.number
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.argument0

:[195]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [197]

:[196]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[197]
push.v arg.argument1
push.v arg.argument0
push.l 7
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[198]
push.i [function]gml_Script_anon@5174@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.monsters_announcement
b [204]

> gml_Script_anon@5335@tv_state@tv_function (locals=0, argc=2)
:[199]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [201]

:[200]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[201]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [203]

:[202]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[203]
push.v arg.argument1
push.v arg.argument0
push.l 6
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[204]
push.i [function]gml_Script_anon@5335@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.calibration
b [210]

> gml_Script_anon@5455@tv_state@tv_function (locals=0, argc=2)
:[205]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [207]

:[206]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[207]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [209]

:[208]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[209]
push.v arg.argument1
push.v arg.argument0
push.l 5
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[210]
push.i [function]gml_Script_anon@5455@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.bios
b [216]

> gml_Script_anon@5570@tv_state@tv_function (locals=0, argc=2)
:[211]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [213]

:[212]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[213]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [215]

:[214]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[215]
push.v arg.argument1
push.v arg.argument0
push.l 4
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[216]
push.i [function]gml_Script_anon@5570@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reward
b [222]

> gml_Script_anon@5693@tv_state@tv_function (locals=0, argc=2)
:[217]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [219]

:[218]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[219]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [221]

:[220]
pushglb.v global.narratorTv
pushi.e -9
push.v [stacktop]self.number
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.argument1

:[221]
push.v arg.argument1
push.v arg.argument0
push.l 41
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[222]
push.i [function]gml_Script_anon@5693@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.biome_forest
b [228]

> gml_Script_anon@5841@tv_state@tv_function (locals=0, argc=2)
:[223]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [225]

:[224]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[225]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [227]

:[226]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[227]
push.v arg.argument1
push.v arg.argument0
push.l 3
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[228]
push.i [function]gml_Script_anon@5841@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.welcome
b [234]

> gml_Script_anon@5961@tv_state@tv_function (locals=0, argc=2)
:[229]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [231]

:[230]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[231]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [233]

:[232]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[233]
push.v arg.argument1
push.v arg.argument0
push.l 2
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[234]
push.i [function]gml_Script_anon@5961@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.rule_gem
b [240]

> gml_Script_anon@6083@tv_state@tv_function (locals=0, argc=2)
:[235]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [237]

:[236]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[237]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [239]

:[238]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[239]
push.v arg.argument1
push.v arg.argument0
push.l 0
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[240]
push.i [function]gml_Script_anon@6083@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.rule_exit
b [246]

> gml_Script_anon@6210@tv_state@tv_function (locals=0, argc=2)
:[241]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [243]

:[242]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[243]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [245]

:[244]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument1

:[245]
push.v arg.argument1
push.v arg.argument0
push.l 1
conv.l.v
call.i gml_Script_tv_function(argc=3)
popz.v
exit.i

:[246]
push.i [function]gml_Script_anon@6210@tv_state@tv_function
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.rule_continue
exit.i

:[247]
push.i [function]gml_Script_tv_state
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.tv_state
popz.v
push.i [function]gml_Script_tv_state
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.tvState

:[end]