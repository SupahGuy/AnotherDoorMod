:[0]
b [20]

> gml_Script___InputPartyDeviceIsActive (locals=0, argc=1)
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
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
push.v arg.argument0
call.i gml_Script___InputGetGamepadActive(argc=3)
ret.v

:[7]
b [18]

:[8]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [18]

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
pushi.e 0
conv.b.v
ret.v

:[19]
exit.i

:[20]
push.i [function]gml_Script___InputPartyDeviceIsActive
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputPartyDeviceIsActive
popz.v

:[end]