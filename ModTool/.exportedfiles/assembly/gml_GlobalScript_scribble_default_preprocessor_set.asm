:[0]
b [4]

> gml_Script_scribble_default_preprocessor_set (locals=0, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pop.v.v static._system

:[3]
push.v arg.argument0
push.v static._system
pushi.e -9
pop.v.v [stacktop]self.__defaultPreprocessorFunc
exit.i

:[4]
push.i [function]gml_Script_scribble_default_preprocessor_set
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_default_preprocessor_set
popz.v

:[end]