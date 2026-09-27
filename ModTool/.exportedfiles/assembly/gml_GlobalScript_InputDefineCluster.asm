:[0]
b [12]

> gml_Script_InputDefineCluster (locals=1, argc=8)
:[1]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument5

:[3]
pushbltn.v builtin.argument6
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.b builtin.argument6

:[5]
pushbltn.v builtin.argument7
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
call.i @@NewGMLObject@@(argc=0)
pop.v.v builtin.argument7

:[7]
isstaticok.e
bt [9]

:[8]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system

:[9]
push.v static._system
pushi.e -9
pushenv [11]

:[10]
push.v arg.argument7
push.v arg.argument6
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script___InputClassClusterDefinition
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pop.v.v local._definition
pushloc.v local._definition
pushi.e -6
push.v arg.argument0
conv.v.i
pop.v.v [array]self.__clusterDefinitionArray

:[11]
popenv [10]
exit.i

:[12]
push.i [function]gml_Script_InputDefineCluster
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDefineCluster
popz.v

:[end]