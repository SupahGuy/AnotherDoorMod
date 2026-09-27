:[0]
b [22]

> gml_Script___InputGamepadIdentifySwitchType (locals=2, argc=2)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
push.v arg.argument0
call.i gamepad_get_description(argc=1)
pop.v.v builtin.argument1

:[3]
push.v arg.argument1
push.s "Joy-Con"@1259
cmp.s.v EQ
bf [15]

:[4]
push.s "Warning! Using stop-gap identification for bad description \"Joy-Con\""@1260
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
push.v arg.argument0
call.i switch_controller_joycon_left_connected(argc=1)
pop.v.v local._left
push.v arg.argument0
call.i switch_controller_joycon_right_connected(argc=1)
pop.v.v local._right
pushloc.v local._left
conv.v.b
bf [10]

:[5]
pushloc.v local._right
conv.v.b
bf [8]

:[6]
pushi.e 5
conv.i.v
ret.v

:[7]
b [9]

:[8]
pushi.e 6
conv.i.v
ret.v

:[9]
b [14]

:[10]
pushloc.v local._right
conv.v.b
bf [13]

:[11]
pushi.e 7
conv.i.v
ret.v

:[12]
b [14]

:[13]
push.s "Warning! Invalid left/right Joy-Con state, falling back on handheld"@1263
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 5
conv.i.v
ret.v

:[14]
b [20]

:[15]
push.v arg.argument1
push.s "Joy-Con (L)"@1264
cmp.s.v EQ
bf [18]

:[16]
pushi.e 6
conv.i.v
ret.v

:[17]
b [20]

:[18]
push.v arg.argument1
push.s "Joy-Con (R)"@1265
cmp.s.v EQ
bf [20]

:[19]
pushi.e 7
conv.i.v
ret.v

:[20]
pushi.e 5
conv.i.v
ret.v

:[21]
exit.i

:[22]
push.i [function]gml_Script___InputGamepadIdentifySwitchType
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputGamepadIdentifySwitchType
popz.v

:[end]