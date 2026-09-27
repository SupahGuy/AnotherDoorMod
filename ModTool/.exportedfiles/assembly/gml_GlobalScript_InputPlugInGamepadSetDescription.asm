:[0]
b [11]

> gml_Script_InputPlugInGamepadSetDescription (locals=1, argc=2)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__gamepadArray
pop.v.v static._gamepadArray

:[3]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bt [5]

:[4]
push.v arg.argument0
push.v static._gamepadArray
call.i array_length(argc=1)
cmp.v.v GTE
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
exit.i

:[8]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._gamepadArray
pop.v.v local._deviceStruct
pushloc.v local._deviceStruct
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [10]

:[9]
exit.i

:[10]
push.v arg.argument1
pushloc.v local._deviceStruct
pushi.e -9
pop.v.v [stacktop]self.__description
exit.i

:[11]
push.i [function]gml_Script_InputPlugInGamepadSetDescription
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlugInGamepadSetDescription
popz.v

:[end]