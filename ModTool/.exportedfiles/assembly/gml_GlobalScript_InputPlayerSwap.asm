:[0]
b [4]

> gml_Script_InputPlayerSwap (locals=2, argc=2)
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
pop.v.v local._originalA
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._playerArray
pop.v.v local._originalB
push.v arg.argument1
pushloc.v local._originalA
pushi.e -9
pop.v.v [stacktop]self.__playerIndex
push.v arg.argument0
pushloc.v local._originalB
pushi.e -9
pop.v.v [stacktop]self.__playerIndex
pushloc.v local._originalB
pushi.e -16
push.v arg.argument0
conv.v.i
pop.v.v [array]self._playerArray
pushloc.v local._originalA
pushi.e -16
push.v arg.argument1
conv.v.i
pop.v.v [array]self._playerArray
exit.i

:[4]
push.i [function]gml_Script_InputPlayerSwap
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlayerSwap
popz.v

:[end]