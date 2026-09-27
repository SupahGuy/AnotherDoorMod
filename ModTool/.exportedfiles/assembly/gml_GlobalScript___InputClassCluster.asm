:[0]
b [2]

> gml_Script___InputClassClusterDefinition (locals=0, argc=8)
:[1]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.__clusterIndex
push.v arg.argument1
pop.v.v builtin.__verbUp
push.v arg.argument2
pop.v.v builtin.__verbRight
push.v arg.argument3
pop.v.v builtin.__verbDown
push.v arg.argument4
pop.v.v builtin.__verbLeft
push.v arg.argument5
pop.v.v builtin.__axisBiasFactor
push.v arg.argument6
pop.v.v builtin.__axisBiasDiagonals
push.v arg.argument7
call.i variable_clone(argc=1)
pop.v.v builtin.__metadata
exit.i

:[2]
push.i [function]gml_Script___InputClassClusterDefinition
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputClassClusterDefinition
popz.v

:[end]