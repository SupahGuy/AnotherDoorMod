:[0]
call.i gml_Script___InputIconSystem(argc=0)
popz.v
b [11]

> gml_Script___InputIconSystem (locals=0, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
pushbltn.v builtin.undefined
pop.v.v static._system

:[3]
push.v static._system
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [5]

:[4]
push.v static._system
ret.v

:[5]
call.i @@NewGMLObject@@(argc=0)
pop.v.v static._system
push.v static._system
pushi.e -9
pushenv [9]

:[6]
call.i ds_map_create(argc=0)
pop.v.v builtin.__keyboardIconMap
call.i ds_map_create(argc=0)
pop.v.v builtin.__gamepadTypeMap
pushbltn.v builtin.undefined
pop.v.v builtin.__empty
pushbltn.v builtin.undefined
pop.v.v builtin.__unsupported
b [8]

> gml_Script_anon@464@__InputIconSystem@__InputIconSystem (locals=0, argc=0)
:[7]
exit.i

:[8]
push.i [function]gml_Script_anon@464@__InputIconSystem@__InputIconSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.s "10.0"@466
conv.s.v
push.s "1.0"@467
conv.s.v
push.s "Input Team"@468
conv.s.v
push.s "InputTeam.Icons"@1533
conv.s.v
call.i gml_Script_InputPlugInDefine(argc=5)
popz.v

:[9]
popenv [6]
push.v static._system
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script___InputIconSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputIconSystem
popz.v

:[end]