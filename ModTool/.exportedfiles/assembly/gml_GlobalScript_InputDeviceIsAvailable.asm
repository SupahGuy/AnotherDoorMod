:[0]
b [36]

> gml_Script_InputDeviceIsAvailable (locals=0, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__deviceMap
pop.v.v static._deviceMap

:[3]
push.v arg.argument0
pushi.e -666
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
conv.b.v
ret.v

:[5]
push.v arg.argument0
pushi.e 0
cmp.i.v GTE
bf [7]

:[6]
pushi.e 0
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 0
conv.b.v
ret.v

:[10]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [18]

:[11]
pushi.e 1
bt [16]

:[12]
pushi.e 0
bf [14]

:[13]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
not.b
b [15]

:[14]
push.e 0

:[15]
b [17]

:[16]
push.e 1

:[17]
not.b
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 0
conv.b.v
ret.v

:[21]
push.v arg.argument0
pushi.e -2
cmp.i.v EQ
bf [29]

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
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 0
conv.b.v
ret.v

:[32]
push.v arg.argument0
pushi.e -3
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
conv.b.v
ret.v

:[34]
push.v arg.argument0
push.v static._deviceMap
call.i ds_map_exists(argc=2)
conv.v.b
not.b
conv.b.v
ret.v

:[35]
exit.i

:[36]
push.i [function]gml_Script_InputDeviceIsAvailable
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceIsAvailable
popz.v

:[end]