:[0]
b [16]

> gml_Script___InputSystemPlayerArray (locals=0, argc=0)
:[1]
isstaticok.e
bt [14]

:[2]
setstatic.e
call.i @@This@@(argc=0)
b [13]

> gml_Script__playerArray@anon@93@__InputSystemPlayerArray@__InputSystemPlayerArray (locals=2, argc=0)
:[3]
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
pushenv [12]

:[4]
push.v builtin.__verbDefinitionArray
call.i array_length(argc=1)
pop.v.v builtin.__verbCount
push.v builtin.__clusterDefinitionArray
call.i array_length(argc=1)
pop.v.v builtin.__clusterCount
pushi.e 0
pop.v.i local._i
push.v builtin.__verbCount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [8]

:[5]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.__verbDefinitionArray
call.i is_struct(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushbltn.v builtin.undefined
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.__verbDefinitionArray

:[7]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [5]

:[8]
popz.i
b [11]

> gml_Script_anon@825@_playerArray@anon@93@__InputSystemPlayerArray@__InputSystemPlayerArray (locals=0, argc=1)
:[9]
push.v arg.argument0
push.i [function]gml_Script___InputClassPlayer
conv.i.v
call.i @@NewGMLObject@@(argc=2)
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_anon@825@_playerArray@anon@93@__InputSystemPlayerArray@__InputSystemPlayerArray
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 4
conv.i.v
call.i array_create_ext(argc=2)
pop.v.v builtin.__playerArray
push.v builtin.__playerArray
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[12]
popenv [4]
exit.i

:[13]
push.i [function]gml_Script__playerArray@anon@93@__InputSystemPlayerArray@__InputSystemPlayerArray
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
callv.v 0
pop.v.v static._playerArray

:[14]
push.v static._playerArray
ret.v

:[15]
exit.i

:[16]
push.i [function]gml_Script___InputSystemPlayerArray
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputSystemPlayerArray
popz.v

:[end]