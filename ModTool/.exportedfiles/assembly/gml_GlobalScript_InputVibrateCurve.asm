:[0]
b [16]

> gml_Script_InputVibrateCurve (locals=0, argc=6)
:[1]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument4

:[3]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.b builtin.argument5

:[5]
isstaticok.e
bt [7]

:[6]
setstatic.e
call.i gml_Script___InputVibrateSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__playerArray
pop.v.v static._playerArray

:[7]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i clamp(argc=3)
pop.v.v arg.argument0
push.v arg.argument1
call.i animcurve_exists(argc=1)
conv.v.b
not.b
bf [9]

:[8]
push.s ")"@372
conv.s.v
push.v arg.argument1
push.s "Animation curve doesn't exist ("@6784
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[9]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v arg.argument2
call.i clamp(argc=3)
pop.v.v arg.argument2
pushi.e 0
conv.i.v
push.v arg.argument3
call.i max(argc=2)
pop.v.v arg.argument3
pushi.e -16
push.v arg.argument4
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [15]

:[10]
push.v builtin.__paused
conv.v.b
not.b
bt [12]

:[11]
push.v arg.argument5
conv.v.b
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
push.v arg.argument5
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
call.i animcurve_get(argc=1)
push.v arg.argument0
push.i [function]gml_Script___InputVibrateClassCurve
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.__eventArray
call.i array_push(argc=2)
popz.v

:[15]
popenv [10]
exit.i

:[16]
push.i [function]gml_Script_InputVibrateCurve
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVibrateCurve
popz.v

:[end]