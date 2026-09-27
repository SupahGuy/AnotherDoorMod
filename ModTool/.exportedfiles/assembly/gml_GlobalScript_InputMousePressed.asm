:[0]
b [56]

> gml_Script_InputMousePressed (locals=4, argc=1)
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
pushi.e 0
bt [7]

:[6]
push.v static._system
pushi.e -9
push.v [stacktop]self.__pointerBlocked
conv.v.b
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
pushi.e 0
conv.b.v
ret.v

:[10]
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bt [13]

:[11]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bt [13]

:[12]
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 1

:[14]
not.b
bf [16]

:[15]
push.v arg.argument0
pushi.e 0
conv.i.v
call.i device_mouse_check_button_pressed(argc=2)
ret.v

:[16]
pushi.e 1
bf [18]

:[17]
push.v static._system
pushi.e -9
push.v [stacktop]self.__tapClick
conv.v.b
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 1
pop.v.b local._left
b [38]

:[21]
pushi.e 0
bt [26]

:[22]
pushi.e 0
bf [24]

:[23]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
b [25]

:[24]
push.e 0

:[25]
b [27]

:[26]
push.e 1

:[27]
bf [37]

:[28]
pushi.e 0
conv.i.v
call.i device_mouse_x_to_gui(argc=1)
pop.v.v local._x
pushi.e 0
conv.i.v
call.i device_mouse_y_to_gui(argc=1)
pop.v.v local._y
pushloc.v local._x
pushi.e 35
cmp.i.v LT
bt [32]

:[29]
pushloc.v local._x
call.i display_get_gui_width(argc=0)
pushi.e 35
sub.i.v
cmp.v.v GT
bt [32]

:[30]
pushloc.v local._y
pushi.e 35
cmp.i.v LT
bt [32]

:[31]
pushloc.v local._y
call.i display_get_gui_height(argc=0)
pushi.e 35
sub.i.v
cmp.v.v GT
b [33]

:[32]
push.e 1

:[33]
bf [35]

:[34]
pushi.e 0
pop.v.b local._left
b [36]

:[35]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button_pressed(argc=2)
pop.v.v local._left

:[36]
b [38]

:[37]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button_pressed(argc=2)
pop.v.v local._left

:[38]
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [42]

:[39]
dup.v 0
pushi.e -1
cmp.i.v EQ
bt [47]

:[40]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [52]

:[41]
b [54]

:[42]
pushloc.v local._left
conv.v.b
not.b
bf [44]

:[43]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button_pressed(argc=2)
conv.v.b
b [45]

:[44]
push.e 0

:[45]
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[46]
b [54]

:[47]
pushloc.v local._left
conv.v.b
bt [49]

:[48]
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button_pressed(argc=2)
conv.v.b
b [50]

:[49]
push.e 1

:[50]
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[51]
b [54]

:[52]
pushloc.v local._left
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[53]
b [54]

:[54]
popz.v
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

:[55]
exit.i

:[56]
push.i [function]gml_Script_InputMousePressed
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputMousePressed
popz.v

:[end]