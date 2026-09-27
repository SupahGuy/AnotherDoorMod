:[0]
b [25]

> gml_Script_InputDeviceGetDescription (locals=1, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__gamepadArray
pop.v.v static._gamepadArray

:[3]
push.v arg.argument0
pushi.e 0
cmp.i.v GTE
bf [15]

:[4]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
push.v arg.argument0
push.s "gamepad "@6419
conv.s.v
call.i string_concat(argc=2)
ret.v

:[6]
push.v arg.argument0
call.i gml_Script_InputDeviceIsConnected(argc=1)
conv.v.b
not.b
bf [8]

:[7]
push.v arg.argument0
push.s "gamepad "@6419
conv.s.v
call.i string_concat(argc=2)
ret.v

:[8]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._gamepadArray
pop.v.v local._gamepad
pushloc.v local._gamepad
pushbltn.v builtin.undefined
cmp.v.v EQ
bt [10]

:[9]
pushloc.v local._gamepad
pushi.e -9
push.v [stacktop]self.__blocked
conv.v.b
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
push.v arg.argument0
push.s "gamepad "@6419
conv.s.v
call.i string_concat(argc=2)
ret.v

:[13]
pushloc.v local._gamepad
pushi.e -9
push.v [stacktop]self.__description
ret.v

:[14]
b [23]

:[15]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [18]

:[16]
push.s "keyboard & mouse"@6420
conv.s.v
ret.v

:[17]
b [23]

:[18]
push.v arg.argument0
pushi.e -2
cmp.i.v EQ
bf [21]

:[19]
push.s "touch"@6421
conv.s.v
ret.v

:[20]
b [23]

:[21]
push.v arg.argument0
pushi.e -3
cmp.i.v EQ
bf [23]

:[22]
push.s "generic"@6422
conv.s.v
ret.v

:[23]
push.s "no device"@6423
conv.s.v
ret.v

:[24]
exit.i

:[25]
push.i [function]gml_Script_InputDeviceGetDescription
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceGetDescription
popz.v

:[end]