:[0]
b [6]

> gml_Script___InputRegisterGamepadConnected (locals=0, argc=0)
:[1]
b [5]

> gml_Script_anon@160@__InputRegisterGamepadConnected@__InputRegisterGamepadConnected (locals=1, argc=1)
:[2]
isstaticok.e
bt [4]

:[3]
setstatic.e
push.v builtin.__gamepadArray
pop.v.v static._gamepadArray

:[4]
push.s " connected"@1779
conv.s.v
push.v arg.argument0
push.s "Gamepad "@1780
conv.s.v
call.i gml_Script___InputTrace(argc=3)
popz.v
push.v arg.argument0
push.i [function]gml_Script___InputClassGamepad
conv.i.v
call.i @@NewGMLObject@@(argc=2)
pop.v.v local._gamepad
pushloc.v local._gamepad
pushi.e -16
push.v arg.argument0
conv.v.i
pop.v.v [array]self._gamepadArray
pushloc.v local._gamepad
call.i gml_Script___InputGamepadDiscover(argc=1)
popz.v
exit.i

:[5]
push.i [function]gml_Script_anon@160@__InputRegisterGamepadConnected@__InputRegisterGamepadConnected
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___InputPlugInRegisterCallbackInternal(argc=3)
popz.v
exit.i

:[6]
push.i [function]gml_Script___InputRegisterGamepadConnected
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputRegisterGamepadConnected
popz.v

:[end]