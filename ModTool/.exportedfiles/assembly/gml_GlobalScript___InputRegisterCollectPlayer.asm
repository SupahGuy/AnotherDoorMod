:[0]
b [102]

> gml_Script___InputRegisterCollectPlayer (locals=0, argc=0)
:[1]
b [101]

> gml_Script_anon@154@__InputRegisterCollectPlayer@__InputRegisterCollectPlayer (locals=20, argc=1)
:[2]
isstaticok.e
bt [4]

:[3]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray
push.v static._system
pushi.e -9
push.v [stacktop]self.__verbCount
pop.v.v static._verbCount
push.v static._system
pushi.e -9
push.v [stacktop]self.__virtualButtonArray
pop.v.v static._virtualButtonArray

:[4]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [100]

:[5]
push.v builtin.__device
pop.v.v local._device
call.i @@This@@(argc=0)
push.v builtin.__UpdateStatus
callv.v 0
pop.v.v local._connected
push.v builtin.__valueRawArray
pop.v.v local._valueRawArray
push.v builtin.__valueClampArray
pop.v.v local._valueClampArray
pushloc.v local._connected
conv.v.b
not.b
bt [11]

:[6]
push.v builtin.__blocked
conv.v.b
bt [11]

:[7]
push.v builtin.__ghost
conv.v.b
bt [11]

:[8]
pushloc.v local._device
call.i gml_Script_InputDeviceGetRebinding(argc=1)
conv.v.b
bt [11]

:[9]
call.i gml_Script_InputGameHasFocus(argc=0)
conv.v.b
not.b
bt [11]

:[10]
call.i gml_Script___InputRestartTimeout(argc=0)
conv.v.b
b [12]

:[11]
push.e 1

:[12]
bf [20]

:[13]
b [16]

> gml_Script_anon@945@anon@154@__InputRegisterCollectPlayer@__InputRegisterCollectPlayer (locals=0, argc=0)
:[14]
pushi.e 0
conv.i.v
ret.v

:[15]
exit.i

:[16]
push.i [function]gml_Script_anon@945@anon@154@__InputRegisterCollectPlayer@__InputRegisterCollectPlayer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushloc.v local._valueRawArray
call.i array_map_ext(argc=2)
popz.v
b [19]

> gml_Script_anon@1021@anon@154@__InputRegisterCollectPlayer@__InputRegisterCollectPlayer (locals=0, argc=0)
:[17]
pushi.e 0
conv.i.v
ret.v

:[18]
exit.i

:[19]
push.i [function]gml_Script_anon@1021@anon@154@__InputRegisterCollectPlayer@__InputRegisterCollectPlayer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushloc.v local._valueClampArray
call.i array_map_ext(argc=2)
popz.v
b [100]

:[20]
pushloc.v local._device
pushi.e -2
cmp.i.v EQ
bt [25]

:[21]
pushi.e 0
bf [23]

:[22]
pushloc.v local._device
pushi.e -1
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
b [26]

:[25]
push.e 1

:[26]
bf [36]

:[27]
pushi.e 0
pop.v.i local._i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [35]

:[28]
pushi.e 1
conv.i.v
pushloc.v local._i
call.i device_mouse_check_button_pressed(argc=2)
conv.v.b
bf [34]

:[29]
pushi.e 0
pop.v.i local._j
push.v static._virtualButtonArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [33]

:[30]
pushi.e -16
pushloc.v local._j
conv.v.i
push.v [array]self._virtualButtonArray
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.__CaptureTouchpoint
callv.v 1
conv.v.b
bf [32]

:[31]
b [33]

:[32]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
pushi.e 1
sub.i.i
dup.i 0
bt [30]

:[33]
popz.i

:[34]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [28]

:[35]
popz.i

:[36]
pushloc.v local._device
pushi.e 0
cmp.i.v GTE
bf [60]

