:[0]
b [5]

> gml_Script_InputPlugInGetAllVerbs (locals=0, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbDefIndexArray
pop.v.v static._verbDefIndexArray

:[3]
push.v static._verbDefIndexArray
call.i variable_clone(argc=1)
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_InputPlugInGetAllVerbs
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlugInGetAllVerbs
popz.v

:[end]