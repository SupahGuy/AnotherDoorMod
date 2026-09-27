:[0]
b [3]

> gml_Script_InputVirtualCreate (locals=0, argc=0)
:[1]
push.i [function]gml_Script___InputClassVirtualButton
conv.i.v
call.i @@NewGMLObject@@(argc=1)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_InputVirtualCreate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVirtualCreate
popz.v

:[end]