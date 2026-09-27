:[0]
call.i gml_Script___InputVibrateSystem(argc=0)
popz.v
b [33]

> gml_Script___InputVibrateSystem (locals=0, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
pushbltn.v builtin.undefined
pop.v.v static._system

:[3]
push.v static._system
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [5]

:[4]
push.v static._system
ret.v

:[5]
call.i @@NewGMLObject@@(argc=0)
pop.v.v static._system
push.v static._system
pushi.e -9
pushenv [31]

:[6]
call.i ds_map_create(argc=0)
pop.v.v builtin.__deviceMap
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__deviceArray
b [9]

> gml_Script_anon@359@__InputVibrateSystem@__InputVibrateSystem (locals=0, argc=1)
:[7]
push.v arg.argument0
push.i [function]gml_Script___InputVibrateClassPlayer
conv.i.v
call.i @@NewGMLObject@@(argc=2)
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_anon@359@__InputVibrateSystem@__InputVibrateSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 4
conv.i.v
call.i array_create_ext(argc=2)
pop.v.v builtin.__playerArray
b [30]

> gml_Script_anon@555@__InputVibrateSystem@__InputVibrateSystem (locals=0, argc=0)
:[10]
b [12]

> gml_Script_anon@671@anon@555@__InputVibrateSystem@__InputVibrateSystem (locals=1, argc=1)
:[11]
push.v arg.argument0
push.i [function]gml_Script___InputVibrateClassGamepad
conv.i.v
call.i @@NewGMLObject@@(argc=2)
pop.v.v local._struct
pushloc.v local._struct
push.v arg.argument0
push.v builtin.__deviceMap
call.i ds_map_set(argc=3)
popz.v
pushloc.v local._struct
push.v builtin.__deviceArray
call.i array_push(argc=2)
popz.v
exit.i

:[12]
push.i [function]gml_Script_anon@671@anon@555@__InputVibrateSystem@__InputVibrateSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 3
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
b [19]

> gml_Script_anon@1008@anon@555@__InputVibrateSystem@__InputVibrateSystem (locals=1, argc=2)
:[13]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i gml_Script_InputVibrateDirect(argc=3)
popz.v
push.v arg.argument0
push.v builtin.__deviceMap
call.i ds_map_delete(argc=2)
popz.v
pushi.e 0
pop.v.i local._i
push.v builtin.__deviceArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [18]

:[14]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.__deviceArray
pushi.e -9
push.v [stacktop]self.__device
push.v arg.argument0
cmp.v.v EQ
bf [16]

:[15]
pushi.e 1
conv.i.v
pushloc.v local._i
push.v builtin.__deviceArray
call.i array_delete(argc=3)
popz.v
b [17]

:[16]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i

:[17]
pushi.e 1
sub.i.i
dup.i 0
bt [14]

:[18]
popz.i
exit.i

:[19]
push.i [function]gml_Script_anon@1008@anon@555@__InputVibrateSystem@__InputVibrateSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 2
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
b [25]

> gml_Script_anon@1714@anon@555@__InputVibrateSystem@__InputVibrateSystem (locals=0, argc=0)
:[20]
b [22]

> gml_Script_anon@1786@anon@1714@anon@555@__InputVibrateSystem@__InputVibrateSystem (locals=0, argc=2)
:[21]
push.v arg.argument0
dup.v 0 8
dup.v 0
push.v stacktop.__Update
callv.v 0
popz.v
exit.i

:[22]
push.i [function]gml_Script_anon@1786@anon@1714@anon@555@__InputVibrateSystem@__InputVibrateSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v builtin.__playerArray
call.i array_foreach(argc=2)
popz.v
b [24]

> gml_Script_anon@1959@anon@1714@anon@555@__InputVibrateSystem@__InputVibrateSystem (locals=0, argc=2)
:[23]
push.v arg.argument0
dup.v 0 8
dup.v 0
push.v stacktop.__Update
callv.v 0
popz.v
exit.i

:[24]
push.i [function]gml_Script_anon@1959@anon@1714@anon@555@__InputVibrateSystem@__InputVibrateSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v builtin.__deviceArray
call.i array_foreach(argc=2)
popz.v
exit.i

:[25]
push.i [function]gml_Script_anon@1714@anon@555@__InputVibrateSystem@__InputVibrateSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 1
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
b [29]

> gml_Script_anon@2188@anon@555@__InputVibrateSystem@__InputVibrateSystem (locals=1, argc=0)
:[26]
pushi.e 0
pop.v.i local._i
pushi.e 4
conv.i.v
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [28]

:[27]
pushloc.v local._i
call.i gml_Script_InputVibrateStop(argc=1)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [27]

:[28]
popz.i
exit.i

:[29]
push.i [function]gml_Script_anon@2188@anon@555@__InputVibrateSystem@__InputVibrateSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 9
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
exit.i

:[30]
push.i [function]gml_Script_anon@555@__InputVibrateSystem@__InputVibrateSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.s "10.0"@466
conv.s.v
push.s "1.0"@467
conv.s.v
push.s "Input Team"@468
conv.s.v
push.s "InputTeam.GamepadVibration"@2046
conv.s.v
call.i gml_Script_InputPlugInDefine(argc=5)
popz.v

:[31]
popenv [6]
push.v static._system
ret.v

:[32]
exit.i

:[33]
push.i [function]gml_Script___InputVibrateSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputVibrateSystem
popz.v

:[end]