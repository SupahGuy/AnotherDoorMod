:[0]
b [10]

> gml_Script___InputRegisterGamepadDisconnected (locals=0, argc=0)
:[1]
b [9]

> gml_Script_anon@166@__InputRegisterGamepadDisconnected@__InputRegisterGamepadDisconnected (locals=0, argc=2)
:[2]
isstaticok.e
bt [4]

:[3]
setstatic.e
push.v builtin.__gamepadArray
pop.v.v static._gamepadArray

:[4]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._gamepadArray
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [8]

:[5]
push.v arg.argument1
conv.v.b
bf [7]

:[6]
push.s " disconnected"@1784
conv.s.v
push.v arg.argument0
push.s "Gamepad "@1780
conv.s.v
call.i gml_Script___InputTrace(argc=3)
popz.v
pushbltn.v builtin.undefined
pushi.e -16
push.v arg.argument0
conv.v.i
pop.v.v [array]self._gamepadArray
b [8]

:[7]
push.s " blocked"@1785
conv.s.v
push.v arg.argument0
push.s "Gamepad "@1780
conv.s.v
call.i gml_Script___InputTrace(argc=3)
popz.v
pushi.e 1
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._gamepadArray
pushi.e -9
pop.v.b [stacktop]self.__blocked

:[8]
exit.i

:[9]
push.i [function]gml_Script_anon@166@__InputRegisterGamepadDisconnected@__InputRegisterGamepadDisconnected
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___InputPlugInRegisterCallbackInternal(argc=3)
popz.v
exit.i

:[10]
push.i [function]gml_Script___InputRegisterGamepadDisconnected
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputRegisterGamepadDisconnected
popz.v

:[end]