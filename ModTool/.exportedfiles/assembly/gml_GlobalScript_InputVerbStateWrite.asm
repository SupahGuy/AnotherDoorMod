:[0]
b [16]

> gml_Script_InputVerbStateWrite (locals=4, argc=2)
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
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
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
push.v static._system
pushi.e -9
push.v [stacktop]self.__frame
pop.v.v local._frame
call.i gml_Script_InputVerbCount(argc=0)
pop.v.v local._verbCount
push.s "<PWP"@6680
conv.s.v
pushi.e 11
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v
pushloc.v local._verbCount
pushi.e 3
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v [stacktop]self.__verbStateArray
pop.v.v local._verbStateArray
pushi.e 0
pop.v.i local._i
pushloc.v local._verbCount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [15]

:[12]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._verbStateArray
pushi.e -9
pushenv [14]

:[13]
push.v builtin.__prevHeld
pushi.e 10
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v
push.v builtin.__valueRaw
pushi.e 8
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v
push.v builtin.__valueClamp
pushi.e 8
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v
pushloc.v local._frame
push.v builtin.__pressFrame
sub.v.v
pushi.e 6
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v

:[14]
popenv [13]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [12]

:[15]
popz.i
push.s ">"@3938
conv.s.v
pushi.e 11
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v
exit.i

:[16]
push.i [function]gml_Script_InputVerbStateWrite
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVerbStateWrite
popz.v

:[end]