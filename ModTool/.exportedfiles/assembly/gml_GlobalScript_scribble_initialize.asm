:[0]
b [2]

> gml_Script_scribble_initialize (locals=0, argc=0)
:[1]
pushi.e 1
conv.b.v
call.i gml_Script___scribble_system(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scribble_initialize
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_initialize
popz.v

:[end]