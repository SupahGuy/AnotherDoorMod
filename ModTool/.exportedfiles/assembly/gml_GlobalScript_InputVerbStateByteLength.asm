:[0]
b [5]

> gml_Script_InputVerbStateByteLength (locals=0, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script_InputVerbCount(argc=0)
pushi.e 20
mul.i.v
pop.v.v static._length

:[3]
push.v static._length
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_InputVerbStateByteLength
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVerbStateByteLength
popz.v

:[end]