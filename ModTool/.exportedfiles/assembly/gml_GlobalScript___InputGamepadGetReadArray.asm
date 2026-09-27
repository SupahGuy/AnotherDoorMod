:[0]
b [10]

> gml_Script___InputGamepadGetReadArray (locals=0, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__gamepadArray
pop.v.v static._gamepadArray
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__genericReadArray
pop.v.v static._genericReadArray

:[3]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bt [5]

:[4]
push.v arg.argument0
push.v static._gamepadArray
call.i array_length(argc=1)
cmp.v.v GTE
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
push.v static._genericReadArray
ret.v

:[8]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._gamepadArray
pushi.e -9
push.v [stacktop]self.__readArray
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script___InputGamepadGetReadArray
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputGamepadGetReadArray
popz.v

:[end]