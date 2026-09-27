:[0]
b [4]

> gml_Script___InputRegisterFindBindingCollisions (locals=0, argc=0)
:[1]
b [3]

> gml_Script_anon@171@__InputRegisterFindBindingCollisions@__InputRegisterFindBindingCollisions (locals=0, argc=6)
:[2]
push.v arg.argument5
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script___InputBindingFindInternal(argc=4)
popz.v
exit.i

:[3]
push.i [function]gml_Script_anon@171@__InputRegisterFindBindingCollisions@__InputRegisterFindBindingCollisions
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 0
conv.i.v
push.l 10
conv.l.v
call.i gml_Script___InputPlugInRegisterCallbackInternal(argc=3)
popz.v
exit.i

:[4]
push.i [function]gml_Script___InputRegisterFindBindingCollisions
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputRegisterFindBindingCollisions
popz.v

:[end]