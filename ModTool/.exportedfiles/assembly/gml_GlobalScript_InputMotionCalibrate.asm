:[0]
b [14]

> gml_Script_InputMotionCalibrate (locals=1, argc=1)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument0

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputMotionSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__deviceMap
pop.v.v static._deviceMap

:[5]
push.v arg.argument0
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.s "\")"@194
conv.s.v
push.v arg.argument0
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[7]
push.v arg.argument0
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
push.v arg.argument0
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[9]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument0
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[11]
push.v arg.argument0
call.i gml_Script_InputPlayerGetDevice(argc=1)
push.v static._deviceMap
call.i ds_map_find_value(argc=2)
pop.v.v local._deviceStruct
pushloc.v local._deviceStruct
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[12]
exit.i

:[13]
pushloc.v local._deviceStruct
dup.v 0 8
dup.v 0
push.v stacktop.__Calibrate
callv.v 0
popz.v
exit.i

:[14]
push.i [function]gml_Script_InputMotionCalibrate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputMotionCalibrate
popz.v

:[end]