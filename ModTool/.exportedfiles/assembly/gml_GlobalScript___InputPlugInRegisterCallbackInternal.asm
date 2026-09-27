:[0]
b [9]

> gml_Script___InputPlugInRegisterCallbackInternal (locals=1, argc=3)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystemCallbackArray(argc=0)
pop.v.v static._callbackArray

:[3]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._callbackArray
pop.v.v local._array
push.v arg.argument2
push.v arg.argument1
b [5]

> gml_Script____struct___17@__InputPlugInRegisterCallbackInternal@__InputPlugInRegisterCallbackInternal (locals=0, argc=0)
:[4]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.__priority
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.__method
exit.i

:[5]
push.i [function]gml_Script____struct___17@__InputPlugInRegisterCallbackInternal@__InputPlugInRegisterCallbackInternal
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___17
call.i @@NewGMLObject@@(argc=3)
pushloc.v local._array
call.i array_push(argc=2)
popz.v
b [8]

> gml_Script_anon@419@__InputPlugInRegisterCallbackInternal@__InputPlugInRegisterCallbackInternal (locals=0, argc=2)
:[6]
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.__priority
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__priority
sub.v.v
call.i sign(argc=1)
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_anon@419@__InputPlugInRegisterCallbackInternal@__InputPlugInRegisterCallbackInternal
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushloc.v local._array
call.i array_sort(argc=2)
popz.v
exit.i

:[9]
push.i [function]gml_Script___InputPlugInRegisterCallbackInternal
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputPlugInRegisterCallbackInternal
popz.v

:[end]