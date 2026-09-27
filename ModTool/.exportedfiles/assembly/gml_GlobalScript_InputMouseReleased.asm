:[0]
b [53]

> gml_Script_InputMouseReleased (locals=3, argc=1)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i builtin.argument0

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system

:[5]
push.v static._system
pushi.e -9
push.v [stacktop]self.__pointerBlockedByUserThisFrame
conv.v.b
bf [7]

:[6]
push.v arg.argument0
call.i gml_Script___InputMouseCheckRaw(argc=1)
ret.v

:[7]
push.v static._system
pushi.e -9
push.v [stacktop]self.__pointerBlocked
conv.v.b
bf [9]

:[8]
pushi.e 0
conv.b.v
ret.v

:[9]
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bt [12]

:[10]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bt [12]

:[11]
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 1

:[13]
not.b
bf [15]

:[14]
push.v arg.argument0
pushi.e 0
conv.i.v
call.i device_mouse_check_button_released(argc=2)
ret.v

:[15]
pushi.e 1
bf [17]

:[16]
push.v static._system
pushi.e -9
push.v [stacktop]self.__tapClick
conv.v.b
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.b local._left
b [37]

:[20]
pushi.e 0
bt [25]

:[21]
pushi.e 0
bf [23]

:[22]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
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
conv.i.v
call.i device_mouse_raw_x(argc=1)
pop.v.v local._x
pushi.e 0
conv.i.v
call.i device_mouse_raw_y(argc=1)
pop.v.v local._y
pushloc.v local._x
pushi.e 35
cmp.i.v LT
bt [31]

:[28]
pushloc.v local._x
call.i display_get_width(argc=0)
pushi.e 35
sub.i.v
cmp.v.v GT
bt [31]

:[29]
pushloc.v local._y
pushi.e 35
cmp.i.v LT
bt [31]

:[30]
pushloc.v local._y
call.i display_get_height(argc=0)
pushi.e 35
sub.i.v
cmp.v.v GT
b [32]

:[31]
push.e 1

:[32]
bf [34]

:[33]
pushi.e 0
pop.v.b local._left
b [35]

:[34]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button_released(argc=2)
pop.v.v local._left

:[35]
b [37]

:[36]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button_released(argc=2)
pop.v.v local._left

:[37]
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bf [40]

:[38]
pushloc.v local._left
ret.v

:[39]
b [51]

:[40]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [46]

:[41]
pushloc.v local._left
conv.v.b
bt [43]

:[42]
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button_released(argc=2)
conv.v.b
b [44]

:[43]
push.e 1

:[44]
conv.b.v
ret.v

:[45]
b [51]

:[46]
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bf [51]

:[47]
pushloc.v local._left
conv.v.b
not.b
bf [49]

:[48]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button_released(argc=2)
conv.v.b
b [50]

:[49]
push.e 0

:[50]
conv.b.v
ret.v

:[51]
push.s ")"@372
conv.s.v
push.v arg.argument0
push.s "Mouse button out of range ("@6518
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v
pushi.e 0
conv.b.v
ret.v

:[52]
exit.i

:[53]
push.i [function]gml_Script_InputMouseReleased
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputMouseReleased
popz.v

:[end]