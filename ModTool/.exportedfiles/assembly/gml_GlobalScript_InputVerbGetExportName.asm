:[0]
b [8]

> gml_Script_InputVerbGetExportName (locals=1, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbDefinitionArray
pop.v.v static._verbDefinitionArray

:[3]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._verbDefinitionArray
pop.v.v local._verbDefinition
pushloc.v local._verbDefinition
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushbltn.v builtin.undefined
b [6]

:[5]
pushloc.v local._verbDefinition
pushi.e -9
push.v [stacktop]self.__exportName

:[6]
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_InputVerbGetExportName
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVerbGetExportName
popz.v

:[end]