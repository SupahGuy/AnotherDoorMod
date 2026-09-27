:[0]
b [39]

> gml_Script___InputGetMouseOutput (locals=1, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system

:[3]
call.i gml_Script_InputGameHasFocus(argc=0)
conv.v.b
not.b
bf [5]

:[4]
pushbltn.v builtin.undefined
ret.v

:[5]
push.v static._system
pushi.e -9
pushenv [38]

:[6]
push.v builtin.__pointerBlockedByWindowDefocus
conv.v.b
bf [8]

:[7]
pushbltn.v builtin.undefined
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[8]
pushi.e 1
bt [13]

:[9]
pushi.e 0
bf [11]

:[10]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
not.b
b [12]

:[11]
push.e 0

:[12]
b [14]

:[13]
push.e 1

:[14]
bf [16]

:[15]
pushi.e 1
conv.i.b
b [17]

:[16]
push.e 0

:[17]
bf [27]

:[18]
pushbltn.v builtin.mouse_button
pushi.e 0
cmp.i.v NEQ
bf [20]

:[19]
pushbltn.v builtin.mouse_button
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[20]
call.i mouse_wheel_up(argc=0)
conv.v.b
bf [22]

:[21]
push.i 40964
conv.i.v
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[22]
call.i mouse_wheel_down(argc=0)
conv.v.b
bf [24]

:[23]
push.i 40965
conv.i.v
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[24]
push.v builtin.__tapClick
conv.v.b
bf [26]

:[25]
pushi.e 1
conv.i.v
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[26]
b [37]

:[27]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button(argc=2)
conv.v.b
bf [29]

:[28]
pushi.e 5
conv.i.v
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[29]
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button(argc=2)
conv.v.b
bf [31]

:[30]
pushi.e 4
conv.i.v
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[31]
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button(argc=2)
conv.v.b
bf [33]

:[32]
pushi.e 3
conv.i.v
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[33]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button(argc=2)
conv.v.b
bf [35]

:[34]
pushi.e 2
conv.i.v
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[35]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button(argc=2)
conv.v.b
bf [37]

:[36]
pushi.e 1
conv.i.v
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[37]
pushbltn.v builtin.undefined
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[38]
popenv [6]
exit.i

:[39]
push.i [function]gml_Script___InputGetMouseOutput
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputGetMouseOutput
popz.v

:[end]