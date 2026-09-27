:[0]
b [10]

> gml_Script_InputVibrateSetPause (locals=1, argc=2)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument1

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputVibrateSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__playerArray
pop.v.v static._playerArray

:[5]
push.v arg.argument1
pushi.e -3
cmp.i.v EQ
bf [9]

:[6]
pushi.e 0
pop.v.i local._i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [8]

:[7]
pushloc.v local._i
push.v arg.argument0
call.i gml_Script_InputVibrateSetPause(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [7]

:[8]
popz.i
exit.i

:[9]
push.v arg.argument0
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pop.v.v [stacktop]self.__paused
exit.i

:[10]
push.i [function]gml_Script_InputVibrateSetPause
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVibrateSetPause
popz.v

:[end]