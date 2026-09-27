:[0]
b [12]

> gml_Script_InputVerbGroupActivateAll (locals=0, argc=1)
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
call.i gml_Script___InputVerbGroupSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbGroupInactiveArray
pop.v.v static._verbGroupInactiveArray

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
pushi.e 0
conv.i.v
pushi.e -16
push.v arg.argument0
conv.v.i
pop.v.v [array]self._verbGroupInactiveArray
exit.i

:[12]
push.i [function]gml_Script_InputVerbGroupActivateAll
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVerbGroupActivateAll
popz.v

:[end]