:[0]
b [40]

> gml_Script___InputBindingScan (locals=1, argc=3)
:[1]
isstaticok.e
bt [13]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
b [12]

> gml_Script__funcFilter@anon@236@__InputBindingScan@__InputBindingScan (locals=0, argc=3)
:[3]
push.v arg.argument0
call.i string(argc=1)
push.v arg.argument1
call.i variable_struct_exists(argc=2)
conv.v.b
bf [5]

:[4]
pushi.e 0
conv.b.v
ret.v

:[5]
push.v arg.argument2
call.i is_struct(argc=1)
conv.v.b
bf [7]

:[6]
push.v arg.argument0
call.i string(argc=1)
push.v arg.argument2
call.i variable_struct_exists(argc=2)
conv.v.b
not.b
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
pushi.e 1
conv.b.v
ret.v

:[11]
exit.i

:[12]
push.i [function]gml_Script__funcFilter@anon@236@__InputBindingScan@__InputBindingScan
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static._funcFilter

:[13]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [32]

:[14]
pushi.e 1
bt [19]

:[15]
pushi.e 0
bf [17]

:[16]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
not.b
b [18]

:[17]
push.e 0

:[18]
b [20]

:[19]
push.e 1

:[20]
not.b
not.b
bf [26]

:[21]
call.i gml_Script___InputGetKeyboardOutput(argc=0)
pop.v.v local._binding
pushloc.v local._binding
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [23]

:[22]
push.v arg.argument2
push.v arg.argument1
pushloc.v local._binding
call.i @@This@@(argc=0)
push.v static._funcFilter
callv.v 3
conv.v.b
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushloc.v local._binding
ret.v

:[26]
call.i gml_Script___InputGetMouseOutput(argc=0)
pop.v.v local._binding
pushloc.v local._binding
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [28]

:[27]
push.v arg.argument2
push.v arg.argument1
pushloc.v local._binding
call.i @@This@@(argc=0)
push.v static._funcFilter
callv.v 3
conv.v.b
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushloc.v local._binding
ret.v

:[31]
b [38]

:[32]
push.v arg.argument0
call.i gml_Script_InputDeviceIsGamepad(argc=1)
conv.v.b
bf [38]

:[33]
push.v arg.argument0
call.i gml_Script___InputGetGamepadOutput(argc=1)
pop.v.v local._binding
pushloc.v local._binding
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [35]

:[34]
push.v arg.argument2
push.v arg.argument1
pushloc.v local._binding
call.i @@This@@(argc=0)
push.v static._funcFilter
callv.v 3
conv.v.b
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushloc.v local._binding
push.v arg.argument0
call.i gml_Script_InputDeviceGetGamepadValue(argc=2)
call.i sign(argc=1)
pushloc.v local._binding
mul.v.v
ret.v

:[38]
pushbltn.v builtin.undefined
ret.v

:[39]
exit.i

:[40]
push.i [function]gml_Script___InputBindingScan
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputBindingScan
popz.v

:[end]