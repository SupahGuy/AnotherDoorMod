:[0]
b [36]

> gml_Script_InputTriggerEffectGetState (locals=3, argc=2)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument1

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputTriggerEffectSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__playerArray
pop.v.v static._playerArray

:[5]
push.v arg.argument1
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.s "\")"@194
conv.s.v
push.v arg.argument1
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[7]
push.v arg.argument1
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
push.v arg.argument1
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[9]
push.v arg.argument1
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument1
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[11]
push.v arg.argument0
push.i 32775
cmp.i.v EQ
bt [13]

:[12]
push.v arg.argument0
push.i 32776
cmp.i.v EQ
b [14]

:[13]
push.e 1

:[14]
not.b
bf [16]

:[15]
push.s " not a gamepad trigger"@1917
conv.s.v
push.v arg.argument0
push.s "Value "@1918
conv.s.v
call.i gml_Script_InputPlugInError(argc=3)
popz.v

:[16]
push.v arg.argument1
call.i gml_Script_InputPlayerGetDevice(argc=1)
pop.v.v local._device
pushloc.v local._device
pushi.e 0
cmp.i.v LT
bt [18]

:[17]
pushloc.v local._device
call.i gml_Script_InputDeviceIsConnected(argc=1)
conv.v.b
not.b
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
pushbltn.v builtin.undefined
ret.v

:[21]
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._playerArray
pop.v.v local._struct
pushloc.v local._struct
pushi.e -9
push.v [stacktop]self.__paused
conv.v.b
bf [23]

:[22]
push.l -1
conv.l.v
ret.v

:[23]
pushbltn.v builtin.undefined
pop.v.v local._effect
push.v arg.argument0
push.i 32775
cmp.i.v EQ
bf [27]

:[24]
pushloc.v local._struct
pushi.e -9
push.v [stacktop]self.__interceptedLeft
conv.v.b
bf [26]

:[25]
push.l -1
conv.l.v
ret.v

:[26]
pushloc.v local._struct
pushi.e -9
push.v [stacktop]self.__effectLeft
pop.v.v local._effect
b [32]

:[27]
push.v arg.argument0
push.i 32776
cmp.i.v EQ
bf [31]

:[28]
pushloc.v local._struct
pushi.e -9
push.v [stacktop]self.__interceptedRight
conv.v.b
bf [30]

:[29]
push.l -1
conv.l.v
ret.v

:[30]
pushloc.v local._struct
pushi.e -9
push.v [stacktop]self.__effectRight
pop.v.v local._effect
b [32]

:[31]
push.s " not a gamepad trigger"@1917
conv.s.v
push.v arg.argument0
push.s "Value "@1918
conv.s.v
call.i gml_Script_InputPlugInError(argc=3)
popz.v
pushi.e 0
conv.b.v
ret.v

:[32]
pushloc.v local._effect
call.i is_struct(argc=1)
conv.v.b
not.b
bf [34]

:[33]
push.l 0
conv.l.v
ret.v

:[34]
pushloc.v local._effect
push.v arg.argument0
pushloc.v local._device
dup.v 2 8
dup.v 0
push.v stacktop.__SteamGetState
callv.v 2
ret.v

:[35]
exit.i

:[36]
push.i [function]gml_Script_InputTriggerEffectGetState
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputTriggerEffectGetState
popz.v

:[end]