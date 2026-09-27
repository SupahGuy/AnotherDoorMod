:[0]
b [12]

> gml_Script___InputClassGamepad (locals=0, argc=1)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [11]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__genericReadArray
pop.v.v static._genericReadArray
b [10]

> gml_Script___UpdatePrevValues@anon@919@__InputClassGamepad@__InputClassGamepad (locals=0, argc=0)
:[3]
pushi.e 0
bt [6]

:[4]
push.v builtin.__blocked
conv.v.b
bt [6]

:[5]
push.v builtin.__gamepadIndex
call.i gamepad_is_connected(argc=1)
conv.v.b
not.b
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
pushi.e 0
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.__prevValueArray
pushi.e 0
conv.i.v
pushi.e -6
pushi.e 1
pop.v.v [array]self.__prevValueArray
pushi.e 0
conv.i.v
pushi.e -6
pushi.e 2
pop.v.v [array]self.__prevValueArray
pushi.e 0
conv.i.v
pushi.e -6
pushi.e 3
pop.v.v [array]self.__prevValueArray
exit.i

:[9]
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.__valueArray
pushi.e 0
conv.i.v
push.v builtin.__prevValueArray
call.i array_copy(argc=5)
popz.v
push.i 32785
conv.i.v
push.v builtin.__gamepadIndex
call.i @@This@@(argc=0)
pushi.e -6
pushi.e 16
push.v [array]self.__readArray
callv.v 2
pushi.e -6
pushi.e 0
pop.v.v [array]self.__valueArray
push.i 32786
conv.i.v
push.v builtin.__gamepadIndex
call.i @@This@@(argc=0)
pushi.e -6
pushi.e 17
push.v [array]self.__readArray
callv.v 2
pushi.e -6
pushi.e 1
pop.v.v [array]self.__valueArray
push.i 32787
conv.i.v
push.v builtin.__gamepadIndex
call.i @@This@@(argc=0)
pushi.e -6
pushi.e 18
push.v [array]self.__readArray
callv.v 2
pushi.e -6
pushi.e 2
pop.v.v [array]self.__valueArray
push.i 32788
conv.i.v
push.v builtin.__gamepadIndex
call.i @@This@@(argc=0)
pushi.e -6
pushi.e 19
push.v [array]self.__readArray
callv.v 2
pushi.e -6
pushi.e 3
pop.v.v [array]self.__valueArray
exit.i

:[10]
push.i [function]gml_Script___UpdatePrevValues@anon@919@__InputClassGamepad@__InputClassGamepad
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__UpdatePrevValues

:[11]
push.v arg.argument0
pop.v.v builtin.__gamepadIndex
pushi.e 0
pop.v.b builtin.__blocked
pushbltn.v builtin.current_time
pop.v.v builtin.__lastConnectedTime
pushbltn.v builtin.undefined
pop.v.v builtin.__guid
push.s ""@61
pop.v.s builtin.__vendor
push.s ""@61
pop.v.s builtin.__product
push.s "Generic Gamepad"@64
pop.v.s builtin.__description
pushi.e 2
pop.v.i builtin.__type
pushi.e 0
pop.v.b builtin.__xinput
pushi.e 0
pop.v.b builtin.__xinput
pushbltn.v builtin.undefined
pop.v.v builtin.__steamHandle
pushbltn.v builtin.undefined
pop.v.v builtin.__steamHandleIndex
pushi.e 1
conv.i.v
push.v static._genericReadArray
call.i variable_clone(argc=2)
pop.v.v builtin.__readArray
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i array_create(argc=2)
pop.v.v builtin.__prevValueArray
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i array_create(argc=2)
pop.v.v builtin.__valueArray
exit.i

:[12]
push.i [function]gml_Script___InputClassGamepad
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputClassGamepad
popz.v

:[end]