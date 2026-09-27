:[0]
b [5]

> gml_Script_InputPlayerGetStatus (locals=0, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray

:[3]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v [stacktop]self.__status
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_InputPlayerGetStatus
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlayerGetStatus
popz.v

:[end]