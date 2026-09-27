:[0]
b [18]

> gml_Script___InputPlugInExecuteCallbacks (locals=3, argc=7)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument1

:[3]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[5]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[7]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[9]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [11]

:[10]
pushbltn.v builtin.undefined
pop.v.v builtin.argument5

:[11]
pushbltn.v builtin.argument6
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[12]
pushbltn.v builtin.undefined
pop.v.v builtin.argument6

:[13]
isstaticok.e
bt [15]

:[14]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
call.i gml_Script___InputSystemCallbackArray(argc=0)
pop.v.v static._callbackArray

:[15]
push.v static._system
pushi.e -9
push.v [stacktop]self.__plugInCurrentCallback
pop.v.v local._prevCallback
push.v arg.argument0
push.v static._system
pushi.e -9
pop.v.v [stacktop]self.__plugInCurrentCallback
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._callbackArray
pop.v.v local._array
pushi.e 0
pop.v.i local._i
pushloc.v local._array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [17]

:[16]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._array
push.v arg.argument6
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
dup.v 6 8
dup.v 0
push.v stacktop.__method
callv.v 6
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [16]

:[17]
popz.i
pushloc.v local._prevCallback
push.v static._system
pushi.e -9
pop.v.v [stacktop]self.__plugInCurrentCallback
exit.i

:[18]
push.i [function]gml_Script___InputPlugInExecuteCallbacks
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputPlugInExecuteCallbacks
popz.v

:[end]