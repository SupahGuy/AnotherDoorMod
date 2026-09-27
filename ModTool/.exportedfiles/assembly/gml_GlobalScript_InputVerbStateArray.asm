:[0]
b [26]

> gml_Script_InputVerbStateArray (locals=5, argc=2)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.b builtin.argument0

:[3]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i builtin.argument1

:[5]
isstaticok.e
bt [12]

:[6]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray
b [11]

> gml_Script__funcGenerate@anon@825@InputVerbStateArray@InputVerbStateArray (locals=0, argc=0)
:[7]
pushbltn.v builtin.infinity
b [9]

> gml_Script____struct___215@_funcGenerate@anon@825@InputVerbStateArray@InputVerbStateArray (locals=0, argc=0)
:[8]
call.i @@SetStatic@@(argc=0)
pushi.e 0
pop.v.b self.prevHeld
pushi.e 0
pop.v.b self.held
pushi.e 0
pop.v.i self.valueRaw
pushi.e 0
pop.v.i self.valueClamp
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.duration
exit.i

:[9]
push.i [function]gml_Script____struct___215@_funcGenerate@anon@825@InputVerbStateArray@InputVerbStateArray
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___215
call.i @@NewGMLObject@@(argc=2)
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script__funcGenerate@anon@825@InputVerbStateArray@InputVerbStateArray
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static._funcGenerate
push.v static._funcGenerate
call.i gml_Script_InputVerbCount(argc=0)
call.i array_create_ext(argc=2)
pop.v.v static._staticArray

:[12]
push.v arg.argument1
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [14]

:[13]
push.s "\")"@194
conv.s.v
push.v arg.argument1
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[14]
push.v arg.argument1
pushi.e 4
cmp.i.v GTE
bf [16]

:[15]
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

:[16]
push.v arg.argument1
pushi.e 0
cmp.i.v LT
bf [18]

:[17]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument1
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[18]
push.v arg.argument0
conv.v.b
bf [20]

:[19]
push.v static._funcGenerate
call.i gml_Script_InputVerbCount(argc=0)
call.i array_create_ext(argc=2)
pop.v.v local._targetArray
b [21]

:[20]
push.v static._staticArray
pop.v.v local._targetArray

:[21]
push.v static._system
pushi.e -9
push.v [stacktop]self.__frame
pop.v.v local._frame
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v [stacktop]self.__verbStateArray
pop.v.v local._verbStateArray
pushi.e 0
pop.v.i local._i
pushloc.v local._targetArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [25]

:[22]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._targetArray
pop.v.v local._targetStruct
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._verbStateArray
pushi.e -9
pushenv [24]

:[23]
push.v builtin.__prevHeld
pushloc.v local._targetStruct
pushi.e -9
pop.v.v [stacktop]self.prevHeld
push.v builtin.__held
pushloc.v local._targetStruct
pushi.e -9
pop.v.v [stacktop]self.held
push.v builtin.__valueRaw
pushloc.v local._targetStruct
pushi.e -9
pop.v.v [stacktop]self.valueRaw
push.v builtin.__valueClamp
pushloc.v local._targetStruct
pushi.e -9
pop.v.v [stacktop]self.valueClamp
pushloc.v local._frame
push.v builtin.__pressFrame
sub.v.v
pushloc.v local._targetStruct
pushi.e -9
pop.v.v [stacktop]self.duration

:[24]
popenv [23]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [22]

:[25]
popz.i
exit.i

:[26]
push.i [function]gml_Script_InputVerbStateArray
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVerbStateArray
popz.v

:[end]