:[37]
pushi.e -6
push.l 0
conv.l.i
push.v [array]self.__thresholdMinArray
pop.v.v local._minLeft
pushi.e -6
push.l 0
conv.l.i
push.v [array]self.__thresholdMaxArray
pop.v.v local._maxLeft
pushi.e -6
push.l 1
conv.l.i
push.v [array]self.__thresholdMinArray
pop.v.v local._minRight
pushi.e -6
push.l 1
conv.l.i
push.v [array]self.__thresholdMaxArray
pop.v.v local._maxRight
pushloc.v local._device
call.i gml_Script_InputDeviceGetGamepadType(argc=1)
pop.v.v builtin.__lastConnectedGamepadType
pushloc.v local._device
call.i gml_Script___InputGamepadGetReadArray(argc=1)
pop.v.v local._readArray
push.v builtin.__gamepadBindingArray
pop.v.v local._bindingArray
pushi.e 0
pop.v.i local._i
push.v static._verbCount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [59]

:[38]
pushi.e 0
pop.v.i local._valueRaw
pushi.e 0
pop.v.i local._valueClamp
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._bindingArray
pop.v.v local._alternateArray
pushi.e 0
pop.v.i local._j
pushloc.v local._alternateArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [58]

:[39]
pushi.e -7
pushloc.v local._j
conv.v.i
push.v [array]self._alternateArray
pop.v.v local._rawBinding
pushloc.v local._rawBinding
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [57]

:[40]
pushloc.v local._rawBinding
call.i abs(argc=1)
pop.v.v local._absBinding
pushloc.v local._rawBinding
call.i sign(argc=1)
pushloc.v local._absBinding
pushloc.v local._device
call.i @@This@@(argc=0)
pushi.e -7
pushloc.v local._absBinding
push.i 32769
sub.i.v
conv.v.i
push.v [array]self._readArray
callv.v 2
mul.v.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v local._raw
pushloc.v local._raw
pushloc.v local._valueRaw
cmp.v.v GT
bf [57]

:[41]
pushloc.v local._raw
pop.v.v local._valueRaw
pushloc.v local._absBinding
push.i 32775
cmp.i.v EQ
bt [43]

:[42]
pushloc.v local._absBinding
push.i 32776
cmp.i.v EQ
b [44]

:[43]
push.e 1

:[44]
bf [46]

:[45]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._raw
push.d 0.05
sub.d.v
push.d 0.85
div.d.v
call.i clamp(argc=3)
pop.v.v local._valueClamp
b [57]

:[46]
pushloc.v local._absBinding
push.i 32785
cmp.i.v EQ
bt [48]

:[47]
pushloc.v local._absBinding
push.i 32786
cmp.i.v EQ
b [49]

:[48]
push.e 1

:[49]
bf [51]

:[50]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._raw
pushloc.v local._minLeft
sub.v.v
pushloc.v local._maxLeft
pushloc.v local._minLeft
sub.v.v
div.v.v
call.i clamp(argc=3)
pop.v.v local._valueClamp
b [57]

:[51]
pushloc.v local._absBinding
push.i 32787
cmp.i.v EQ
bt [53]

:[52]
pushloc.v local._absBinding
push.i 32788
cmp.i.v EQ
b [54]

:[53]
push.e 1

:[54]
bf [56]

:[55]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._raw
pushloc.v local._minRight
sub.v.v
pushloc.v local._maxRight
pushloc.v local._minRight
sub.v.v
div.v.v
call.i clamp(argc=3)
pop.v.v local._valueClamp
b [57]

:[56]
pushloc.v local._raw
pushi.e 0
cmp.i.v GT
pop.v.b local._valueClamp

:[57]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
pushi.e 1
sub.i.i
dup.i 0
bt [39]

:[58]
popz.i
pushloc.v local._valueRaw
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._valueRawArray
pushloc.v local._valueClamp
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._valueClampArray
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [38]

:[59]
popz.i
b [100]

:[60]
pushloc.v local._device
pushi.e -1
cmp.i.v EQ
bf [90]

:[61]
push.v builtin.__kbmBindingArray
pop.v.v local._bindingArray
pushi.e 0
pop.v.i local._i
push.v static._verbCount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [89]

:[62]
pushi.e 0
pop.v.b local._newHeld
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._bindingArray
pop.v.v local._alternateArray
pushi.e 0
pop.v.i local._j
pushloc.v local._alternateArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [85]

