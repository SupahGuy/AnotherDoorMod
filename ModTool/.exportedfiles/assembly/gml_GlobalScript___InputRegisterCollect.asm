:[0]
b [99]

> gml_Script___InputRegisterCollect (locals=0, argc=0)
:[1]
b [98]

> gml_Script_anon@141@__InputRegisterCollect@__InputRegisterCollect (locals=5, argc=0)
:[2]
isstaticok.e
bt [43]

:[3]
setstatic.e
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray
push.v builtin.__gamepadArray
pop.v.v static._gamepadArray
push.v builtin.__rebindingArray
pop.v.v static._rebindingArray
call.i @@This@@(argc=0)
b [42]

> gml_Script__once@anon@358@anon@141@__InputRegisterCollect@__InputRegisterCollect (locals=1, argc=0)
:[4]
pushi.e 0
bt [9]

:[5]
pushi.e 0
bf [7]

:[6]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
pushi.e -2
conv.i.v
call.i gml_Script_InputPlayerSetDevice(argc=1)
popz.v
b [41]

:[12]
pushi.e 1
bt [17]

:[13]
pushi.e 0
bf [15]

:[14]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
not.b
b [16]

:[15]
push.e 0

:[16]
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
push.l 1
conv.l.v
call.i gml_Script_InputGetSteamInfo(argc=1)
conv.v.b
not.b
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e -1
conv.i.v
call.i gml_Script_InputPlayerSetDevice(argc=1)
popz.v
b [41]

:[23]
pushi.e 0
bt [34]

:[24]
pushi.e 1
bt [29]

:[25]
pushi.e 0
bf [27]

:[26]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
not.b
b [28]

:[27]
push.e 0

:[28]
b [30]

:[29]
push.e 1

:[30]
bf [32]

:[31]
push.l 1
conv.l.v
call.i gml_Script_InputGetSteamInfo(argc=1)
conv.v.b
b [33]

:[32]
push.e 0

:[33]
b [35]

:[34]
push.e 1

:[35]
bf [41]

:[36]
call.i gml_Script___InputUpdateGamepadPresence(argc=0)
popz.v
pushi.e 0
pop.v.i local._i
call.i gamepad_get_device_count(argc=0)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [40]

:[37]
pushloc.v local._i
call.i gml_Script_InputDeviceIsConnected(argc=1)
conv.v.b
bf [39]

:[38]
pushloc.v local._i
call.i gml_Script_InputPlayerSetDevice(argc=1)
popz.v
b [40]

:[39]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [37]

:[40]
popz.i

:[41]
exit.i

:[42]
push.i [function]gml_Script__once@anon@358@anon@141@__InputRegisterCollect@__InputRegisterCollect
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
callv.v 0
pop.v.v static._once

:[43]
pushi.e 1
bt [48]

:[44]
pushi.e 0
bf [46]

:[45]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
not.b
b [47]

:[46]
push.e 0

:[47]
b [49]

:[48]
push.e 1

:[49]
not.b
not.b
bf [51]

:[50]
pushi.e 1
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [52]

:[51]
push.e 0

:[52]
bf [63]

:[53]
pushi.e 18
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [55]

:[54]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 18
conv.i.v
call.i keyboard_key_release(argc=1)
popz.v
pushi.e 32
conv.i.v
call.i keyboard_key_release(argc=1)
popz.v
pushi.e 164
conv.i.v
call.i keyboard_key_release(argc=1)
popz.v
pushi.e 165
conv.i.v
call.i keyboard_key_release(argc=1)
popz.v

:[58]
pushi.e 230
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [60]

:[59]
pushi.e 230
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
not.b
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
pushi.e 230
conv.i.v
call.i keyboard_key_release(argc=1)
popz.v

:[63]
push.v builtin.__usingSteamworks
conv.v.b
bf [78]

:[64]
call.i steam_input_run_frame(argc=0)
popz.v
pushi.e 1
bf [66]

:[65]
push.v builtin.__windowFocus
conv.v.b
b [67]

:[66]
push.e 0

:[67]
bf [72]

:[68]
call.i steam_is_overlay_activated(argc=0)
pop.v.v local._overlayEnabled
call.i keyboard_virtual_status(argc=0)
pop.v.v local._imeEnabled
pushloc.v local._imeEnabled
pushloc.v local._overlayEnabled
cmp.v.v NEQ
bf [72]

:[69]
pushloc.v local._overlayEnabled
conv.v.b
bf [71]

:[70]
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
call.i keyboard_virtual_show(argc=4)
popz.v
b [72]

:[71]
call.i keyboard_virtual_hide(argc=0)
popz.v

:[72]
call.i gml_Script___InputSteamHandlesChanged(argc=0)
conv.v.b
bf [78]

:[73]
push.s "Steam handles changed, disconnecting all gamepads for reconnection"@1732
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 0
pop.v.i local._device
push.v static._gamepadArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [77]

:[74]
pushi.e -16
pushloc.v local._device
conv.v.i
push.v [array]self._gamepadArray
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [76]

:[75]
pushi.e 1
conv.b.v
pushloc.v local._device
push.l 2
conv.l.v
call.i gml_Script___InputPlugInExecuteCallbacks(argc=3)
popz.v

:[76]
push.v local._device
push.e 1
add.i.v
pop.v.v local._device
pushi.e 1
sub.i.i
dup.i 0
bt [74]

:[77]
popz.i

:[78]
pushi.e 1
conv.i.b
bf [80]

:[79]
pushbltn.v builtin.current_time
pushi.e 1000
cmp.i.v GT
b [81]

:[80]
push.e 0

:[81]
bf [87]

