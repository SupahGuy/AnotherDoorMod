:[0]
b [11]

> gml_Script_InputMotionGet (locals=0, argc=1)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument0

:[3]
push.v arg.argument0
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [5]

:[4]
push.s "\")"@194
conv.s.v
push.v arg.argument0
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[5]
push.v arg.argument0
pushi.e 4
cmp.i.v GTE
bf [7]

:[6]
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

:[7]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [9]

:[8]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument0
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[9]
push.v arg.argument0
call.i gml_Script_InputPlayerGetDevice(argc=1)
call.i gml_Script_InputMotionGetDirect(argc=1)
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_InputMotionGet
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputMotionGet
popz.v

:[end]