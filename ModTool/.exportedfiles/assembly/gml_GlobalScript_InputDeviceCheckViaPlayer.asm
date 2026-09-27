:[0]
b [65]

> gml_Script_InputDeviceCheckViaPlayer (locals=9, argc=3)
:[1]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument2

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray

:[5]
push.v arg.argument2
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.s "\")"@194
conv.s.v
push.v arg.argument2
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[7]
push.v arg.argument2
pushi.e 4
cmp.i.v GTE
bf [9]

:[8]
push.s ")"@372
conv.s.v
pushi.e 4
conv.i.v
push.s " too large. Must be less than config `INPUT_MAX_PLAYERS` ("@6309
conv.s.v
push.v arg.argument2
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[9]
push.v arg.argument2
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument2
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[11]
call.i gml_Script_InputGameHasFocus(argc=0)
conv.v.b
not.b
bf [13]

:[12]
pushi.e 0
conv.b.v
ret.v

:[13]
pushi.e -16
push.v arg.argument2
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [64]

:[14]
push.v arg.argument0
pushi.e 0
cmp.i.v GTE
bf [38]

:[15]
pushi.e -6
push.l 0
conv.l.i
push.v [array]self.__thresholdMinArray
pop.v.v local._minLeft
pushi.e -6
push.l 1
conv.l.i
push.v [array]self.__thresholdMinArray
pop.v.v local._minRight
push.v arg.argument0
call.i gml_Script___InputGamepadGetReadArray(argc=1)
pop.v.v local._readArray
pushi.e -6
push.v arg.argument1
conv.v.i
push.v [array]self.__gamepadBindingArray
pop.v.v local._alternateArray
pushi.e 0
pop.v.i local._i
pushloc.v local._alternateArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [37]

:[16]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._alternateArray
pop.v.v local._rawBinding
pushloc.v local._rawBinding
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [36]

:[17]
pushloc.v local._rawBinding
call.i abs(argc=1)
pop.v.v local._absBinding
pushloc.v local._absBinding
push.i 32775
cmp.i.v EQ
bt [19]

:[18]
pushloc.v local._absBinding
push.i 32776
cmp.i.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [23]

:[21]
pushloc.v local._absBinding
push.v arg.argument0
call.i @@This@@(argc=0)
pushi.e -7
pushloc.v local._absBinding
push.i 32769
sub.i.v
conv.v.i
push.v [array]self._readArray
callv.v 2
push.d 0.05
cmp.d.v GT
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[22]
b [36]

:[23]
pushloc.v local._absBinding
push.i 32785
cmp.i.v EQ
bt [25]

:[24]
pushloc.v local._absBinding
push.i 32786
cmp.i.v EQ
b [26]

:[25]
push.e 1

:[26]
bf [29]

:[27]
pushloc.v local._absBinding
push.v arg.argument0
call.i @@This@@(argc=0)
pushi.e -7
pushloc.v local._absBinding
push.i 32769
sub.i.v
conv.v.i
push.v [array]self._readArray
callv.v 2
pushloc.v local._minLeft
cmp.v.v GT
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[28]
b [36]

:[29]
pushloc.v local._absBinding
push.i 32787
cmp.i.v EQ
bt [31]

:[30]
pushloc.v local._absBinding
push.i 32788
cmp.i.v EQ
b [32]

:[31]
push.e 1

:[32]
bf [35]

:[33]
pushloc.v local._absBinding
push.v arg.argument0
call.i @@This@@(argc=0)
pushi.e -7
pushloc.v local._absBinding
push.i 32769
sub.i.v
conv.v.i
push.v [array]self._readArray
callv.v 2
pushloc.v local._minRight
cmp.v.v GT
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[34]
b [36]

:[35]
pushloc.v local._absBinding
push.v arg.argument0
call.i @@This@@(argc=0)
pushi.e -7
pushloc.v local._absBinding
push.i 32769
sub.i.v
conv.v.i
push.v [array]self._readArray
callv.v 2
pushi.e 0
cmp.i.v GT
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[36]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [16]

:[37]
popz.i
b [64]

:[38]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [63]

:[39]
pushi.e -6
push.v arg.argument1
conv.v.i
push.v [array]self.__kbmBindingArray
pop.v.v local._alternateArray
pushi.e 0
pop.v.i local._i
pushloc.v local._alternateArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [62]

:[40]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._alternateArray
pop.v.v local._binding
pushloc.v local._binding
pushi.e 1
cmp.i.v EQ
bt [45]

:[41]
pushloc.v local._binding
pushi.e 3
cmp.i.v EQ
bt [45]

:[42]
pushloc.v local._binding
pushi.e 2
cmp.i.v EQ
bt [45]

:[43]
pushloc.v local._binding
pushi.e 4
cmp.i.v EQ
bt [45]

:[44]
pushloc.v local._binding
pushi.e 5
cmp.i.v EQ
b [46]

:[45]
push.e 1

:[46]
bf [50]

:[47]
pushloc.v local._binding
call.i mouse_check_button(argc=1)
conv.v.b
bf [49]

:[48]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[49]
b [61]

:[50]
pushloc.v local._binding
push.i 40964
cmp.i.v EQ
bf [54]

:[51]
call.i mouse_wheel_up(argc=0)
conv.v.b
bf [53]

:[52]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[53]
b [61]

:[54]
pushloc.v local._binding
push.i 40965
cmp.i.v EQ
bf [58]

:[55]
call.i mouse_wheel_down(argc=0)
conv.v.b
bf [57]

:[56]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[57]
b [61]

:[58]
pushloc.v local._binding
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [61]

:[59]
pushloc.v local._binding
call.i keyboard_check(argc=1)
conv.v.b
bf [61]

:[60]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[61]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [40]

:[62]
popz.i
b [64]

:[63]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[64]
popenv [14]
exit.i

:[65]
push.i [function]gml_Script_InputDeviceCheckViaPlayer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceCheckViaPlayer
popz.v

:[end]