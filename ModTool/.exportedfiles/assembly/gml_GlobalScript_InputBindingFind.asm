:[0]
b [13]

> gml_Script_InputBindingFind (locals=0, argc=3)
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
call.i @@NewGMLArray@@(argc=0)
pop.v.v static._array

:[5]
pushi.e 0
conv.i.v
push.v static._array
call.i array_resize(argc=2)
popz.v
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
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.v static._array
call.i gml_Script___InputBindingFindInternal(argc=4)
popz.v
push.v static._array
ret.v

:[12]
exit.i

:[13]
push.i [function]gml_Script_InputBindingFind
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputBindingFind
popz.v
b [30]

> gml_Script___InputBindingFindInternal (locals=4, argc=4)
:[14]
isstaticok.e
bt [16]

:[15]
setstatic.e
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbCount
pop.v.v static._verbCount

:[16]
pushi.e -16
push.v arg.argument3
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [29]

:[17]
push.v arg.argument1
conv.v.b
bf [19]

:[18]
push.v builtin.__gamepadBindingArray
b [20]

:[19]
push.v builtin.__kbmBindingArray

:[20]
pop.v.v local._bindingArray
pushi.e 0
pop.v.i local._verbIndex
push.v static._verbCount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [28]

:[21]
pushi.e -7
pushloc.v local._verbIndex
conv.v.i
push.v [array]self._bindingArray
pop.v.v local._alternateArray
pushi.e 0
pop.v.i local._alternate
pushloc.v local._alternateArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [27]

:[22]
pushi.e -7
pushloc.v local._alternate
conv.v.i
push.v [array]self._alternateArray
push.v arg.argument2
cmp.v.v EQ
bf [26]

:[23]
pushloc.v local._alternate
pushloc.v local._verbIndex
b [25]

> gml_Script____struct___208@__InputBindingFindInternal@InputBindingFind (locals=0, argc=0)
:[24]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.verbIndex
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.alternate
exit.i

:[25]
push.i [function]gml_Script____struct___208@__InputBindingFindInternal@InputBindingFind
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___208
call.i @@NewGMLObject@@(argc=3)
push.v arg.argument0
call.i array_push(argc=2)
popz.v

:[26]
push.v local._alternate
push.e 1
add.i.v
pop.v.v local._alternate
pushi.e 1
sub.i.i
dup.i 0
bt [22]

:[27]
popz.i
push.v local._verbIndex
push.e 1
add.i.v
pop.v.v local._verbIndex
pushi.e 1
sub.i.i
dup.i 0
bt [21]

:[28]
popz.i

:[29]
popenv [17]
exit.i

:[30]
push.i [function]gml_Script___InputBindingFindInternal
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputBindingFindInternal
popz.v

:[end]