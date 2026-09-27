:[0]
b [6]

> gml_Script_InputPlugInGamepadBlock (locals=0, argc=1)
:[1]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
push.s " (can only block gamepads)"@6648
conv.s.v
push.v arg.argument0
push.s "Cannot block device "@6649
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[3]
push.v arg.argument0
call.i gml_Script_InputDeviceIsConnected(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 0
conv.b.v
push.v arg.argument0
push.l 2
conv.l.v
call.i gml_Script___InputPlugInExecuteCallbacks(argc=3)
popz.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_InputPlugInGamepadBlock
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlugInGamepadBlock
popz.v

:[end]