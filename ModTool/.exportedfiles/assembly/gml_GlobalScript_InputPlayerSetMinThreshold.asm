:[0]
b [16]

> gml_Script_InputPlayerSetMinThreshold (locals=0, argc=3)
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
pushi.e -16
push.v arg.argument2
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [15]

:[12]
push.v arg.argument0
push.l 2
cmp.l.v EQ
bf [14]

:[13]
push.v arg.argument1
pushi.e -6
push.l 0
conv.l.i
pop.v.v [array]self.__thresholdMinArray
push.v arg.argument1
pushi.e -6
push.l 1
conv.l.i
pop.v.v [array]self.__thresholdMinArray
push.v arg.argument1
pushi.e -6
push.l 2
conv.l.i
pop.v.v [array]self.__thresholdMinArray
b [15]

:[14]
push.v arg.argument1
pushi.e -6
push.v arg.argument0
conv.v.i
pop.v.v [array]self.__thresholdMinArray
push.d 0.5
pushi.e -6
push.l 0
conv.l.i
push.v [array]self.__thresholdMinArray
pushi.e -6
push.l 1
conv.l.i
push.v [array]self.__thresholdMinArray
add.v.v
mul.v.d
pushi.e -6
push.l 2
conv.l.i
pop.v.v [array]self.__thresholdMinArray

:[15]
popenv [12]
exit.i

:[16]
push.i [function]gml_Script_InputPlayerSetMinThreshold
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlayerSetMinThreshold
popz.v

:[end]