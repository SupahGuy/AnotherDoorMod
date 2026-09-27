:[0]
b [14]

> gml_Script_InputGetBindingName (locals=0, argc=3)
:[1]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
push.s "???"@6459
pop.v.s builtin.argument2

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__gamepadButtonNameLookup
pop.v.v static._gamepadButtonNameLookup
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__kbmBindingNameMap
pop.v.v static._kbmBindingNameMap

:[5]
push.v arg.argument1
conv.v.b
bf [10]

:[6]
push.v arg.argument0
push.v static._gamepadButtonNameLookup
call.i ds_map_find_value(argc=2)
chknullish.e
bf [8]

:[7]
popz.v
push.v arg.argument2

:[8]
ret.v

:[9]
b [13]

:[10]
push.v arg.argument0
push.v static._kbmBindingNameMap
call.i ds_map_find_value(argc=2)
chknullish.e
bf [12]

:[11]
popz.v
push.v arg.argument0
call.i chr(argc=1)

:[12]
ret.v

:[13]
exit.i

:[14]
push.i [function]gml_Script_InputGetBindingName
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputGetBindingName
popz.v

:[end]