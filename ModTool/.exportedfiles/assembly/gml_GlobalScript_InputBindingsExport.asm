:[0]
b [20]

> gml_Script_InputBindingsExport (locals=4, argc=2)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument1

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbCount
pop.v.v static._verbCount

:[5]
push.v arg.argument1
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.s "\")"@194
conv.s.v
push.v arg.argument1
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[7]
push.v arg.argument1
pushi.e 4
cmp.i.v GTE
bf [9]

:[8]
push.s ")"@372
conv.s.v
pushi.e 4
conv.i.v
push.s " too large. Must be less than config `INPUT_MAX_PLAYERS` ("@6309
conv.s.v
push.v arg.argument1
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[9]
push.v arg.argument1
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument1
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[11]
call.i @@NewGMLObject@@(argc=0)
pop.v.v local._output
push.v arg.argument0
conv.v.b
bf [13]

:[12]
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v [stacktop]self.__gamepadBindingArray
b [14]

:[13]
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v [stacktop]self.__kbmBindingArray

:[14]
pop.v.v local._bindingArray
pushi.e 0
pop.v.i local._i
push.v static._verbCount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [18]

:[15]
pushloc.v local._i
call.i gml_Script_InputVerbGetExportName(argc=1)
pop.v.v local._exportName
pushloc.v local._exportName
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [17]

:[16]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._bindingArray
call.i variable_clone(argc=1)
pushloc.v local._exportName
pushloc.v local._output
call.i variable_struct_set(argc=3)
popz.v

:[17]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [15]

:[18]
popz.i
pushloc.v local._output
ret.v

:[19]
exit.i

:[20]
push.i [function]gml_Script_InputBindingsExport
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputBindingsExport
popz.v

:[end]