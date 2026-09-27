:[0]
b [3]

> gml_Script_InputDeviceIsGamepad (locals=0, argc=1)
:[1]
push.v arg.argument0
pushi.e 0
cmp.i.v GTE
conv.b.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_InputDeviceIsGamepad
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceIsGamepad
popz.v

:[end]