:[63]
pushi.e -7
pushloc.v local._j
conv.v.i
push.v [array]self._alternateArray
pop.v.v local._binding
pushloc.v local._binding
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [84]

:[64]
pushloc.v local._binding
pushi.e 1
cmp.i.v EQ
bt [69]

:[65]
pushloc.v local._binding
pushi.e 3
cmp.i.v EQ
bt [69]

:[66]
pushloc.v local._binding
pushi.e 2
cmp.i.v EQ
bt [69]

:[67]
pushloc.v local._binding
pushi.e 4
cmp.i.v EQ
bt [69]

:[68]
pushloc.v local._binding
pushi.e 5
cmp.i.v EQ
b [70]

:[69]
push.e 1

:[70]
bf [74]

:[71]
pushloc.v local._binding
call.i mouse_check_button(argc=1)
conv.v.b
bf [73]

:[72]
pushi.e 1
pop.v.b local._newHeld

:[73]
b [84]

:[74]
pushloc.v local._binding
push.i 40964
cmp.i.v EQ
bf [78]

:[75]
call.i mouse_wheel_up(argc=0)
conv.v.b
bf [77]

:[76]
pushi.e 1
pop.v.b local._newHeld

:[77]
b [84]

:[78]
pushloc.v local._binding
push.i 40965
cmp.i.v EQ
bf [82]

:[79]
call.i mouse_wheel_down(argc=0)
conv.v.b
bf [81]

:[80]
pushi.e 1
pop.v.b local._newHeld

:[81]
b [84]

:[82]
pushloc.v local._binding
call.i keyboard_check(argc=1)
conv.v.b
bf [84]

:[83]
pushi.e 1
pop.v.b local._newHeld

:[84]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
pushi.e 1
sub.i.i
dup.i 0
bt [63]

:[85]
popz.i
pushloc.v local._newHeld
conv.v.b
bf [87]

:[86]
pushi.e 1
conv.i.v
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._valueRawArray
pushi.e 1
conv.i.v
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._valueClampArray
b [88]

:[87]
pushi.e 0
conv.i.v
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._valueRawArray
pushi.e 0
conv.i.v
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._valueClampArray

:[88]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [62]

:[89]
popz.i
b [100]

:[90]
pushloc.v local._device
pushi.e -2
cmp.i.v EQ
bf [100]

:[91]
b [94]

> gml_Script_anon@12074@anon@154@__InputRegisterCollectPlayer@__InputRegisterCollectPlayer (locals=0, argc=0)
:[92]
pushi.e 0
conv.i.v
ret.v

:[93]
exit.i

:[94]
push.i [function]gml_Script_anon@12074@anon@154@__InputRegisterCollectPlayer@__InputRegisterCollectPlayer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushloc.v local._valueClampArray
call.i array_map_ext(argc=2)
popz.v
b [97]

> gml_Script_anon@12154@anon@154@__InputRegisterCollectPlayer@__InputRegisterCollectPlayer (locals=0, argc=0)
:[95]
pushi.e 0
conv.i.v
ret.v

:[96]
exit.i

:[97]
push.i [function]gml_Script_anon@12154@anon@154@__InputRegisterCollectPlayer@__InputRegisterCollectPlayer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushloc.v local._valueRawArray
call.i array_map_ext(argc=2)
popz.v
pushi.e 0
pop.v.i local._i
push.v static._virtualButtonArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [99]

:[98]
pushi.e -16
pushloc.v local._i
conv.v.i
push.v [array]self._virtualButtonArray
pushloc.v local._valueClampArray
pushloc.v local._valueRawArray
dup.v 2 8
dup.v 0
push.v stacktop.__Collect
callv.v 2
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [98]

:[99]
popz.i

:[100]
popenv [5]
exit.i

:[101]
push.i [function]gml_Script_anon@154@__InputRegisterCollectPlayer@__InputRegisterCollectPlayer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 0
conv.i.v
push.l 5
conv.l.v
call.i gml_Script___InputPlugInRegisterCallbackInternal(argc=3)
popz.v
exit.i

:[102]
push.i [function]gml_Script___InputRegisterCollectPlayer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputRegisterCollectPlayer
popz.v

:[end]