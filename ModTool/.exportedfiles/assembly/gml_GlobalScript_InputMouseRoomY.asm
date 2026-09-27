:[0]
b [8]

> gml_Script_InputMouseRoomY (locals=0, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system

:[3]
push.v static._system
pushi.e -9
push.v [stacktop]self.__pointerBlocked
conv.v.b
bf [5]

:[4]
push.v static._system
pushi.e -9
push.v [stacktop]self.__pointerRoomY
b [6]

:[5]
pushi.e 0
conv.i.v
call.i device_mouse_y(argc=1)

:[6]
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_InputMouseRoomY
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputMouseRoomY
popz.v

:[end]