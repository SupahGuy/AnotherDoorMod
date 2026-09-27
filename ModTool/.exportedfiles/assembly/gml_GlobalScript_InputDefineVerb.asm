:[0]
b [9]

> gml_Script_InputDefineVerb (locals=1, argc=5)
:[1]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
call.i @@NewGMLObject@@(argc=0)
pop.v.v builtin.argument4

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system

:[5]
push.v static._system
pushi.e -9
pushenv [8]

:[6]
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script___InputClassVerbDefinition
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._definition
pushloc.v local._definition
pushi.e -6
push.v arg.argument0
conv.v.i
pop.v.v [array]self.__verbDefinitionArray
pushloc.v local._definition
push.v arg.argument1
push.v builtin.__verbExportNameDict
call.i variable_struct_set(argc=3)
popz.v
push.v arg.argument0
push.v builtin.__verbDefIndexArray
call.i array_get_index(argc=2)
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
push.v arg.argument0
push.v builtin.__verbDefIndexArray
call.i array_push(argc=2)
popz.v

:[8]
popenv [6]
exit.i

:[9]
push.i [function]gml_Script_InputDefineVerb
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDefineVerb
popz.v

:[end]