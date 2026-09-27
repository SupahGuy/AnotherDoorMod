:[0]
b [48]

> gml_Script_InputDeviceIsConnected (locals=1, argc=1)
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
bf [14]

:[4]
pushi.e 0
bt [6]

:[5]
push.v arg.argument0
push.v static._gamepadArray
call.i array_length(argc=1)
cmp.v.v GTE
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
pushi.e 0
conv.b.v
ret.v

:[9]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._gamepadArray
pop.v.v local._struct
pushloc.v local._struct
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [11]

:[10]
pushloc.v local._struct
pushi.e -9
push.v [stacktop]self.__blocked
conv.v.b
not.b
b [12]

:[11]
push.e 0

:[12]
conv.b.v
ret.v

:[13]
b [46]

:[14]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [23]

:[15]
pushi.e 1
bt [20]

:[16]
pushi.e 0
bf [18]

:[17]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
not.b
b [19]

:[18]
push.e 0

:[19]
b [21]

:[20]
push.e 1

:[21]
not.b
not.b
conv.b.v
ret.v

:[22]
b [46]

:[23]
push.v arg.argument0
pushi.e -2
cmp.i.v EQ
bf [44]

:[24]
pushi.e 0
bt [29]

:[25]
pushi.e 0
bf [27]

:[26]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
b [28]

:[27]
push.e 0

:[28]
b [30]

:[29]
push.e 1

:[30]
not.b
not.b
bt [41]

:[31]
pushi.e 0
bf [39]

:[32]
pushi.e 1
bt [37]

:[33]
pushi.e 0
bf [35]

:[34]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
not.b
b [36]

:[35]
push.e 0

:[36]
b [38]

:[37]
push.e 1

:[38]
b [40]

:[39]
push.e 0

:[40]
b [42]

:[41]
push.e 1

:[42]
conv.b.v
ret.v

:[43]
b [46]

:[44]
push.v arg.argument0
pushi.e -3
cmp.i.v EQ
bf [46]

:[45]
pushi.e 1
conv.b.v
ret.v

:[46]
pushi.e 0
conv.b.v
ret.v

:[47]
exit.i

:[48]
push.i [function]gml_Script_InputDeviceIsConnected
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceIsConnected
popz.v

:[end]