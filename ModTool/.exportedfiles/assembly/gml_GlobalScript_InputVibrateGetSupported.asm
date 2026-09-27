:[0]
b [9]

> gml_Script_InputVibrateGetSupported (locals=1, argc=1)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument0

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputVibrateSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__deviceMap
pop.v.v static._deviceMap

:[5]
push.v arg.argument0
call.i gml_Script_InputPlayerGetDevice(argc=1)
push.v static._deviceMap
call.i ds_map_find_value(argc=2)
pushi.e -9
pushenv [7]

:[6]
push.v builtin.__supported
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[7]
popenv [6]
pushi.e 0
conv.b.v
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_InputVibrateGetSupported
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVibrateGetSupported
popz.v

:[end]