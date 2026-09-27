:[0]
b [16]

> gml_Script___InputRegisterUpdatePlayer (locals=0, argc=0)
:[1]
b [15]

> gml_Script_anon@152@__InputRegisterUpdatePlayer@__InputRegisterUpdatePlayer (locals=6, argc=1)
:[2]
isstaticok.e
bt [4]

:[3]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray
push.v static._system
pushi.e -9
push.v [stacktop]self.__verbCount
pop.v.v static._verbCount

:[4]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [14]

:[5]
push.v static._system
pushi.e -9
push.v [stacktop]self.__frame
pop.v.v local._systemFrame
push.v builtin.__verbStateArray
pop.v.v local._verbStateArray
push.v builtin.__valueRawArray
pop.v.v local._valueRawArray
push.v builtin.__valueClampArray
pop.v.v local._valueClampArray
pushi.e 0
pop.v.b local._anyVerbHeld
pushi.e 0
pop.v.i local._i
push.v static._verbCount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [13]

:[6]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._verbStateArray
pushi.e -9
pushenv [12]

:[7]
push.v builtin.__held
pop.v.v builtin.__prevHeld
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._valueRawArray
pop.v.v builtin.__valueRaw
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._valueClampArray
pop.v.v builtin.__valueClamp
push.v builtin.__valueClamp
pushi.e 0
cmp.i.v GT
bf [11]

:[8]
pushi.e 1
pop.v.b local._anyVerbHeld
pushi.e 1
pop.v.b builtin.__held
push.v builtin.__prevHeld
conv.v.b
not.b
bf [10]

:[9]
pushloc.v local._systemFrame
pop.v.v builtin.__pressFrame

:[10]
b [12]

:[11]
pushi.e 0
pop.v.b builtin.__held

:[12]
popenv [7]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [6]

:[13]
popz.i
pushloc.v local._anyVerbHeld
pop.v.v builtin.__anyInput

:[14]
popenv [5]
exit.i

:[15]
push.i [function]gml_Script_anon@152@__InputRegisterUpdatePlayer@__InputRegisterUpdatePlayer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 0
conv.i.v
push.l 6
conv.l.v
call.i gml_Script___InputPlugInRegisterCallbackInternal(argc=3)
popz.v
exit.i

:[16]
push.i [function]gml_Script___InputRegisterUpdatePlayer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputRegisterUpdatePlayer
popz.v

:[end]