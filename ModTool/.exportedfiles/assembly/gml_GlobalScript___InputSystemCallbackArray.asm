:[0]
b [8]

> gml_Script___InputSystemCallbackArray (locals=0, argc=0)
:[1]
isstaticok.e
bt [6]

:[2]
setstatic.e
b [5]

> gml_Script__array@anon@215@__InputSystemCallbackArray@__InputSystemCallbackArray (locals=0, argc=0)
:[3]
call.i @@NewGMLArray@@(argc=0)
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script__array@anon@215@__InputSystemCallbackArray@__InputSystemCallbackArray
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
push.l 11
conv.l.v
call.i array_create_ext(argc=2)
pop.v.v static._array

:[6]
push.v static._array
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script___InputSystemCallbackArray
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputSystemCallbackArray
popz.v

:[end]