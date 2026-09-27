:[0]
b [31]

> gml_Script_InputBindingSet (locals=4, argc=5)
:[1]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument3

:[3]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i builtin.argument4

:[5]
isstaticok.e
bt [7]

:[6]
setstatic.e
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray

:[7]
push.v arg.argument4
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [9]

:[8]
push.s "\")"@194
conv.s.v
push.v arg.argument4
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[9]
push.v arg.argument4
pushi.e 4
cmp.i.v GTE
bf [11]

:[10]
push.s ")"@372
conv.s.v
pushi.e 4
conv.i.v
push.s " too large. Must be less than config `INPUT_MAX_PLAYERS` ("@6309
conv.s.v
push.v arg.argument4
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[11]
push.v arg.argument4
pushi.e 0
cmp.i.v LT
bf [13]

:[12]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument4
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[13]
pushi.e -16
push.v arg.argument4
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [30]

:[14]
push.v arg.argument0
conv.v.b
bf [16]

:[15]
push.v builtin.__gamepadBindingArray
b [17]

:[16]
push.v builtin.__kbmBindingArray

:[17]
pop.v.v local._bindingArray
pushi.e -7
push.v arg.argument1
conv.v.i
push.v [array]self._bindingArray
pop.v.v local._alternateArray
push.v arg.argument3
pushloc.v local._alternateArray
call.i array_length(argc=1)
cmp.v.v GT
bf [21]

:[18]
pushloc.v local._alternateArray
call.i array_length(argc=1)
pop.v.v local._i
push.v arg.argument3
pushi.e 1
sub.i.v
pushloc.v local._alternateArray
call.i array_length(argc=1)
sub.v.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [20]

:[19]
pushbltn.v builtin.undefined
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._alternateArray
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [19]

:[20]
popz.i

:[21]
pushi.e -7
push.v arg.argument3
conv.v.i
push.v [array]self._alternateArray
pop.v.v local._prevBinding
push.v arg.argument2
pushi.e -7
push.v arg.argument3
conv.v.i
pop.v.v [array]self._alternateArray
push.v arg.argument0
conv.v.b
bf [27]

:[22]
pushloc.v local._prevBinding
push.v arg.argument2
cmp.v.v NEQ
bf [27]

:[23]
pushloc.v local._prevBinding
call.i gml_Script___InputBindingIsThumbstick(argc=1)
conv.v.b
bt [25]

:[24]
push.v arg.argument2
call.i gml_Script___InputBindingIsThumbstick(argc=1)
conv.v.b
b [26]

:[25]
push.e 1

:[26]
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
call.i @@This@@(argc=0)
push.v builtin.__UpdateClusterThresholds
callv.v 0
popz.v

:[30]
popenv [14]
exit.i

:[31]
push.i [function]gml_Script_InputBindingSet
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputBindingSet
popz.v

:[end]