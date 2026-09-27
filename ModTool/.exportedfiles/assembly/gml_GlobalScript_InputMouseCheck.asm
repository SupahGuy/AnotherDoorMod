:[0]
b [12]

> gml_Script_InputMouseCheck (locals=0, argc=1)
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
call.i gml_Script___InputMouseCheckRaw(argc=1)
ret.v

:[11]
exit.i

:[12]
push.i [function]gml_Script_InputMouseCheck
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputMouseCheck
popz.v
b [43]

> gml_Script___InputMouseCheckRaw (locals=1, argc=1)
:[13]
isstaticok.e
bt [15]

:[14]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system

:[15]
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bt [18]

:[16]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bt [18]

:[17]
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
not.b
bf [21]

:[20]
push.v arg.argument0
pushi.e 0
conv.i.v
call.i device_mouse_check_button(argc=2)
ret.v

:[21]
pushi.e 1
bf [23]

:[22]
push.v static._system
pushi.e -9
push.v [stacktop]self.__tapClick
conv.v.b
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 1
conv.b.v
b [27]

:[26]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button(argc=2)

:[27]
pop.v.v local._left
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bf [30]

:[28]
pushloc.v local._left
ret.v

:[29]
b [41]

:[30]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [36]

:[31]
pushloc.v local._left
conv.v.b
bt [33]

:[32]
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button(argc=2)
conv.v.b
b [34]

:[33]
push.e 1

:[34]
conv.b.v
ret.v

:[35]
b [41]

:[36]
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bf [41]

:[37]
pushloc.v local._left
conv.v.b
not.b
bf [39]

:[38]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button(argc=2)
conv.v.b
b [40]

:[39]
push.e 0

:[40]
conv.b.v
ret.v

:[41]
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

:[42]
exit.i

:[43]
push.i [function]gml_Script___InputMouseCheckRaw
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputMouseCheckRaw
popz.v

:[end]