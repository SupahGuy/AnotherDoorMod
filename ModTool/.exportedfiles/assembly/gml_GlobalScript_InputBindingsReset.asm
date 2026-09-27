:[0]
b [31]

> gml_Script_InputBindingsReset (locals=0, argc=2)
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
push.v arg.argument0
conv.v.b
bf [21]

:[12]
b [20]

> gml_Script_anon@438@InputBindingsReset@InputBindingsReset (locals=1, argc=2)
:[13]
isstaticok.e
bt [15]

:[14]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbDefinitionArray
pop.v.v static._verbDefinitionArray

:[15]
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._verbDefinitionArray
pop.v.v local._verbDefinition
pushloc.v local._verbDefinition
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [17]

:[16]
pushloc.v local._verbDefinition
pushi.e -9
push.v [stacktop]self.__gamepadBinding
call.i variable_clone(argc=1)
b [18]

:[17]
call.i @@NewGMLArray@@(argc=0)

:[18]
ret.v

:[19]
exit.i

:[20]
push.i [function]gml_Script_anon@438@InputBindingsReset@InputBindingsReset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v [stacktop]self.__gamepadBindingArray
call.i array_map_ext(argc=2)
popz.v
b [30]

:[21]
b [29]

> gml_Script_anon@836@InputBindingsReset@InputBindingsReset (locals=1, argc=2)
:[22]
isstaticok.e
bt [24]

:[23]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbDefinitionArray
pop.v.v static._verbDefinitionArray

:[24]
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._verbDefinitionArray
pop.v.v local._verbDefinition
pushloc.v local._verbDefinition
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [26]

:[25]
pushloc.v local._verbDefinition
pushi.e -9
push.v [stacktop]self.__kbmBinding
call.i variable_clone(argc=1)
b [27]

:[26]
call.i @@NewGMLArray@@(argc=0)

:[27]
ret.v

:[28]
exit.i

:[29]
push.i [function]gml_Script_anon@836@InputBindingsReset@InputBindingsReset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v [stacktop]self.__kbmBindingArray
call.i array_map_ext(argc=2)
popz.v

:[30]
exit.i

:[31]
push.i [function]gml_Script_InputBindingsReset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputBindingsReset
popz.v

:[end]