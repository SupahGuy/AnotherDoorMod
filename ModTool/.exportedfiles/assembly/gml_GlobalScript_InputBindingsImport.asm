:[0]
b [24]

> gml_Script_InputBindingsImport (locals=4, argc=3)
:[1]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument2

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
push.v arg.argument2
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.s "\")"@194
conv.s.v
push.v arg.argument2
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[7]
push.v arg.argument2
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
push.v arg.argument2
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[9]
push.v arg.argument2
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument2
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[11]
push.v arg.argument1
call.i is_struct(argc=1)
conv.v.b
not.b
bf [13]

:[12]
push.s "`data` parameter must be a struct created by `InputBindingsExport()`."@6341
conv.s.v
call.i gml_Script___InputError(argc=1)
popz.v

:[13]
push.v arg.argument0
conv.v.b
bf [15]

:[14]
pushi.e -16
push.v arg.argument2
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v [stacktop]self.__gamepadBindingArray
b [16]

:[15]
pushi.e -16
push.v arg.argument2
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v [stacktop]self.__kbmBindingArray

:[16]
pop.v.v local._bindingArray
pushi.e 0
pop.v.i local._i
push.v static._verbCount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [23]

:[17]
pushloc.v local._i
call.i gml_Script_InputVerbGetExportName(argc=1)
pop.v.v local._exportName
pushloc.v local._exportName
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [22]

:[18]
pushloc.v local._exportName
push.v arg.argument1
call.i variable_struct_get(argc=2)
pop.v.v local._alternates
pushloc.v local._alternates
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [20]

:[19]
call.i @@NewGMLArray@@(argc=0)
b [21]

:[20]
pushloc.v local._alternates
call.i variable_clone(argc=1)

:[21]
pop.v.v local._alternates
pushloc.v local._alternates
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._bindingArray

:[22]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [17]

:[23]
popz.i
exit.i

:[24]
push.i [function]gml_Script_InputBindingsImport
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputBindingsImport
popz.v

:[end]