:[0]
call.i gml_Script___InputCursorSystem(argc=0)
popz.v
b [18]

> gml_Script___InputCursorSystem (locals=0, argc=0)
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
pushenv [16]

:[6]
b [9]

> gml_Script_anon@276@__InputCursorSystem@__InputCursorSystem (locals=0, argc=1)
:[7]
push.v arg.argument0
push.i [function]gml_Script___InputCursorClassPlayer
conv.i.v
call.i @@NewGMLObject@@(argc=2)
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_anon@276@__InputCursorSystem@__InputCursorSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 4
conv.i.v
call.i array_create_ext(argc=2)
pop.v.v builtin.__playerArray
b [15]

> gml_Script_anon@461@__InputCursorSystem@__InputCursorSystem (locals=0, argc=0)
:[10]
b [14]

> gml_Script_anon@782@anon@461@__InputCursorSystem@__InputCursorSystem (locals=1, argc=1)
:[11]
pushi.e 0
pop.v.i local._i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [13]

:[12]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.__playerArray
dup.v 0 8
dup.v 0
push.v stacktop.__Update
callv.v 0
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [12]

:[13]
popz.i
exit.i

:[14]
push.i [function]gml_Script_anon@782@anon@461@__InputCursorSystem@__InputCursorSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e -1
conv.i.v
push.l 1
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
exit.i

:[15]
push.i [function]gml_Script_anon@461@__InputCursorSystem@__InputCursorSystem
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
push.s "InputTeam.Cursor"@1138
conv.s.v
call.i gml_Script_InputPlugInDefine(argc=5)
popz.v

:[16]
popenv [6]
push.v static._system
ret.v

:[17]
exit.i

:[18]
push.i [function]gml_Script___InputCursorSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputCursorSystem
popz.v

:[end]