:[0]
b [22]

> gml_Script___InputGetKeyboardOutput (locals=0, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system

:[3]
pushi.e 1
bt [8]

:[4]
pushi.e 0
bf [6]

:[5]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
not.b
b [7]

:[6]
push.e 0

:[7]
b [9]

:[8]
push.e 1

:[9]
not.b
not.b
bf [12]

:[10]
pushi.e 1
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [12]

:[11]
call.i gml_Script_InputGameHasFocus(argc=0)
conv.v.b
b [13]

:[12]
push.e 0

:[13]
bf [20]

:[14]
pushbltn.v builtin.keyboard_key
pushi.e 1
cmp.i.v LTE
bf [16]

:[15]
pushbltn.v builtin.undefined
ret.v

:[16]
pushbltn.v builtin.keyboard_key
call.i gml_Script___InputKeyIsIgnored(argc=1)
conv.v.b
bf [18]

:[17]
pushbltn.v builtin.undefined
b [19]

:[18]
pushbltn.v builtin.keyboard_key

:[19]
ret.v

:[20]
pushbltn.v builtin.undefined
ret.v

:[21]
exit.i

:[22]
push.i [function]gml_Script___InputGetKeyboardOutput
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputGetKeyboardOutput
popz.v

:[end]