:[82]
call.i gml_Script___InputUpdateGamepadPresence(argc=0)
popz.v
pushi.e 0
pop.v.i local._i
push.v builtin.__gamepadArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [86]

:[83]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.__gamepadArray
pop.v.v local._gamepad
pushloc.v local._gamepad
call.i is_struct(argc=1)
conv.v.b
bf [85]

:[84]
pushloc.v local._gamepad
dup.v 0 8
dup.v 0
push.v stacktop.__UpdatePrevValues
callv.v 0
popz.v

:[85]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [83]

:[86]
popz.i

:[87]
pushi.e 0
pop.v.i local._i
push.v static._rebindingArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [89]

:[88]
pushi.e -16
pushloc.v local._i
conv.v.i
push.v [array]self._rebindingArray
dup.v 0 8
dup.v 0
push.v stacktop.__Update
callv.v 0
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [88]

:[89]
popz.i
push.v builtin.__hotswap
conv.v.b
bf [95]

:[90]
call.i gml_Script_InputPlayerGetInactive(argc=0)
conv.v.b
bf [95]

:[91]
call.i gml_Script_InputPlayerGetDevice(argc=0)
call.i gml_Script_InputDeviceIsActive(argc=1)
conv.v.b
not.b
bf [95]

:[92]
call.i gml_Script_InputDeviceGetNewActivity(argc=0)
pop.v.v local._device
pushloc.v local._device
pushi.e -666
cmp.i.v NEQ
bf [95]

:[93]
pushloc.v local._device
call.i gml_Script_InputPlayerSetDevice(argc=1)
popz.v
push.v builtin.__hotswapCallback
call.i is_callable(argc=1)
conv.v.b
bf [95]

:[94]
call.i @@This@@(argc=0)
push.v builtin.__hotswapCallback
callv.v 0
popz.v

:[95]
pushi.e 0
pop.v.i local._i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [97]

:[96]
pushloc.v local._i
push.l 5
conv.l.v
call.i gml_Script___InputPlugInExecuteCallbacks(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [96]

:[97]
popz.i
exit.i

:[98]
push.i [function]gml_Script_anon@141@__InputRegisterCollect@__InputRegisterCollect
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___InputPlugInRegisterCallbackInternal(argc=3)
popz.v
exit.i

:[99]
push.i [function]gml_Script___InputRegisterCollect
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputRegisterCollect
popz.v
b [125]

> gml_Script___InputUpdateGamepadPresence (locals=4, argc=0)
:[100]
isstaticok.e
bt [102]

:[101]
setstatic.e
push.v builtin.__gamepadArray
pop.v.v static._gamepadArray

:[102]
pushi.e 0
bf [104]

:[103]
push.v builtin.__time
push.v builtin.__androidEnumerationTime
sub.v.v
pushi.e 1000
cmp.i.v GT
b [105]

:[104]
push.e 0

:[105]
bf [107]

:[106]
push.v builtin.__time
pop.v.v builtin.__androidEnumerationTime
call.i gamepad_enumerate(argc=0)
popz.v

:[107]
call.i gamepad_get_device_count(argc=0)
push.v static._gamepadArray
call.i array_length(argc=1)
sub.v.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v local._deviceCountChange
pushloc.v local._deviceCountChange
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [109]

:[108]
pushbltn.v builtin.undefined
push.v static._gamepadArray
call.i array_push(argc=2)
popz.v
pushi.e 1
sub.i.i
dup.i 0
bt [108]

:[109]
popz.i
pushi.e 0
pop.v.i local._device
push.v static._gamepadArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [124]

:[110]
pushi.e -16
pushloc.v local._device
conv.v.i
push.v [array]self._gamepadArray
pop.v.v local._gamepad
pushloc.v local._device
call.i gamepad_is_connected(argc=1)
pop.v.v local._connected
pushloc.v local._gamepad
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [121]

:[111]
pushloc.v local._connected
conv.v.b
bf [118]

:[112]
pushi.e 0
bf [114]

:[113]
pushloc.v local._gamepad
pushi.e -9
push.v [stacktop]self.__type
pushloc.v local._device
call.i gml_Script___InputGamepadIdentifySwitchType(argc=1)
cmp.v.v NEQ
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
pushi.e 1
conv.b.v
pushloc.v local._device
push.l 2
conv.l.v
call.i gml_Script___InputPlugInExecuteCallbacks(argc=3)
popz.v
pushloc.v local._device
push.l 3
conv.l.v
call.i gml_Script___InputPlugInExecuteCallbacks(argc=2)
popz.v

:[117]
pushbltn.v builtin.current_time
pushloc.v local._gamepad
pushi.e -9
pop.v.v [stacktop]self.__lastConnectedTime
b [120]

:[118]
pushbltn.v builtin.current_time
pushloc.v local._gamepad
pushi.e -9
push.v [stacktop]self.__lastConnectedTime
sub.v.v
pushi.e 300
cmp.i.v GTE
bf [120]

:[119]
pushi.e 1
conv.b.v
pushloc.v local._device
push.l 2
conv.l.v
call.i gml_Script___InputPlugInExecuteCallbacks(argc=3)
popz.v

:[120]
b [123]

:[121]
pushloc.v local._connected
conv.v.b
bf [123]

:[122]
pushloc.v local._device
push.l 3
conv.l.v
call.i gml_Script___InputPlugInExecuteCallbacks(argc=2)
popz.v

:[123]
push.v local._device
push.e 1
add.i.v
pop.v.v local._device
pushi.e 1
sub.i.i
dup.i 0
bt [110]

:[124]
popz.i
exit.i

:[125]
push.i [function]gml_Script___InputUpdateGamepadPresence
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputUpdateGamepadPresence
popz.v

:[end]