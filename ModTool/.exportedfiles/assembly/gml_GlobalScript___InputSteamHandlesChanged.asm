:[0]
b [23]

> gml_Script___InputSteamHandlesChanged (locals=5, argc=0)
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
pushenv [21]

:[4]
push.v builtin.__steamHandlesArray
pop.v.v local._oldSteamHandles
call.i steam_input_get_connected_controllers(argc=0)
pop.v.v local._newSteamHandles
pushloc.v local._newSteamHandles
call.i is_array(argc=1)
conv.v.b
not.b
bf [6]

:[5]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[6]
pushloc.v local._newSteamHandles
pop.v.v builtin.__steamHandlesArray
pushloc.v local._newSteamHandles
call.i array_length(argc=1)
pushloc.v local._oldSteamHandles
call.i array_length(argc=1)
cmp.v.v NEQ
bf [8]

:[7]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[8]
pushi.e 0
pop.v.i local._i
pushloc.v local._newSteamHandles
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [12]

:[9]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._newSteamHandles
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._oldSteamHandles
cmp.v.v NEQ
bf [11]

:[10]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[11]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [9]

:[12]
popz.i
pushi.e 0
pop.v.i local._i
push.v builtin.__gamepadArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [20]

:[13]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.__gamepadArray
pop.v.v local._gamepad
pushloc.v local._gamepad
call.i is_struct(argc=1)
conv.v.b
bf [16]

:[14]
pushloc.v local._gamepad
pushi.e -9
push.v [stacktop]self.__steamHandle
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [16]

:[15]
pushloc.v local._gamepad
pushi.e -9
push.v [stacktop]self.__steamHandleIndex
pushloc.v local._gamepad
pushi.e -9
push.v [stacktop]self.__steamHandle
call.i steam_input_get_gamepad_index_for_controller(argc=1)
cmp.v.v NEQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[19]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [13]

:[20]
popz.i

:[21]
popenv [4]
pushi.e 0
conv.b.v
ret.v

:[22]
exit.i

:[23]
push.i [function]gml_Script___InputSteamHandlesChanged
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputSteamHandlesChanged
popz.v

:[end]