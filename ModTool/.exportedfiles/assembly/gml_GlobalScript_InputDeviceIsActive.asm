:[0]
b [38]

> gml_Script_InputDeviceIsActive (locals=0, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system

:[3]
push.v static._system
pushi.e -9
push.v [stacktop]self.__windowFocus
conv.v.b
not.b
bf [5]

:[4]
pushi.e 0
conv.b.v
ret.v

:[5]
push.v arg.argument0
pushi.e 0
cmp.i.v GTE
bf [8]

:[6]
push.v arg.argument0
call.i gml_Script___InputGetGamepadActive(argc=1)
ret.v

:[7]
b [36]

:[8]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [21]

:[9]
pushi.e 1
bt [14]

:[10]
pushi.e 0
bf [12]

:[11]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
not.b
b [13]

:[12]
push.e 0

:[13]
b [15]

:[14]
push.e 1

:[15]
not.b
not.b
bf [18]

:[16]
call.i gml_Script___InputGetKeyboardActive(argc=0)
conv.v.b
bf [18]

:[17]
pushi.e 1
conv.b.v
ret.v

:[18]
call.i gml_Script___InputGetMouseActive(argc=0)
conv.v.b
bf [20]

:[19]
pushi.e 1
conv.b.v
ret.v

:[20]
b [36]

:[21]
push.v arg.argument0
pushi.e -2
cmp.i.v EQ
bf [34]

:[22]
pushi.e 0
bt [27]

:[23]
pushi.e 0
bf [25]

:[24]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
b [26]

:[25]
push.e 0

:[26]
b [28]

:[27]
push.e 1

:[28]
not.b
not.b
bf [33]

:[29]
call.i gml_Script_InputGameHasFocus(argc=0)
conv.v.b
not.b
bf [31]

:[30]
pushi.e 0
conv.b.v
ret.v

:[31]
pushi.e 1
conv.i.v
call.i mouse_check_button(argc=1)
conv.v.b
bf [33]

:[32]
pushi.e 1
conv.b.v
ret.v

:[33]
b [36]

:[34]
push.v arg.argument0
pushi.e -3
cmp.i.v EQ
bf [36]

:[35]
pushi.e 0
conv.b.v
ret.v

:[36]
pushi.e 0
conv.b.v
ret.v

:[37]
exit.i

:[38]
push.i [function]gml_Script_InputDeviceIsActive
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceIsActive
popz.v

:[end]