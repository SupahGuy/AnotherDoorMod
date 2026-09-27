:[0]
b [12]

> gml_Script_InputPlugInGamepadGetVendorAndProduct (locals=1, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__gamepadArray
pop.v.v static._gamepadArray

:[3]
push.v arg.argument0
pushi.e 0
cmp.i.v GTE
bf [5]

:[4]
push.v arg.argument0
push.v static._gamepadArray
call.i array_length(argc=1)
cmp.v.v LT
b [6]

:[5]
push.e 0

:[6]
bf [10]

:[7]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._gamepadArray
pushi.e -9
pushenv [9]

:[8]
push.v builtin.__vendor
push.v builtin.__product
add.v.v
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[9]
popenv [8]

:[10]
push.s ""@61
conv.s.v
ret.v

:[11]
exit.i

:[12]
push.i [function]gml_Script_InputPlugInGamepadGetVendorAndProduct
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlugInGamepadGetVendorAndProduct
popz.v

:[end]